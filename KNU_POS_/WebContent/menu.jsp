<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        textarea{
            size: 10px;
        }
    
        button{
            background-color: rgb(197, 197, 197);
            border: solid 2px grey;
            border-radius: 12px;
            color: white;
            height: 50px;
            width: 200px;
            
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 10px;
            margin: 4px 2px;
            cursor: pointer;
        }
        div.view{
        border: 1px solid #003458;
        height: 700px;
      }
        
        div.menu_list {
            position: relative;
            height: 50px;
            width: 30%;
            float: left;
            box-sizing: border-box;
            background: #8977ad;
        }
        div.right {
            height: 500px;
            width: 70%;
            float: right;
            box-sizing: border-box;
            background: #ece6cc;
        
        }
        h1{
            padding: 10px;
        }
      
      // 주문완료와 초기화 버튼이 주문 테이블 맨 밑에 고정되게 하였다.
      
        div.footer {
            position :absolute;
            bottom:0;
            padding: 10px;
            width:95%;
            border: 2px solid #000000;
            height: 50px;
        }
    

    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=request.getParameter("user") %></title>
</head>
<body>
    <h1 name="tableName" id="tableName" cols="10" rows="10"> 테이블 이름 </h1>
    <div class = "view">
    <div class="menu_list"  style=" height :100%"> 
        <div class="menuTable"  style="overflow:scroll; max-height : 625px;   border: 2px solid #000000 ">
            <table border="1" width =100% >
                <!-- 테이블의 헤더 즉 열의 제목 -->
                    <th>순번</th>  
                    <th>메뉴</th>
                    <th>수량</th>
                    <th>가격</th>
                <tbody id="menuTable" >             
                </tbody>
            </table>
        </div>
        <div class="footer">
            <input type="text" id="sum"> 총 가격</input>
            <button id="btn_com" style="width: 100px;" onclick="complete()">주문 완료</button>
            <button id="btn_reset" style="width: 100px;" onclick="reset()">주문 초기화</button>
        </div>
    </div>
    

    <div class="Right" >
        <button id="cms"  onclick="menu_click(this.id)"> 소라빵,2500</button>
        <button id="gms" onclick="menu_click(this.id)"> 단팥빵,1500</button>
        <button id="kds" onclick="menu_click(this.id)"> 소보로빵,2000</button>
        <button id="gts" onclick="menu_click(this.id)"> 크림빵,1800</button>
    </div>

    </div>
    
    <script src="menu.js"></script>
</body>
</html>