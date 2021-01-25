<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
    <link rel="stylesheet" href="/node_modules/tui-time-picker/dist/tui-time-picker.css">
    <link rel="stylesheet" href="/node_modules/tui-date-picker/dist/tui-date-picker.css">
    <link rel="stylesheet" href="/node_modules/tui-grid/dist/tui-grid.css">
    <link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <script src="/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="/node_modules/tui-code-snippet/dist/tui-code-snippet.min.js"></script>
    <script src="/node_modules/tui-time-picker/dist/tui-time-picker.min.js"></script>
    <script src="/node_modules/tui-date-picker/dist/tui-date-picker.min.js"></script>
    <script src="/node_modules/tui-grid/dist/tui-grid.js"></script>

</head>
<script>
var grid;
	window.onload = function() {

	    grid = new tui.Grid({
	      el: document.getElementById('grid'),
	      //data: gridData,
	      scrollX: false,
	      scrollY: false,
	      columns: [
	        {
	          header: 'NAME',
	          name: 'NAME'
	        },
	        {
	          header: 'EMAIL',
	          name: 'EMAIL'
	        },
	        {
	          header: 'GENDER',
	          name: 'GENDER'
	        },
	        {
	          header: 'HOBBY1',
	          name: 'HOBBY1'
	        },
	        {
	          header: 'HOBBY2',
	          name: 'HOBBY2'
	        }
	      ]
	    });

		$.ajax({
			url : "memberList",
			method : "get",
			dataType : "JSON",
			data : {},
			error : function() {alert("똑바로 안 했!!!")},
			success : function(result) {
				grid.resetData(result);
				/* 
				for(var i = 0; i < result.length; i++) {
					var member = result[i];
					$('#grid').append(member.NAME + "<br>");
				}
				 */
			}
		});
	}
</script>
<body>
<div id="grid"></div>
</body>
</html>
