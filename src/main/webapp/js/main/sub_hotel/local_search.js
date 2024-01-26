$(document).ready(function() {
	var cityTitle = $('#cityTitle');
	var entireRegion = $('#entireRegion');
	var regionData = {
		'서울': ['강남/역삼/삼성', '신사/청담/압구정', '서초/교대/사당', '잠실/송파/강동', '을지로/명동/중구/동대문구', '서울력/이태원/용산', '종로/인사동', '홍대/합정/마포/서대문', '여의도', '구로/신도림/금천', '김포공항/염창/강서', '건대입구/성수/왕십리', '성북/강북/도봉'],
		'부산': ['해운대/마린시티', '벡스코/센텀시티', '송정/기장/정관', '광안리/경성대', '부산역', '자갈치/남포동/영도', '송도/다대포', '서면/연산/범일', '동래/온천/금정구', '사상/강서/김해공항'],
		'제주': ['제주시/제주국제공항', '서귀포시/모슬포', '애월/한림/협재', '중문', '표선/성산', '함덕/김녕/세화'],
		'경기': ['가평/청평/양평', '수원/화성', '고양/파주/김포', '의정부/포천/동두천', '용인/동탄', '오산/평택', '남양주/구리/성남/분당', '이천/광주/여주/하남', '부천/광명/시흥/안산', '안양/의왕/군포'],
		'인천': ['송도/소래포구', '인천국제공항/강화/을왕리', '영종도/월미도', '주안/간석/인천시청', '청라/계양/부평'],
		'강원': ['속초/양양/고성', '춘천/인제/철원', '강릉', '평창/정선/영월', '동해/삼척/태백', '홍천/횡성/원주'],
		'경상': ['대구/구미/안동/문경', '경주', '울산/양산', '거제/통영', '포항/영덕/울진/청송', '창원/마산/진해/김해/부곡', '남해/사천/하동/진주'],
		'전라': ['전주/완주', '광주/나주/함평', '여수', '순천/광양/담양/보성/횡성', '남원/부안/정읍/고창/무주/구례', '군산/익산', '목포/신안/영광/진도/고흥/영암/완도/강진'],
		'충청': ['대전/세종', '천안/아산/도고', '안면도/태안/서산/덕산', '보령/대천/부여/공주/금산', '청주/음성/진천', '충주/제천/단양/괴산/증평']
	};

	function updateRegion(city) {
		var regions = regionData[city] || [];
		var regionListHtml = '';
		regions.forEach(function(region) {
			// 각 세부 지역에 대한 URL을 업데이트하고 HTML 문자열을 생성합니다.
			regionListHtml += '<li class="RegionRightList_subItem__GeA0p">' +
				'<a href="/localHotel.do?entireRegion=' + encodeURIComponent(region) + '" ' +
				'class="RegionRightList_link__27q2-">' + region + '</a></li>';
		});
		// 생성된 HTML 문자열로 세부 지역 목록을 업데이트합니다.
		$('.RegionRightList_subContainer__XH-G-').html(regionListHtml);
		cityTitle.text(city);
	}

	$('.RegionLeftList_item__PPidA').click(function() {
		var city = $(this).text();
		// 모든 항목에서 'RegionLeftList_active__3x73j' 클래스를 제거합니다.
		$('.RegionLeftList_item__PPidA').removeClass('RegionLeftList_active__3x73j');

		// 클릭된 항목에만 'RegionLeftList_active__3x73j' 클래스를 추가합니다.
		$(this).addClass('RegionLeftList_active__3x73j');
		updateRegion(city);
	});
	// 초기 로드 시 서울이 클릭된 상태로 시작
	var initialCity = '서울';
	$('.RegionLeftList_item__PPidA:contains("' + initialCity + '")').addClass('RegionLeftList_active__3x73j');
	updateRegion(initialCity);
	entireRegion.click(function() {
		var entireRegion = $(this).find(cityTitle).text();
		console.log("클릭한 전체지역 : " + entireRegion);
		// AJAX를 사용하여 entireRegionValue를 localHotel.do로 전송합니다.
		$.ajax({
			type: "GET", // 또는 "POST", 서버 설정에 따라 변경할 수 있습니다.
			url: "/localHotel.do",
			data: {
				entireRegion: entireRegion
			},
			success: function(response) {
				// 서버로부터의 응답을 처리합니다.
				console.log('성공 : ' + entireRegion);

				window.location.href = "/localHotel.do?entireRegion=" + encodeURIComponent(entireRegion);

			},
			error: function(error) {
				// 에러가 발생했을 때 처리합니다.
				console.log(error);
			}
		});


	});
});