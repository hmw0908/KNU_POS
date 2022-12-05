// table를 id 값으로 불러와준다
const table = document.getElementById("menuTable");

// main에서 클릭한 테이블의 이름을 가져와서 변수에 저장한다.
const temp = location.href.split("?");
const tableName = temp[1];

//누른 테이블의 이름을 적는다
const tableTitle = document.getElementById('tableName');
tableTitle.textContent = tableName;

// 순번을 정하기 위한 order과 총 가격을 저장할 sum , 이 모든 정보를 저장한 객체 menu_list를 만든다.
let order = 1;
var sum = 0;
const menuList = [];


// localStorage에 있는 값을 가져와서 안에 값이 있는지 확인
let outPut = localStorage.getItem(tableName); //Table1_menu_list
//console.log("db이름 : "+tableName);
if (outPut != null) {
    write();
}



//const basket = {}; // 주문 정보를 담고있는 딕셔너리


function menu_click(menuName) {
    // (요리 이름, 요리 가격)에서 , 기준으로 나누기
    let menu = document.getElementById(menuName).textContent.split("￦")
    // sum에 가격을 number형으로 만들어서 더하기
    //sum += Number(menu[1]);

    // tabel menu의 table에  열 값 추가
    //alert(menu[0].trim());
    try {

        let menu_name = menu[0].trim();
        let price = Number(menu[1]);

        let isMenuChecked = basket.hasOwnProperty(menu_name);

        if (isMenuChecked) // 이미 클릭했었다면
        {
            basket[menu_name] = {
                num: basket[menu_name].num + 1,
                name: menu_name,
                price: price,
                id: basket[menu_name].id
            };
        }
        else // 처음 클릭한거라면
        {
            basketId++;
            basket[menu_name] = {
                num: 1,
                name: menu_name,
                price: price,
                id: basketId
            };
        }
        basketTotalPrice += price;
    }
    catch (e) {
        alert(e);
    }
    table.innerHTML = "";
    updateTable();

    //menu_list에 값 저장
    menuList.push({ 'order': order, 'menuName': menu[0], 'count': '1', 'price': menu[1] })

    //menu_list 값을 localStorage에 저장
    order++;
    totalPriceview.value = sum;
    localStorage.setItem(tableName, JSON.stringify(menuList));

}
// 테이블을 업데이트해준다.
function updateTable() {

    for (var key in basket) {
        let row = `<tr align="center">
    <td>${basket[key].id}</td>
    <td>${basket[key].name}</td>
    <td>${basket[key].num}</td>
    <td>${basket[key].price}원</td> 
    </tr>`
        table.innerHTML += row;
    }

    let totalPriceview = document.getElementById("sum");
    totalPriceview.innerText = "   :  " + basketTotalPrice + "(원)";
}




//주문 초기화 누를시 내용 초기화 
function reset() {
    let table = document.getElementById("menuTable");
    table.innerHTML = "";
    totalPriceview.value = 0;
    sum = 0;
    localStorage.removeItem(tableName);
}


//주문 완료 버튼 누를 시 안에 내용과 초기화 
function complete() {

    let tableAreaName = tableName + "List";
    console.log("컴플리트 버튼 활성화 됨");

    url = encodeURI = "main.jsp?" + 1 + "?" + tableAreaName + "?" + tableName;
    location.href = url;
    console.log(url);
}
