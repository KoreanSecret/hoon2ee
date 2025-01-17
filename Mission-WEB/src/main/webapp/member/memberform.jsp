<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script>
	let isNull = function(obj, msg) {
		if(obj.value == '') {
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}
	
	let checkForm = function() {
		let f = document.inputForm
		
		if(f.id.value == '') {
			alert('아이디를 입력해주세요')
			f.id.focus()
			return false
		}
		
		if(isNull(f.name, '이름을 입력해주세요')) {
			return false
		}
		
		if(isNull(f.pwd, '비밀번호를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.eid, '메일아이디를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.edm, '메일도메인을 입력해주세요')) {
			return false
		}
		
		if(isNull(f.tel1, '전화번호를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.tel2, '전화번호를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.tel3, '전화번호를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.post, '우편번호를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.addr, '주소를 입력해주세요')) {
			return false
		}
		
		if(isNull(f.daddr, '상세주소를 입력해주세요')) {
			return false
		}
		
		return true
	}
</script>
</head>
<body>
	<div align="center">
		<hr>
		<h2>회원가입폼</h2>
		<hr>
		<form name="inputForm" action="member.jsp" method="post" onsubmit="return checkForm()">
			<table style="width: 80%" border="1">
				<tr>
					<th width="25%">아이디</th>
					<td>
						<input type="text" name="id" size="78">
					</td>
				</tr>
				<tr>
					<th width="25%">이름</th>
					<td>
						<input type="text" name="name" size="78">
					</td>
				</tr>
				<tr>
					<th width="25%">비밀번호</th>
					<td>
						<input type="password" name="pwd" size="78">
					</td>
				</tr>
				<tr>
					<th width="25%">메일아이디</th>
					<td>
						<input type="text" name="eid" size="78">
					</td>
				</tr>
				<tr>
					<th width="25%">메일도메인</th>
					<td>
						<input type="text" name="edm" size="78">
					</td>
				</tr>
				<tr>
					<th width="25%">전화번호</th>
					<td>
						<input type="text" name="tel1" size="18">-
						<input type="text" name="tel2" size="18">-
						<input type="text" name="tel3" size="18">
					</td>
				</tr>
				
				<tr>
					<th width="25%">주소</th>
					<td>
						<input type="text" name="post" id="sample6_postcode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" name="addr" id="sample6_address" placeholder="주소"><br>
						<input type="text" name="daddr" id="sample6_detailAddress" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목">
					</td>
				</tr>
				
			</table>
			<br>
			<button type="submit">등록</button>
		</form>
	</div>
</body>
</html>