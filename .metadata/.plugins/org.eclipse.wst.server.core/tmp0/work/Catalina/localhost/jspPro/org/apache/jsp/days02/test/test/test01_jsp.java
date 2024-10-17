/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.93
 * Generated at: 2024-10-16 23:56:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days02.test.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import org.doit.domain.EmpVO;
import java.util.Iterator;
import com.util.DBConn;
import org.doit.domain.DeptVO;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class test01_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(12);
    _jspx_imports_classes.add("org.doit.domain.DeptVO");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.util.Iterator");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("org.doit.domain.EmpVO");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("com.util.DBConn");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
 int deptno = 10; 
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");

// ex01_emp.jsp?deptno=10
// ex01_emp.jsp null
// ex01_emp.jsp?deptno= ""

String pDeptno = request.getParameter("deptno2");

try{
deptno = Integer.parseInt( pDeptno );
} catch(Exception e) {
deptno = 10;
}


      out.write("\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write(" \r\n");
      out.write("   \r\n");

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




      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

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




      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"http://localhost/jspPro/images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<meta name=\"google\" content=\"notranslate\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://localhost/jspPro/resources/cdn-main/example.css\">\r\n");
      out.write("<script src=\"http://localhost/jspPro/resources/cdn-main/example.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write(" span.material-symbols-outlined{\r\n");
      out.write("    vertical-align: text-bottom;\r\n");
      out.write(" }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header>\r\n");
      out.write("  <h1 class=\"main\"><a href=\"#\" style=\"position: absolute;top:30px;\">JYP Ent</a></h1>\r\n");
      out.write("  <ul>\r\n");
      out.write("    <li><a href=\"#\">로그인</a></li>\r\n");
      out.write("    <li><a href=\"#\">회원가입</a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</header>\r\n");
      out.write("<div>\r\n");
      out.write("  <xmp class=\"code\">\r\n");
      out.write("   \r\n");
      out.write("  </xmp>\r\n");
      out.write("  <select>\r\n");
      out.write("  ");

        ir2 = list2.iterator();
        while(ir2.hasNext()){
           vo2 = ir2.next();
           deptno2 = vo2.getDeptno();
           dname = vo2.getDname();
     
      out.write("\r\n");
      out.write("       <option id=\"");
      out.print(deptno2 );
      out.write('"');
      out.write('>');
      out.print(dname  );
      out.write("</option>\r\n");
      out.write("   ");
      
        }//while
   
      out.write("\r\n");
      out.write("  </select>\r\n");
      out.write("  <br>\r\n");
      out.write("    <table>\r\n");
      out.write("     <thead>\r\n");
      out.write("      <th><input type=\"checkbox\">전체선택</th>\r\n");
      out.write("        <th>empno</th>\r\n");
      out.write("        <th>ename</th>\r\n");
      out.write("        <th>job</th>\r\n");
      out.write("        <th>mgr</th>\r\n");
      out.write("        <th>hiredate</th>\r\n");
      out.write("        <th>sal</th>\r\n");
      out.write("        <th>comm</th>\r\n");
      out.write("        <th>deptno</th>\r\n");
      out.write("     </thead>\r\n");
      out.write("     <tbody>\r\n");
      out.write("     \r\n");
      out.write("     ");

        if(list == null){
     
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("           <td colspan=\"9\">사원이 존재하지 않습니다.</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("     ");

        }else{
           ir = list.iterator();
           while( ir.hasNext() ){
              vo = ir.next();
     
      out.write("\r\n");
      out.write("     <tr id=\"body\">\r\n");
      out.write("        <td style=\"text-align: center;\"><input type=\"checkbox\"></td>\r\n");
      out.write("        <td>");
      out.print( vo.getEmpno() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getEname() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getJob() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getMgr() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getHiredate() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getSal() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getComm() );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print( vo.getDeptno() );
      out.write("</td>\r\n");
      out.write("     </tr>\r\n");
      out.write("\r\n");
      out.write("     ");

           } // while 
      out.write("\r\n");
      out.write("           <tr>\r\n");
      out.write("           <td colspan=\"9\" style=\"text-align: center;\"><button>확인</button></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    ");

        } // if
     
      out.write("\r\n");
      out.write(" \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(\"select\").on(\"change\" , function(e){\r\n");
      out.write("//alert(\"ad\")\r\n");
      out.write("\r\n");
      out.write("deptno2 =  $(this).find(\"option:selected\").attr(\"id\");\r\n");
      out.write("//alert(deptno2)\r\n");
      out.write("\r\n");
      out.write("location.href= `test01.jsp?deptno=${deptno2}`\r\n");
      out.write("		\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
