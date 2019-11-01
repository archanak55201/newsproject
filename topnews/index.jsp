<%@page import=" java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<html>
<head>
<link rel="stylesheet" href="css/first.css"/>
<title> new aggregator</title></head>
<body>


<div>
	<div id="header">
		<span id="tit">Top News</span>
		
		<span id="date">  <%= (new java.util.Date()).toLocaleString()%></span>
	</div>
	<div id="body">
		<span id="all">
			<span id="item">
				<form  action="fetch.jsp">
				<br /><br /><br />
				<br />Click Here for fetching top news
				
				
				<br />
				<br />
					<span class="btn"><input type="submit" value="fetch" /></span>

					<br /><br /><br /><br /><br />
				</form>
			</span>
		 

			
		</span>

        
		
	</div>

	<div id="footer">eNews site</div>

</div>
</body></html>