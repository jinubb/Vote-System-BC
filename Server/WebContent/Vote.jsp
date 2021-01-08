<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>블록체인 Lv.99_team깡통코딩</title>
<script type="text/javascript">
        // 선거결과 확인
        function goresult1() {
            location.href="https://testnet.aergoscan.io/account/Amh1ZmozbiF2GZ2UY1cPcY2vJMppH6CgT2n6DQENQGZdp2WfhcTa";
        }    
        function goresult2() {
            location.href="https://testnet.aergoscan.io/account/AmgqU7GUNdg2q8mUrVoGJKD3i5bvKQChq23zTsQX3xkmD1TXoXKa";
        }    
        function goresult3() {
            location.href="https://testnet.aergoscan.io/account/AmgePhTVVjJPrkjNXxW87X7G5fQ9k791vk8tPnhWpSe7cLz3L1my";
        }    
    </script>
</head>
<body>
<h1>코인이 지급되었습니다.</h1>
<br>
투표를 원하는 후보에게 코인을 전송해주세요.
<table border="3"> 
<thead> 
<tr> 
<th>
</th> 
<th bgcolor = "lightgray" style = "height:30px;">Smart Contract Address</th> 
</tr>
 
</thead> 
<tbody> 
<tr> 
<td>　1번후보　</td> 
<td style="width:600px;height:50px;font-size:18px;">Amh1ZmozbiF2GZ2UY1cPcY2vJMppH6CgT2n6DQENQGZdp2WfhcTa</td>
</tr> 
<tr> 
<td>　2번후보　</td> 
<td style="width:600px;height:50px;font-size:18px;">AmgqU7GUNdg2q8mUrVoGJKD3i5bvKQChq23zTsQX3xkmD1TXoXKa</td>
</tr> 
<tr> 
<td>　3번후보　</td> 
<td style="width:600px;height:50px;font-size:18px;">AmgePhTVVjJPrkjNXxW87X7G5fQ9k791vk8tPnhWpSe7cLz3L1my</td>

</tr> 
</tbody> 
</table>
<br>
<h2>선거결과 확인</h2>
<table>
	<tr border="2">
		<td><input type="button" value="1번후보" onclick="goresult1()" style="width:150px;height:50px;font-size:20px;"></td>
		<td><input type="button" value="2번후보" onclick="goresult2()" style="width:150px;height:50px;font-size:20px;"></td>
		<td><input type="button" value="3번후보" onclick="goresult3()" style="width:150px;height:50px;font-size:20px;"></td>
	</tr>
	
</table>
</body>
</html>