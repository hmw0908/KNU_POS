<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
    <title>KNU_POS_관리자페이지</title>
    <style>
      #title{

      }


      button{
        background-color: rgb(197, 197, 197);
        border: solid 2px grey;
        border-radius: 12px;
        color: white;
        height: 50px;
        width: 235px;
        
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
        margin: 4px 2px;
        cursor: pointer;
      }
    </style>
  </head>
  <body>
  <script src="main.js"></script>
  	
      <h1 id="title">관리자</h1>
      <h1 id="title"><%=request.getParameter("name") %></h1>
    <table >
      <th>   <button type="button" id="Table1" onclick="go_menu(this.id)">Table1</button></th>
      <th>   <button type="button"  id="Table2" onclick="go_menu(this.id)">Table2</button> </th>
      <th>  <button type="button"  id="Table3" onclick="go_menu(this.id)">Table3</button></th>
      
      <tr> <!-- textarea 영역  -->
        <td><textarea name="" id="Table1List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table2List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table3List" cols="25" rows="10" readonly ></textarea></td>
      </tr>
    </table>

    <table >
      <th>   <button type="button"  id="Table4" onclick="go_menu(this.id)">Table4</button></th>
      <th>   <button type="button" id="Table5" onclick="go_menu(this.id)">Table5</button> </th>
      <th>  <button type="button"  id="Table6" onclick="go_menu(this.id)">Table6</button></th>
      
      <tr> <!-- textarea 영역  -->
        <td><textarea name="" id="Table4List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table5List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table6List" cols="25" rows="10" readonly ></textarea></td>
      </tr>
    </table>

<!--     <table >
      <th>   <button type="button"  id="Table7" onclick="go_menu(this.id)">Table7</button></th>
      <th>   <button type="button"  id="Table8" onclick="go_menu(this.id)">Table8</button> </th>
      <th>  <button type="button"  id="Table9" onclick="go_menu(this.id)" >Table9</button></th>
      
      <tr> textarea 영역 
        <td><textarea name="" id="Table7List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table8List" cols="25" rows="10" readonly ></textarea></td>
        <td><textarea name="" id="Table9List" cols="25" rows="10" readonly ></textarea></td>
      </tr>
    </table> -->
     <script src="main.js"></script>
  </body>
</html>