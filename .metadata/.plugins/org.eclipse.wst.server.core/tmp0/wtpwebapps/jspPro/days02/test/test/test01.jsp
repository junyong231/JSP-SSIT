<%@page import="java.util.Date"%>
<%@page import="org.doit.domain.EmpVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.util.DBConn"%>
<%@page import="org.doit.domain.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   
<% int deptno = 10; %>

 <%
// ex01_emp.jsp?deptno=10
// ex01_emp.jsp null
// ex01_emp.jsp?deptno= ""

String pDeptno = request.getParameter("deptno2");

try{
deptno = Integer.parseInt( pDeptno );
} catch(Exception e) {
deptno = 10;
}

%>
   
   
   
 
   
<%
Connection conn = null;
PreparedStatement pstmt = null;
String sql = " SELECT empno, ename, job, mgr, "
+ " TO_CHAR(hiredate, 'yyyy-MM-dd' ) hiredate , sal, comm, deptno  "
+ " FROM emp "
+ " WHERE deptno = ? ";
ResultSet rs = null;

int empno, mgr;
String ename, job;
Date hiredate;
double sal, comm;

EmpVO vo = null;
ArrayList<EmpVO> list = null;
Iterator<EmpVO> ir = null;

try{

conn = DBConn.getConnection();

pstmt = conn.prepareStatement(sql);

// ?에 값을 주려면 ?
pstmt.setInt( 1, deptno );

rs = pstmt.executeQuery();
if( rs.next() ) {
list = new ArrayList<>();
do{

empno = rs.getInt("empno");
ename =rs.getString("ename");
job= rs.getString("job");
mgr= rs.getInt("mgr");
hiredate = rs.getDate("hiredate");
sal = rs.getDouble("sal");
comm = rs.getDouble("comm");



vo = new EmpVO().builder()
.empno(empno).ename(ename).job(job).mgr(mgr).hiredate(hiredate).sal(sal).comm(comm).deptno(deptno)
.build();
       
           list.add(vo);
           

}while( rs.next() );
}

/* System.out.println("> conn = " + conn);
System.out.println(">isClosed = " + conn.isClosed() ); //true이면 닫힌거임 false떠야 연결완료 */

}catch(Exception e){

}finally{
try{
        pstmt.close();
        DBConn.close();
       
     } catch(Exception e) {
        e.printStackTrace();
     }

}



%>



<%
Connection conn2 = null;
PreparedStatement pstmt2 = null;
String sql2 = " SELECT * "
+ " FROM dept ";
ResultSet rs2 = null;

int deptno2;
String dname, loc;

DeptVO vo2 = null;
ArrayList<DeptVO> list2 = null;
Iterator<DeptVO> ir2 = null;

try{

conn2 = DBConn.getConnection();

pstmt2 = conn2.prepareStatement(sql2);
rs2 = pstmt2.executeQuery();
if( rs2.next() ) {
list2 = new ArrayList<>();
do{

deptno2 = rs2.getInt("deptno");
dname = rs2.getString("dname");
loc = rs2.getString("loc");

vo2 = new DeptVO().builder()
.deptno(deptno2).dname(dname).loc(loc).build();
       
           list2.add(vo2);
           

}while( rs2.next() );
}

/* System.out.println("> conn = " + conn);
System.out.println(">isClosed = " + conn.isClosed() ); //true이면 닫힌거임 false떠야 연결완료 */

}catch(Exception e){

}finally{
try{
        pstmt2.close();
        DBConn.close();
       
     } catch(Exception e) {
        e.printStackTrace();
     }

}



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">JYP Ent</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <xmp class="code">
   
  </xmp>
  <select>
  <%
        ir2 = list2.iterator();
        while(ir2.hasNext()){
           vo2 = ir2.next();
           deptno2 = vo2.getDeptno();
           dname = vo2.getDname();
     %>
       <option id="<%=deptno2 %>"><%=dname  %></option>
   <%      
        }//while
   %>
  </select>
  <br>
    <table>
     <thead>
      <th><input type="checkbox">전체선택</th>
        <th>empno</th>
        <th>ename</th>
        <th>job</th>
        <th>mgr</th>
        <th>hiredate</th>
        <th>sal</th>
        <th>comm</th>
        <th>deptno</th>
     </thead>
     <tbody>
     
     <%
        if(list == null){
     %>
        <tr>
           <td colspan="9">사원이 존재하지 않습니다.</td>
        </tr>
     <%
        }else{
           ir = list.iterator();
           while( ir.hasNext() ){
              vo = ir.next();
     %>
     <tr id="body">
        <td style="text-align: center;"><input type="checkbox"></td>
        <td><%= vo.getEmpno() %></td>
        <td><%= vo.getEname() %></td>
        <td><%= vo.getJob() %></td>
        <td><%= vo.getMgr() %></td>
        <td><%= vo.getHiredate() %></td>
        <td><%= vo.getSal() %></td>
        <td><%= vo.getComm() %></td>
        <td><%= vo.getDeptno() %></td>
     </tr>

     <%
           } // while %>
           <tr>
           <td colspan="9" style="text-align: center;"><button>확인</button></td>
    </tr>
    <%
        } // if
     %>
 
</div>

<script type="text/javascript">

$("select").on("change" , function(e){
//alert("ad")

deptno2 =  $(this).find("option:selected").attr("id");
//alert(deptno2)

location.href= `test01.jsp?deptno=\${deptno2}`
		


});


</script>

</body>
</html>
