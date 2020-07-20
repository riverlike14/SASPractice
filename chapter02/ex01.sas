data company;
	infile "C:\Users\User\Documents\My SAS Files\기업이미지.txt";
	input id 1-2 age 3 gender$ 4 item1 5 item2 6 item3 7;
	label id="고객번호" age="나이" gender="성별"
		item1="좋은 제품을 만들기 위해 노력한다"
		item2="소비자를 중요하게 여긴다"
		item3="신뢰할만한 기업이다";
run;
