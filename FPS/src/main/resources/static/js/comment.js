
const inputBar = document.querySelector("#comment-input");
const rootDiv = document.querySelector("#comments");
const btn = document.querySelector("#submit");
const mainCommentCount = document.querySelector('#count');
const cmt_hide = document.querySelector('#cmt_hide');

//타임스템프 만들기
function generateTime(){ 
    const date = new Date();
    const year = date.getFullYear();
    const month = date.getMonth() + 1;
    const day = date.getDate();
    const hour = date.getHours();
    const min = date.getMinutes();
    // const time = year+'-'+month+'-'+day+' '+hour+':'+min+':'+sec;
    const time = `${year}년 ${month}월 ${day}일 ${hour}:${min}`;
    return time; 
}

    function numberCount(event){
        console.log(event.target);
        if(event.target === voteUp){
            console.log("2");
            return voteUp.innerHTML++;
        }else if(event.target === voteDown){
            return voteDown.innerHTML++;
        } 
    }

    function generateUserName(){
        var username = `[LoginUser]구매자이름`;
        return username;
        
    }

    function deleteComments(event){
        const btn = event.target;
        const list = btn.parentNode.parentNode;

        //commentList
        rootDiv.removeChild(list);
        //메인댓글 카운트 줄이기.
        if(mainCommentCount.innerHTML <='0'){
            mainCommentCount.innerHTML = 0;
        }else{
            mainCommentCount.innerHTML--;
        } 
    }
     //댓글보여주기
    function showComment(comment){
        const userName = document.createElement('div');
        const inputValue = document.createElement('span');
        const showTime = document.createElement('div');
        const voteDiv = document.createElement('div');
        const countSpan = document.createElement('span')
        const voteUp = document.createElement('button');
        const voteDown = document.createElement('button');
        const commentList = document.createElement('div');

        //삭제버튼 만들기
        const delBtn = document.createElement('button');
        delBtn.className ="deleteComment";
        delBtn.innerHTML="삭제";
        commentList.className = "eachComment";
        userName.className="name";
        inputValue.className="inputValue";
        showTime.className="time";
        voteDiv.className="voteDiv";

        userName.innerHTML = generateUserName();
        userName.appendChild(delBtn);

        //입력값 넘기기
        inputValue.innerText = comment;

        //타임스템프찍기
        showTime.innerHTML = generateTime();
        countSpan.innerHTML = 0;

        //댓글뿌려주기
        commentList.appendChild(userName);
        commentList.appendChild(inputValue);
        commentList.appendChild(showTime);
        commentList.appendChild(voteDiv);
        rootDiv.prepend(commentList);
        voteUp.addEventListener('click', numberCount);
        voteDown.addEventListener('click', numberCount);
        delBtn.addEventListener('click', deleteComments);
        console.dir(rootDiv); 
    } 

    //버튼만들기+입력값 전달
    function pressBtn(){
        const currentVal = inputBar.value;
        if(!currentVal.length){
            alert('댓글을 입력해주세요!!');
        }else{
            showComment(currentVal);
            mainCommentCount.innerHTML++;
            inputBar.value ='';
        } 
    } 
    btn.onclick = pressBtn;

