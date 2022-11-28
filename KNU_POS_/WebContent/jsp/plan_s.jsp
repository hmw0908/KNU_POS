<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- <meta charset="utf-8" /> -->
<head>
<title>P_Upload</title>
</head>
<%System.out.println("Run plan_s");

	boolean   flag = false;
	boolean   db_flag = false;
	boolean   rtn = false;
	boolean   dbCheck = false;
	
	com.util.ClobUtil clob = new com.util.ClobUtil();
	
	knuforeign.si.SI2120 si = new knuforeign.si.SI2120();
	
	String selQuery = "";
	String param1 = request.getParameter("intr_text");
	

	try {
		flag = si.readGet(request);
	} catch (Exception e) {
		System.out.println(e);
	}
	
	
	System.out.println("flag1: " + si.intr_text);
	
		if(flag){
			try {
				db_flag = si.connectionDb("se",false);
		        if(db_flag){
		        	si.schl_year = "2022";
		        	si.schl_smst = "2";
		        	si.appl_numb = "700009";
		        	si.usequery(1, "r");
		        	si.readDb(3);
		        	if(si.is_rowcount.equals("0"))
		        		rtn = si.usequery(30, "u");
		        	
		        	else
		        		rtn = si.usequery(40, "u");
		        }

		        if(rtn && !si.intr_text.equals("")){
		    		selQuery =    "select intr_text from SI2120 ";
		    		selQuery += "\n where schl_year = '"+si.schl_year+"'	";
		    		selQuery += "\n   and schl_smst = '"+si.schl_smst+"' ";
		    		selQuery += "\n   and appl_numb = '"+si.appl_numb+"'    for update ";
		    		if(rtn){
		    			clob.setClob(si.con, si.intr_text, selQuery);	//CLOB 등록
		    		}
		        }
		    	 if(rtn && !si.appl_reas.equals("")){
			    	selQuery =    "select appl_reas from SI2120 ";
			    	selQuery += "\n where schl_year = '"+si.schl_year+"'	";
			    	selQuery += "\n   and schl_smst = '"+si.schl_smst+"' ";
			    	selQuery += "\n   and appl_numb = '"+si.appl_numb+"'    for update ";
			    	if(rtn){
			    		clob.setClob(si.con, si.appl_reas, selQuery);	//CLOB 등록
			    	}
		    	}
			    if(rtn && !si.stdy_plan.equals("")){
				    selQuery =    "select stdy_plan from SI2120 ";
				    selQuery += "\n where schl_year = '"+si.schl_year+"'	";
				    selQuery += "\n   and schl_smst = '"+si.schl_smst+"' ";
				    selQuery += "\n   and appl_numb = '"+si.appl_numb+"'    for update ";
				    if(rtn){
				    	clob.setClob(si.con, si.stdy_plan, selQuery);	//CLOB 등록
				    }
			    }
			    if(rtn && !si.grad_plan.equals("")){
				    selQuery =    "select grad_plan from SI2120 ";
				    selQuery += "\n where schl_year = '"+si.schl_year+"'	";
				    selQuery += "\n   and schl_smst = '"+si.schl_smst+"' ";
				    selQuery += "\n   and appl_numb = '"+si.appl_numb+"'    for update ";
				    if(rtn){
				    	clob.setClob(si.con, si.grad_plan, selQuery);	//CLOB 등록
				    }
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
		
	response.sendRedirect("provide_Info.jsp");
	%>

<body>

</body>
</html>