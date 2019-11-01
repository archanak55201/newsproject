1.Java is required i.e jdk.

2.Apache tomcat server is also required to run this program .

3.All jar must be present it is in lib folder of tomcat. 
    Their is few jar files are present in project folder .
    >>topnews\WEB-INF\lib

   ----new jar are added please copy these jar files also.

4. path setting in enviroment variable should be done.

    user variable:-
    C:\Program Files (x86)\Java\jdk1.8.0_45\bin;C:\Tomcat 8.5\lib\servlet-api.jar;C:\Tomcat 8.5\lib\jsp-api.jar;
    C:\Tomcat 8.5\lib\mysql-connector-java-5.1.5-bin;C:\Tomcat 8.5\lib\jasypt-1.9.0;C:\Tomcat 8.5\lib\jsp-api

      (new)--C:\Tomcat 8.5\lib\jsoup-1.12.1.jar

    system variable:-
    C:\Program Files (x86)\Java\jdk1.8.0_45\bin;C:\Tomcat 8.5\lib\servlet-api.jar;C:\Tomcat 8.5\lib\jsp-api.jar;
    C:\Tomcat 8.5\lib\mysql-connector-java-5.1.5-bin;C:\Tomcat 8.5\lib\jasypt-1.9.0;C:\Tomcat 8.5\lib\jsp-api

      (new)--C:\Tomcat 8.5\lib\jsoup-1.12.1.jar

5.Also have mysql in your pc.

6.You have to create one database name newsdetails ,and also create table news
   ---create database newsdetail
   ---use newsdetail
   ---create table news (sno int(11),news varchar(200));
   ---In a program you have to change username and password of mysql according to your system.
   ---username=root, password=12345 you can change this in your system

7.There are jsp file which is run only when the tomcat server is installed and started .

8. I have done mysql connectivity  part in jsp file.

9. I have also done deletion of old news which remove the news from database.

10.Site from where I am fetching the news --https://www.business-standard.com/latest-news.