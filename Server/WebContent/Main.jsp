<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <%
        // ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
    %>
    <title>���ü�� Lv.99_team�����ڵ�</title>
    

    
    <script type="text/javascript">
        // ȸ������ ��ư Ŭ���� ȸ������ ȭ������ �̵�
        function goJoinForm() {
            location.href="JoinForm.jsp";
        }    
    </script>
 
</head>
<body>
    <div id="wrap">
        <form name="loginInfo" method="post" action="../pro/LoginPro.jsp" 
                onsubmit="return checkValue()">
        	<h2>���ü���� �̿��� ���� �ý���_team�����ڵ�</h2>
            <!-- �̹��� �߰� -->
            <img src="bc_level99.jpg" width="400" height="300">
            <br><br>
            
            <table>
                <tr>
                    <td bgcolor="skyblue">�̸�</td>
                    <td><input type="text" name="id" maxlength="256" style = "width:300;"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">�����ּ�</td>
                    <td><input type="text" name="password" maxlength="256" style = "width:300;"></td>
                </tr>
            </table>
            
            <input type="button" value="���ιޱ�" onclick="goJoinForm()" style="width:150px;height:50px;font-size:20px;">
        </form>
        
   
    </div>    
</body>
</html>
