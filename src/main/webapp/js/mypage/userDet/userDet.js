











/*document.addEventListener('DOMContentLoaded', function() {
  const editLink = document.querySelector('.Nickname_nickname__3ffy2');
  const nicknameEditor = document.querySelector('.Nickname_nicknameEditor__1VjQ3');
  const confirmButton = nicknameEditor.querySelector('.MemberProfileCommon_submitButton__1g9tX');
  const cancelButton = nicknameEditor.querySelector('.MemberProfileCommon_cancelButton__AXcvv');
  const clearButton = nicknameEditor.querySelector('.InputDefault_clear__OQcsb');
  const nicknameDisplay = editLink.querySelector('span');
  const memberID = document.querySelector('.Nickname_memberID__3MMXU');
  const nicknameInput = nicknameEditor.querySelector('.InputDefault_inputValid__102ly');
  const errorElement = nicknameEditor.querySelector('.input-error-message.InputDefault_error__1uKhU'); // 에러 메시지 요소 선택

  // 닉네임 편집 버튼 클릭 시 이벤트 처리
  editLink.addEventListener('click', function() {
    // 프로필 표시 숨기고 닉네임 편집기 표시
    editLink.style.display = 'none';
    memberID.style.display = 'none'; // Hide the memberID element
    nicknameEditor.style.display = 'block';

    // 입력 필드의 초기값 설정
    nicknameInput.value = nicknameDisplay.textContent;
    errorElement.textContent = ''; // 에러 메시지 초기화

    // 입력이 변경되면 확인 버튼 활성화
    nicknameInput.addEventListener('input', function() {
      if (validateNickname(nicknameInput.value)) {
        confirmButton.disabled = false;
        errorElement.textContent = ''; // 에러 메시지 초기화
      } else {
        confirmButton.disabled = true;
        errorElement.textContent = '닉네임은 2~8자의 영문 또는 숫자로만 가능합니다.'; // 에러 메시지 표시
      }
    });
  });

  // 취소 버튼 클릭 시 이벤트 처리
  cancelButton.addEventListener('click', function() {
    // 닉네임 편집기 숨기고 프로필 표시 표시
    nicknameEditor.style.display = 'none';
    memberID.style.display = 'block'; // Show the memberID element
    editLink.style.display = 'block';
  });

  // 확인 버튼 클릭 시 이벤트 처리
  confirmButton.addEventListener('click', function() {
    // 표시된 닉네임 업데이트하고 편집기 숨기기
    const newNickname = nicknameInput.value;
    nicknameDisplay.textContent = newNickname;
    nicknameEditor.style.display = 'none';
    memberID.style.display = 'block'; // Show the memberID element
    editLink.style.display = 'block';
  });

  // 지우기 아이콘 클릭 시 입력 필드 비우기
  clearButton.addEventListener('click', function() {
    nicknameInput.value = '';
    confirmButton.disabled = true;
    errorElement.textContent = ''; // 에러 메시지 초기화
  });

  // 닉네임 유효성 검사 함수
  function validateNickname(nickname) {
    const regex = /^[A-Za-z0-9]{2,8}$/;
    return regex.test(nickname);
  }
  
 ------------------------------------------------------------------------- 
  // 확인 버튼 클릭 시 이벤트 처리
confirmButton.addEventListener('click', function() {
  // 표시된 닉네임을 업데이트하고 편집기를 숨깁니다
  const newNickname = nicknameInput.value;
  nicknameDisplay.textContent = newNickname;
  nicknameEditor.style.display = 'none';
  memberID.style.display = 'block'; // memberID 엘리먼트 표시
  editLink.style.display = 'block';

  // 업데이트된 닉네임을 포함한 객체 생성
  const updatedUserData = {
    nickname: newNickname,
    // 필요한 경우 다른 사용자 데이터 포함
  };

  // 서버로 HTTP POST 요청 보내기
  fetch('/userUpd.dox', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(updatedUserData),
  })
  .then(response => response.text())
  .then(data => {
    // 필요한 경우 서버 응답 처리
    // 예를 들어, 성공 메시지 표시 또는 UI 업데이트
    console.log('서버 응답:', data);
  })
  .catch(error => {
    // 요청 중 발생한 오류 처리
    console.error('사용자 데이터 업데이트 오류:', error);
  });
});
});


//비밀번호 수정 
// 비밀번호를 가려서 표시할 문자
const maskCharacter = '●';

// 실제 비밀번호
const realPassword = "${userPwSession}";

// 비밀번호를 가려서 표시하는 함수
function maskPassword(password) {
  return maskCharacter.repeat(password.length);
}

// 페이지 로딩 완료 후 실행
document.addEventListener('DOMContentLoaded', function() {
  const maskedPasswordElement = document.getElementById('maskedPassword');
  
  // 비밀번호를 가려서 표시
  maskedPasswordElement.textContent = maskPassword(realPassword);
});


*/