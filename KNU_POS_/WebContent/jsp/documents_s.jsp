<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    <% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File_Upload</title>
</head>
<%System.out.println("Run documents_s");

   
	/* String s_rgst = "";
	String s_id = "";
	String s_name = "";

	//��������,�б⼼��
	String s_year = "";
	String s_smst = "";

	s_rgst = s_rgst_numb;
	s_id = s_empl_idnt;
	s_name = s_empl_knam;
	s_year = s_schl_year;
	s_smst = s_schl_smst;

	if ("".equals(s_rgst_numb) || s_rgst_numb == null) {
		s_rgst = s_rgst_numb_check;
	}
	if ("".equals(s_empl_idnt) || s_empl_idnt == null) {
		s_id = s_empl_idnt_check;
	}
	if ("".equals(s_empl_knam) || s_empl_knam == null) {
		s_name = s_empl_knam_check;
	} */

	//si2130
	boolean   flag = false;
	boolean   db_flag = false;
	boolean   rtn = false;
	boolean   dbCheck = false;

	boolean   db_flag2 = false;
	boolean   rtn2 = false;
	
	boolean   db_flag3 = false;
	boolean   rtn3 = false;
	
	
    int sizeLimit = 20 * 1024 * 1024;		//���� ������ ���� - 1�ް�
	//int sizeLimit = 1024;		//���� ������ ���� - 1�ް�
	//String savePath = "/home/as10g/data/edine/knumis/upload";		//������ ��� ����
	String savePath = "E:/project/app2/WebContent/upload";	//���ÿ� ��� ����
	String upld_gubn = "Y";
	String[] fileNameCols = null;
	String fileName = "";
	String selQuery = "";
	String objt_file1 = "";
	String objt_file2 = "";
	String objt_file3 = "";
	String objt_file4 = "";
	String objt_file5 = "";
	String objt_file6 = "";
	String objt_file7 = "";

	com.util.BlobUtil bu = new com.util.BlobUtil(); //blob ������ Ÿ���� ����� �ϴ� Ŭ����


	knuforeign.si.SI2130 si = new knuforeign.si.SI2130();

	/* flag = si.readGet(request); */
	try {
		flag = si.readFileGet(request, savePath, sizeLimit); //������ ���ε� �Ҽ� �ְ� ������Ʈ(��û)�� �޴´�.
		//flag = si.readGet(request);
	} catch (Exception e) {
		System.out.println(e);
		upld_gubn = "N";
	}
	
	//flag�� true ������ �� ����
	if(flag){
		//�ܱ���������
		if(!si.file_name1.equals("")) { 
			objt_file1 = si.file_name1;
			fileNameCols = si.file_name1.split("\\\\");
			fileName = fileNameCols[fileNameCols.length - 1];
			si.file_name1 = fileName.substring(15, fileName.length());	//���� ���ϸ� ���ϸ� �ʵ忡 �����Ѵ�. 20060912171451_XXXXX.jpg �� ���·� ���ϸ��� ���´�.
		}
		//�ܰ�����
		if(!si.file_name2.equals("")) { 
			objt_file2 = si.file_name2;
			fileNameCols = si.file_name2.split("\\\\");
			fileName = fileNameCols[fileNameCols.length - 1];
			si.file_name2 = fileName.substring(15, fileName.length());	//���� ���ϸ� ���ϸ� �ʵ忡 �����Ѵ�. 20060912171451_XXXXX.jpg �� ���·� ���ϸ��� ���´�.
		}
		//������������
		if(!si.file_name3.equals("")) { 
			objt_file3 = si.file_name3;
			fileNameCols = si.file_name3.split("\\\\");
			fileName = fileNameCols[fileNameCols.length - 1];
			si.file_name3 = fileName.substring(15, fileName.length());	//���� ���ϸ� ���ϸ� �ʵ忡 �����Ѵ�. 20060912171451_XXXXX.jpg �� ���·� ���ϸ��� ���´�.
		}
		
		
		//���ϸ� update_start
		if(!si.file_name1.equals("") || !si.file_name2.equals("") || !si.file_name3.equals("")){
			try {
				db_flag = si.connectionDb("se",false);
		        if(db_flag){
		        	si.SCHL_YEAR = "2022";
		        	si.SCHL_SMST = "2";
		        	si.SQNC_NUMB = "1";
		        	si.APPL_NUMB = "1000000000";
		        	si.FILE_NAME = si.file_name1;
		        	rtn = si.usequery(30, "u");
		        }
		        
		        if(rtn)
		        	si.Commit();
		        else
		        	si.Rollback();
		        
		        
		        if(rtn && !si.file_name1.equals("")){
		    		selQuery =    "select FILE_DATA from SI2130 ";
		    		selQuery += "\n where schl_year = '"+si.SCHL_YEAR+"'	";
		    		selQuery += "\n   and schl_smst = '"+si.SCHL_SMST+"' ";
		    		selQuery += "\n   and appl_numb = '"+si.APPL_NUMB+"'    for update ";
		    		if(rtn){
		    			bu.setBlob(objt_file1, savePath, selQuery);	//BLOB ���
		    		}
		    		if(rtn){
		    			si.Commit();
		    		} else {
		    			si.Rollback();
		    		}
		    	}
		        if(rtn && !si.file_name2.equals("")){
		    		selQuery =    "select FILE_DATA from SI2130 ";
		    		selQuery += "\n where schl_year = '"+si.SCHL_YEAR+"'	";
		    		selQuery += "\n   and schl_smst = '"+si.SCHL_SMST+"' ";
		    		selQuery += "\n   and appl_numb = '"+si.APPL_NUMB+"'    for update ";
		    		if(rtn){
		    			bu.setBlob(objt_file2, savePath, selQuery);	//BLOB ���
		    		}
		    		if(rtn){
		    			si.Commit();
		    		} else {
		    			si.Rollback();
		    		}
		    	}
		        if(rtn && !si.file_name3.equals("")){
		    		selQuery =    "select FILE_DATA from SI2130 ";
		    		selQuery += "\n where schl_year = '"+si.SCHL_YEAR+"'	";
		    		selQuery += "\n   and schl_smst = '"+si.SCHL_SMST+"' ";
		    		selQuery += "\n   and appl_numb = '"+si.APPL_NUMB+"'    for update ";
		    		if(rtn){
		    			bu.setBlob(objt_file3, savePath, selQuery);	//BLOB ���
		    		}
		    		if(rtn){
		    			si.Commit();
		    		} else {
		    			si.Rollback();
		    		}
		    	}
		        
		        db_flag = si.close();
			}catch(Exception e) {
				System.out.println(e);
				db_flag = si.close();
			}finally{
				if(db_flag) db_flag = si.close();
			}
		     
		}
	}
	

	
	
	System.out.println(si.file_name1);
	System.out.println(si.file_name2);
	System.out.println(si.file_name3);
	
	%>

<body>

</body>
</html>