
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Datasets</title>
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
.style3 {color: #FFFFFF}
.style4 {color: #FF0000}
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
		<%String user=(String)application.getAttribute("user"); %>
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=user%></span></a></li>
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
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <div class="post_content">
            <p align="justify">		
         <h2><span>Upload Datasets !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> 
		  
		  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
      
		String fname=request.getParameter("fname");
									
		String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
		
		
	    String Fid,fs1,fd,cr,yr,sn,temp,hum,ph,rf,ar,au,pn,pu,sa,re,dn;


		
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
		   
		   
	   		      if( row.getCell(0)==null) { Fid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Fid = row.getCell(0).toString();   //else copies cell data to name variable
		   
	   		      if( row.getCell(1)==null) { fs1 = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else fs1 = row.getCell(1).toString();   //else copies cell data to name variable
 
                  if( row.getCell(2)==null) { fd = "0";}  
                  else fd = row.getCell(2).toString();   
				  
				  if( row.getCell(3)==null) { cr = "0";}
				  else cr= row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { yr = "0";}
				  else yr = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { sn = "0";}
				  else sn = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { temp= "0";}
				  else temp= row.getCell(6).toString();
				  
				   if( row.getCell(7)==null) { hum	= "0";}
				  else hum	= row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { ph	= "0";}
				  else ph	= row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { rf	= "0";}
				  else rf	= row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { ar	= "0";}
				  else ar	= row.getCell(10).toString();
				  
				  if( row.getCell(11)==null) { au	= "0";}
				  else au	= row.getCell(11).toString();
				  
				  if( row.getCell(12)==null) { pn	= "0";}
				  else pn	= row.getCell(12).toString();
				 
				  if( row.getCell(13)==null) { pu	= "0";}
				  else pu	= row.getCell(13).toString();
				  
				  if( row.getCell(14)==null) { sa	= "0";}
				  else sa	= row.getCell(14).toString();
				  
				  if( row.getCell(15)==null) { re	= "0";}
				  else re	= row.getCell(15).toString();
				  
				  if( row.getCell(16)==null) { dn	= "0";}
				  else dn	= row.getCell(16).toString();
				  
				  
					String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(re));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
					
				
					
					 Statement stss=connection.createStatement();
			stss.executeUpdate("insert into datasets(Fid,fs,fd,cr,yr,sn,temp,hum,ph,rf,ar,au,pn,pu,sa,re,hc,dn)values('"+Fid+"','"+fs1+"','"+fd+"','"+cr+"','"+yr+"','"+sn+"','"+temp+"','"+hum+"','"+ph+"','"+rf+"','"+ar+"','"+au+"','"+pn+"','"+pu+"','"+sa+"','"+re+"','"+h1+"','"+dn+"')");   
					
					
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
      
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		  
		  
				</p>
                <p align="center"><a href="adminmain.jsp">Back</a></p>
				
				</p>
          </div>
          <div class="clr"></div>
        </div>
        <p align="right" class="pages"><a href="adminmain.jsp">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div></body>
</html>
