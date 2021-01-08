<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <%
        // 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
    %>
    <title>블록체인 Lv.99_team깡통코딩</title>
    

    
    <script type="text/javascript">
        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goJoinForm() {
            location.href="JoinForm.jsp";
        }    
    </script>
 
</head>
<body>
    <div id="wrap">
        <form name="loginInfo" method="post" action="../pro/LoginPro.jsp" 
                onsubmit="return checkValue()">
        	<h2>블록체인을 이용한 선거 시스템_team깡통코딩</h2>
            <!-- 이미지 추가 -->
            <img src="bc_level99.jpg" width="400" height="300">
            <br><br>
            
            <table>
                <tr>
                    <td bgcolor="skyblue">이름</td>
                    <td><input type="text" name="id" maxlength="256" style = "width:300;"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">지갑주소</td>
                    <td><input type="text" name="password" maxlength="256" style = "width:300;"></td>
                </tr>
            </table>
            
            <input type="button" value="코인받기" onclick="goJoinForm()" style="width:150px;height:50px;font-size:20px;">
        </form>
        
   
    </div>    
</body>
</html>
