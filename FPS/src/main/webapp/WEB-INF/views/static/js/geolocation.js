if(!navigator.geolocation)
    alert("지원하지 않음");
else // found() 콜백 함수 등록
    navigator.geolocation.getCurrentPosition(found);
 
// 위치 파악 시 found() 호출.
// 위치 정보 들어 있는 position 객체가 매개 변수로 넘어온다.

function found(position) {
    var now = new Date(position.timestamp);
    var lat = position.coords.latitude; // 위도
    var lon = position.coords.longitude; // 경도
    var acc = position.coords.accuracy; // 정확도
 
    // 위도와 경도의 소수점 이하 자리가 너무 길어 유효 숫자 6자리로 짜름
    lat = lat.toPrecision(6); lon = lon.toPrecision(6);
 
    var text = "현재 시간 " + now.toUTCString() + "<br>";
    text += "현재 위치 (위도 " + lat + "°, 경도 " + lon + "°)<br>";
    text += "정확도 " + acc + "m<br>";

	lat_box = parseFloat(lat);
	lon_box = parseFloat(lon);
 
    document.getElementById("msg").innerHTML = text;

    var latlng = new google.maps.LatLng(lat,lon);     // 성남 모란역
    var mapOptions = {
        center: latlng,
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
	var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
	var marker = new google.maps.Marker({position:latlng, map:map});
        
	var geocoder = new google.maps.Geocoder();

	geocoder.geocode( {'latLng':latlng}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.latlng);
			$('.home-addr').empty();

			var str_addr = results[0].formatted_address;

			if (str_addr.indexOf("도 ") != 0) { var start_addr = str_addr.indexOf("도 ") + 2; }

			if (str_addr.indexOf("동 ") != 0) { var index_addr = str_addr.indexOf("동 ") + 1; }
			else if (str_addr.indexOf("읍 ") != 0) { var index_addr = str_addr.indexOf("읍 ") + 1; }
			else if (str_addr.indexOf("면 ") != 0) { var index_addr = str_addr.indexOf("면 ") + 1; }

			var result_addr = str_addr.substr(start_addr, index_addr - start_addr);

			$('.home-addr').append('주소 : '+ result_addr);
		}
		else { alert("Geocode was not successful for the following reason: " + status); }
	});
}