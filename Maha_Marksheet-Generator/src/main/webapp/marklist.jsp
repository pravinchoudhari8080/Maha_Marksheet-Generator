<%@page import="bean.Bean"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SSC Marksheet</title>

<style>
		body {
			background-color: #f9f9f9;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
			 text-align: center;
		}
		.container {
			background-color: #FFF5EE;
			border: 1px solid #ccc;
			margin: 20px auto;
			padding: 20px;
			width: 700px;
		}
		.header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			margin-bottom: 20px;
		}
		
		.response{
          font-weight: bold;
           
		}
		
		span{
		text-transform: uppercase;
		}
		td{
		text-transform: uppercase;
		}
		h5{
		
		text-align: right;
		}
        p{
        font-weight: normal;
        }    
		.school {
			font-size: 1.2em;
			font-weight: bold;
			text-align: center;
			margin: 0;
			padding: 0;
		}
		.marksheet {
			border-collapse: collapse;
			margin: 0 auto;
			width: 100%;
		}
		.marksheet th, .marksheet td {
			border: 1px solid #ccc;
			padding: 10px;
			text-align: center;
		}
		.marksheet th {
			background-color: #FFE4E1;
			font-weight: normal;
			text-transform: uppercase;
		}
		.marksheet .subject {
			text-align: left;
		}
		.grade {
			font-weight: bold;
			font-size: 1.2em;
			color: #333;
		}
		.footer {
			margin-top: 20px;
			text-align: right;
		}
		
	</style>

</head>
<body>
<%
Bean beanClass = (Bean)request.getAttribute("Bean");
%>


       <div class="container">
        <div class="header">
			<img src="image/logo_Maharashtra.png" width="80">
			<h2>Maharashtra State Board Of Secondary And Higher Secondary Education, Pune</h2>
		</div>
		<h4>SECONDARY SCHOOL CERTIFICATE EXAMINATION - STATEMENT OF MARKS</h4>
		
		<table class="marksheet">
		<thead>
			<tr>
			
			<th>SEAT NO.</th>
			<th>CENTER NO.</th>
			<th>SCHOOL NO.</th>
			<th>YEAR OF EXAM.</th>
			
			</tr>
		</thead>
		
		<tbody>
            <tr>
           
            
            <td><%out.println(beanClass.getRollNo());%></td>
            <td><%out.println(beanClass.getCenterNumber());%></td>
            <td><%out.println(beanClass.getSchoolNumber());%></td>
            <td><%out.println(beanClass.getExamyear());%></td>
            
            </tr>
         </tbody>
            
		</table>
		
		
		<p>CANDIDATE'S FULL NAME : <span class="response"><%out.println(beanClass.getStudentFullName());%></span></p>
		
        <p>CANDIDATE'S MOTHER'S NAME : <span class="response"><%out.println(beanClass.getMotherName());%></span></p>
		
		<table class="marksheet">
		 <thead>	
			<tr>
			    <th rowspan="2">Sr.<br>No</th>
				<th rowspan="2">Subject Code No. And<br>Subject Name</th>
				<th rowspan="2">Max.<br>Marks</th>
				<th colspan="2">Marks or Grade Obtained</th>
				
				
			</tr>
			<tr>
				<th>In<br>Figures</th>
				<th>In Words</th>
			</tr>
		</thead>
		
		<tr>
			    <td><%out.println(beanClass.getSrS1());%></td>
                <td><%out.println(beanClass.getNameS1());%></td>
                <td><%out.println(beanClass.getMaxS1());%></td>
                <td><%out.println(beanClass.getTotS1());%></td>
                <td><%out.println(beanClass.getTotS1w());%></td>
				
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS2());%></td>
                <td><%out.println(beanClass.getNameS2());%></td>
                <td><%out.println(beanClass.getMaxS2());%></td>
                <td><%out.println(beanClass.getTotS2());%></td>
                <td><%out.println(beanClass.getTotS2w());%></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS3());%></td>
                <td><%out.println(beanClass.getNameS3());%></td>
                <td><%out.println(beanClass.getMaxS3());%></td>
                <td><%out.println(beanClass.getTotS3());%></td>
                <td><%out.println(beanClass.getTotS3w());%></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS4());%></td>
                <td><%out.println(beanClass.getNameS4());%></td>
                <td><%out.println(beanClass.getMaxS4());%></td>
                <td><%out.println(beanClass.getTotS4());%></td>
                <td><%out.println(beanClass.getTotS4w());%></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS5());%></td>
                <td><%out.println(beanClass.getNameS5());%></td>
                <td><%out.println(beanClass.getMaxS5());%></td>
                <td><%out.println(beanClass.getTotS5());%></td>
                <td><%out.println(beanClass.getTotS5w());%></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS6());%></td>
                <td><%out.println(beanClass.getNameS6());%></td>
                <td><%out.println(beanClass.getMaxS6());%></td>
                <td><%out.println(beanClass.getTotS6());%></td>
                <td><%out.println(beanClass.getTotS6w());%></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS7());%></td>
                <td><%out.println(beanClass.getNameS7());%></td>
                <td>*</td>
                <td><%out.println(beanClass.getGrdS7());%></td>
                <td></td>
             </tr>
             <tr>
               <td><%out.println(beanClass.getSrS8());%></td>
                <td><%out.println(beanClass.getNameS8());%></td>
                <td>*</td>
                <td><%out.println(beanClass.getGrdS8());%></td>
                <td></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS9());%></td>
                <td><%out.println(beanClass.getNameS9());%></td>
                <td>*</td>
                <td><%out.println(beanClass.getGrdS9());%></td>
                <td></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS10());%></td>
                <td><%out.println(beanClass.getNameS10());%></td>
                <td>*</td>
                <td><%out.println(beanClass.getGrdS10());%></td>
                <td></td>
             </tr>
             <tr>
                <td><%out.println(beanClass.getSrS11());%></td>
                <td><%out.println(beanClass.getNameS11());%></td>
                <td>*</td>
                <td><%out.println(beanClass.getGrdS11());%></td>
                <td></td>
             </tr>
       </table>
       <br>
       <table class="marksheet">
       
        <thead>
           
            <tr>
                <th>Result</th>
                <th>Percentage</th>
                <th>Out of<br>marks</th>
                <th>Total marks<br>obtaines</th>
                <th>Total marks<br>obtaines In Words</th>
               
                
                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%out.println(beanClass.getResult());%></td>
                <td><%out.println(beanClass.getPercentage());%></td>
                <td><%out.println(beanClass.getOutofTotalMarks());%></td>
                <td><%out.println(beanClass.getObtTotalMarks());%></td>
                <td><%out.println(beanClass.getObtTotalMarksInWords());%></td>
              
            </tr>
        </tbody>
		
		</table>
		<h5>Divisional Officer Signature</h5>
		<div class="header">
		<p>Certificate Number: <span class="response"><%out.println("S"+beanClass.getExamyear()+beanClass.getRollNo());%></span></p>
		<img  src="image/sig1.png"  width="150">
		</div>
  </div>
</body>
</html>