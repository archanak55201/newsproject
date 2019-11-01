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
				<%try{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsdetail?user=root&password=12345");
            
            
					Document d = Jsoup.connect("https://www.business-standard.com/latest-news").userAgent("Mozilla/17.0").get();
					System.out.print("connected");
					Elements temp = d.select("div.topB");
					int i=0;
					for(Element movielist:temp){
							i++;
							String a=movielist.getElementsByTag("a").first().text();
							System.out.println(i+" "+a);
						   
							String query = "insert into news(sno,news) value(?,?)";
							PreparedStatement pst = con.prepareStatement(query);
							pst.setInt(1, i);
							pst.setString(2, a);
							pst.executeUpdate();
						   
					}
				}catch(IOException e){
						e.printStackTrace();
				} catch(ClassNotFoundException ex) {
						ex.printStackTrace();
				} catch(SQLException ep) {
						ep.printStackTrace();
				}
				
				%>
				<%
					try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsdetail?user=root&password=12345");
						Statement statement=con.createStatement();
						String query = "select sno,news from news";
						
						ResultSet rs = statement.executeQuery(query);
						while(rs.next()){
				%>
				<span><%=rs.getInt("sno") %></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span><%=rs.getString("news") %></span><br/><br/><br/>

				<% 
					}

					} catch (Exception e) {
					e.printStackTrace();
					}
				%>

				<form  action="fetch.jsp">
				<br />
				<br /><h2>Click Here to fetch more news</h2>
				
				
				
					<span class="btn"><input type="submit" value="fetch" /></span>

					<br /><br />
				</form>
				<form  action="delete.jsp">
				<br />
				<br /><h2>Click Here to delete old news</h2>
				
				
				<br />
				<br />
					<span class="btn"><input type="submit" value="delete" /></span>

					<br />
				</form>


			</span>
		 

			
		</span>

        
		
	</div>

	<div id="footer">eNews site</div>

</div>
</body></html>