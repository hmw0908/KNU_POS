	//var, let, const 상관없이 간편하게 var로 적용하였습니다.
	let innerHtmlText = "";
	var arr_dbname = new Array();
	var arr_dbid = new Array();
	//위와 같이 Array 형식으로 출력해주면 됩니다.
	
	//테스트용
	let test_arr = ["hello", 1, 2, false, "wow", "just", "test"];
	let test_id = [1,2,3,4,5,6,7];


	//--------------------------------------------------------
	//html 내용 보여주기
	function display_html(){
		innerHtmlText = "";

		for(var i = 0; i < test_arr.length; i++){
			if(i == 3)
				innerHtmlText += "<br/>"
			innerHtmlText += "<span class='col mb-5'><div class='card-body p-4'><div class='card h-100'><img class='card-img-top' src='./img/knu3.jpg' /><div class='card-body p-4'>";
			innerHtmlText += "<div class='text-center'>";
			//innerHtmlText += "<h5 class='fw-bolder'>여기에 DB 날짜값 필요</h5><input class='form-control' placeholder='주문내역이 없습니다.' id='dbname' value='" + i +"'' readonly >"+test_arr[i]+"</input><input class='form-control' placeholder='주문내역이 없습니다.' id='dbid' readonly >" + test_id[i] + "</input>";
			innerHtmlText += "<h5 class='fw-bolder'>여기에 DB 날짜값 필요</h5><input class='form-control' placeholder='주문내역이 없습니다.' id='dbname' value='" + test_arr[i] +"'' readonly ></input><input class='form-control' placeholder='주문내역이 없습니다.' id='dbid' value='" + test_id[i] + "'' readonly ></input>";
			innerHtmlText = innerHtmlText + "</div></div></div></div></span>";
		}	
		
		document.getElementById("dbConData").innerHTML = innerHtmlText;
	}
	

	
	//--------------------------------------------------------
	//만약 해당 페이지에도 사용자가 수정할 수 있게 콘텐츠를 추가한다면 사용할 함수입니다. (현재는 사용X)
	function sendRequest(){
		let name_str = "";
		let id_str = "";

		for(var i = 0; i < arr_dbname.length; i++){
			if(i == 0){
				name_str = arr_dbname[i];
				id_str = arr_dbid[i];
			}
			else{
				name_str = name_str + ","  + arr_dbname[i];
				id_str = id_str + "," + arr_dbid[i];
			}
		}
	}