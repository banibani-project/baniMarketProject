function initialize() {
	var latlng = new google.maps.LatLng(37.432124,127.129064);     // 성남 모란역
	var mapOptions = {
		center: latlng,
		zoom: 8,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
	var marker = new google.maps.Marker({position:latlng, map:map});
        
	var geocoder = new google.maps.Geocoder();
        
	google.maps.event.addListener(map, 'click', function(event){
		var location = event.latLng; //이벤트객체로부터 지리좌표 추출

		//역 지오코딩 요청/응답
		geocoder.geocode( {'latLng':location}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				map.setCenter(results[0].geometry.location);
				$('#div1').empty();
				$('#div1').append('주소='+ results[0].formatted_address);
				$('#div1').append('<br>');
				$('#div1').append('좌표='+ results[0].geometry.location);

				if(!marker) { //클릭시마다 마커를 새로 생성하면 마커의 수가 증가하므로 생성되지 않게 함
					marker = new google.maps.Marker({
						map: map, position: results[0].geometry.location
					});
				}
				else{ // 마커가 이미 있는 경우에는 아래처럼 마커를 제거하고 다른 위치에 새로 생성한다
					marker.setMap(null);
					marker = new google.maps.Marker({
						map: map, position: results[0].geometry.location
					});
				}
			}
			else { alert("Geocode was not successful for the following reason: " + status); }
		});
	});
}