<%@page import=" java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.sql.*"%>

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
				

				<%
					try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsdetail?user=root&password=12345");
						String query = "delete from news";
						PreparedStatement statement=con.prepareStatement(query);
						
						statement.executeUpdate();
					
					} catch(Exception e) {
						e.printStackTrace();
					}
				%>
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