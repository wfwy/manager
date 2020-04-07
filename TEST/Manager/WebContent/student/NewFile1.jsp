
<%@ page language="java" contentType="text/html; charset=UTF-8"  

    pageEncoding="UTF-8"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  

 

  

<script type="text/javascript">  

  function exportExcel(){  

      window.open('NewFile1.jsp?exportToExcel=YES');  

  }  

  

</script>  

 <head>  
 

  

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  

<title>Export to Excel - Demo</title>  

</head>  

<body>  

    <%  

        String exportToExcel = request.getParameter("exportToExcel");  

        if (exportToExcel != null  

                && exportToExcel.toString().equalsIgnoreCase("YES")) {  

            response.setContentType("application/vnd.ms-excel");  

            response.setHeader("Content-Disposition", "inline; filename="  

                    + "excel.xls");  

   

        }  

    %>  

    <table align="left" border="2">  

        <thead>  

            <tr>  

                <th>ID</th>  

                <th>文本内容</th>  

                <th>序列</th>  

                <td style="display: none">序列222</td>  

            </tr>  

        </thead>  

        <tbody>  

            <%  

                for (int i = 0; i < 10; i++) {  

            %>  

            <tr>  

                <td align="center"><%=i%></td>  

                <td align="center">文本内容 <%=i%></td>  

                <td align="center"><%=i*10%></td>  

                <td style="display: none" align="center"><%=i * 20%></td>  

            </tr>  

            <%  

                }  

            %>  

        </tbody>  

    </table>  

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  

              

    <%  

        if (exportToExcel == null) {  

    %>  

    <a href="javascript:exportExcel();">导出为Excel</a>  

    <%  

        }  

    %>  

</body>  

</html>  
