<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_View_Searched_Query_TimeDelay</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #009966}
.style4 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>AgriResponse A Real Time Agricultural Query Response Generation System for Assisting Nationwide Farmers</h1>
      </div>
      <div class="menu_nav">
        <ul>
		<%String admin=(String)application.getAttribute("admin"); %>
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=admin%></span></a></li>
		  <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>View Searched Query Time Delay !!! </span></h2>
          <div class="clr"></div>
          <div class="post_content1">
            <p align="justify">&nbsp;</p>
            <p align="justify">	
              
              <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
-->
</style>
			<table width="611" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	  
 
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style1 style4">Query Name	</span></th>
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style1 style4">User Name	</span></th>
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style1 style4">Date and Time	</span></th>
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style1 style4">Response Time Delay</span></th>	
        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19;
int i=0,rank=0;
try 
{
	String query="select * from td"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
		
			%>
            <tr>
			  
              <td  width="184" height="60" align="center" valign="middle" ><span class="style7 style2">
                <%out.println(s1);%>
              </span></td>
              <td  width="199" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s2);%>
              </span></td>
              <td  width="225" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s3);%>
             
              </span></td>
              <td  width="578" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s4);%>-MS
              
              </span></td>
			 </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
				</br>
            </p>
           
          </div>
          <div class="clr"></div>
         
        </div>
        <p align="right" class="pages"><a href="adminmain.jsp">Back</a></p>
      </div>
     
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
