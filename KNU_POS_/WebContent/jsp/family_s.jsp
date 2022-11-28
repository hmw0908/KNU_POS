<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F_Upload</title>
</head>
<%System.out.println("Run family_s");

	boolean   flag = false;
	boolean   db_flag = false;
	boolean   rtn = false;
	boolean   dbCheck = false;
	knuforeign.si.SI2110 si = new knuforeign.si.SI2110();

	//System.out.println("get: "+ request.getParameter("rtnt_nam1"));
	
	try {
		flag = si.readGet(request);
	} catch (Exception e) {
		System.out.println(e);
	}
	System.out.println(flag);
	
		if(flag){
			try {
				db_flag = si.connectionDb("se",false);
		        if(db_flag){
		        	si.schl_year = "2022";
		        	si.schl_smst = "2";
		        	si.appl_numb = "700008";
		        	si.usequery(1, "r");
		        	si.readDb(3);
		        	if(si.is_rowcount.equals("0"))
		        		rtn = si.usequery(30, "u");
		        	
		        	else
		        		rtn = si.usequery(40, "u");
		        }
		        
		        
		        if(rtn)
		        	si.Commit();
		        else
		        	si.Rollback();
		        
		        db_flag = si.close();
			}catch(Exception e) {
				System.out.println(e);
				db_flag = si.close();
			}finally{
				if(db_flag) db_flag = si.close();
			}
		     
		}
	response.sendRedirect("plan.jsp");
	%>

<body>

</body>
</html>