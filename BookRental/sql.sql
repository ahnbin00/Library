------------------------------------------------------------------------------------book
create table book(
seq number(20) not null,
isbn varchar2(30) primary key not null,
title varchar2(100) not null,
writer varchar2(100) not null,
publisher varchar2(50) not null,
content varchar2(1000) not null,
image varchar2(200) not null,
state varchar2(2) default 'Y' not null
)

select * from book order by seq
select * from book
select * from book where isbn='9791191859379';

delete from book where isbn='9791158363796'; 

drop table book

update book set state='N' where isbn='9791191859379';
update book set state='N' where isbn='9788998441012';
update book set state='N' where isbn='9788956608556';

select count(*) from book where title or writer or publisher like '%'||#{searchKeyword}||'%'

insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791191859379','인생의 역사','신형철','난다','우리 문학을 향한 "정확한 사랑"이자 시대를 읽는 탁월한 문장, 평론가 신형철이 4년 만의 신작으로 돌아왔다.','https://image.aladin.co.kr/product/30328/61/cover500/k362839230_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791186602898','아무튼, 사전','홍한별','위고','무한에 가까운 단어들의 목록으로 쌓아올린 사전의 세계를 섬세하게 어루만진 <아무튼, 사전>은 "아무튼" 시리즈 52번째 책이자 20년 경력의 출판 번역가 홍한별의 첫 단독 에세이다.','https://image.aladin.co.kr/product/30255/30/cover500/k012839504_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791165733049','우리 집 고양이','타카하시 카즈에','천개의바람','바람 그림책 130권. 어느 봄날, 우리 집에 고양이가 왔다.','https://image.aladin.co.kr/product/30301/88/cover500/k802839930_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791167070791','인생의 허무를 어떻게 할 것인가','김영민','사회평론아카데미','볼프 비어만이 말했다. "이 시대에 희망을 말하는 자는 사기꾼이다. 그러나 절망을 설교하는 자는 개자식이다." 사기꾼이나 개자식이 되지 않기 어려운 세상, 김영민은 희망도 절망도 없이 건조하고 담대하게 삶을 관조한다.','https://image.aladin.co.kr/product/30382/55/cover500/k272830862_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788949162485','랑랑 형제 떡집','김리리','비룡소','2022년 상반기, 누적 판매 100만 부(시리즈 전체)를 돌파하며 국내 창작 동화 시리즈의 새로운 기록을 써나가고 있는 "만복이네 떡집" 일곱 번째 이야기.','https://image.aladin.co.kr/product/30374/10/cover500/8949162482_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788964964811','우당탕탕 시소','표영민','토토북','토끼와 코끼리가 펼치는 팽팽한 시소 대결을 통해 놀이의 순수한 즐거움을 흠뻑 느낄 수 있는 그림책이다.','https://image.aladin.co.kr/product/30329/13/cover500/8964964810_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791160269543','봉숭아 할매','장준영','어린이작가정신','도심 어느 귀퉁이, 익숙한 풍경 속에서 유쾌한 우리의 이웃이자 누군가의 현재와 미래를 따뜻하게 묘사한다.','https://image.aladin.co.kr/product/30367/39/cover500/k272839756_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791197603952','난 할아버지가 될 거야!','시그네 비슈카','작은코도마뱀','2022 볼로냐 라가치 The BRAW Amazing Bookshelf 선정 도서.','https://image.aladin.co.kr/product/30369/51/cover500/k782839859_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791169252959','안녕, 나의 루루 ','이소영','시공주니어','레오 에른츠라는 다소 이국적인 인물을 통해 어린 레오와 어른 에른츠의 두 세계를 담은 특별한 작품이다.','https://image.aladin.co.kr/product/30385/4/cover500/k142830867_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791158363796','Non Stop; ''아무것도 아닌''을 위하여','김서정','책읽는곰','새도, 나비도, 생쥐도 사라지고, 풀과 나뭇잎은 시들어 버리고, 꽃들은 기억 속으로 사라진 세상.','https://image.aladin.co.kr/product/30354/49/cover500/k082839759_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788925577456','하나도 안 무서워! ','브리타 테큰트럽','주니어RHK(주니어랜덤)','볼로냐국제아동도서전 라가치상을 두 차례나 수상한 브리타 테켄트럽의 그림책으로, "큰 고슴도치와 작은 고슴도치 이야기" 시리즈의 두 번째 작품이다.','https://image.aladin.co.kr/product/30350/56/cover500/8925577453_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791165346249','나는 돌멩이','사카모토 치아키','올리','사카모토 치아키 작가가 실제 길고양이와의 인연에서 영감을 얻어 그린 그림책이다.','https://image.aladin.co.kr/product/30295/4/cover500/k182839827_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791165813840','판다 동물원','오노 고헤이','스푼북','《판다 동물원》에는 재미있는 그림이 가득하다. 초롱초롱한 눈빛을 빛내며 골목골목 판다 모집 홍보 포스터를 붙이고 다니는 원장님의 모습과 심드렁한 표정으로 판다 분장을 하고 오디션을 찾은 온갖 동물들의 모습이 웃음을 자아낸다.','https://image.aladin.co.kr/product/30316/9/cover500/k042839134_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791165882099','나는 뿡, 너는 엉!','존 케인','북극곰','존 케인의 히트작 <나는 오, 너는 아!>를 잇는 두 번째 그림책이다.','https://image.aladin.co.kr/product/30255/20/cover500/k572839503_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788956186214','나는','이한비','반달(킨더랜드)','사람을 위해 희생되는 존재에 대한 이야기를 담은 그림책이다. 바로 실험동물이다. 우리나라에서만 하루 평균 1만여 마리의 동물이 동물 실험에 동원되고 있다. 그중 실험견 ‘비글’의 입을 빌려 실험동물이 처한 현실을 담담히 그려내고 있다.','https://image.aladin.co.kr/product/30298/11/cover500/8956186219_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791163142676','어흥 냠냠 코코 ','이서영','보리','숲속 언덕에서 홀로 지내던 사자. 어느 날 뜻밖에 아기 동물들을 돌보게 된다. ','https://image.aladin.co.kr/product/30308/56/cover500/k422839032_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788936438838','아버지의 해방일지','정지아','창비','정지아의 이 장편소설은 추석연휴와 함께 독자에게 닿기 시작했다.','https://image.aladin.co.kr/product/30048/51/cover500/8936438832_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788954699914','하얼빈','김훈','문학동네','많은 독자가 김훈의 칼의 노래를 사랑하는 것은, 그의 소설이 불가능에 가까운 승리를 이룬 한 인간의 위대함이 아닌, 그 위대함을 향해 나아가는 동안 한 인간의 마음 속에서 일어날 수밖에 없었던 격랑을 묘사하고 있기 때문이다.','https://image.aladin.co.kr/product/29857/0/cover500/895469991x_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791167901354','랑과 나의 사막','천선란','현대문학','당대 한국 문학의 가장 현대적이면서도 첨예한 작가들을 선정, 신작 시와 소설을 수록하는 월간 『현대문학』의 특집 지면 현대문학 핀 시리즈의 마흔세 번째 소설선, 천선란의 『랑과 나의 사막』이 출간되었다.','https://image.aladin.co.kr/product/30395/18/cover500/k572830160_2.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788954680004','이토록 평범한 미래','김연수','문학동네','9년 만에 출간된 김연수 소설집. 새카만 밤하늘을 향해 노를 젓는 두 사람을 본다. 새카만 밤하늘 정 가운데의 동그란 달을 향하는 사람들. 김승옥문학상을 수상하기도 한 단편 <진주의 결말>의 등장인물 유진주는 한때 범죄심리학자인 내가 했던 말을 인용해 질문을 던진다.','https://image.aladin.co.kr/product/30211/80/cover500/8954680003_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791161571188','불편한 편의점 (40만부 기념 벚꽃 에디션)','김호연','나무옆의자','70만 독자의 지친 하루를 위로한 얼웨이즈 편의점은 오늘도 문을 연다. 서울역 노숙인이던 독고가 편의점의 야간 아르바이트 직원으로 일하면서 시작되는 1편의 이야기 이후 1년 반이 흘렀다.','https://image.aladin.co.kr/product/29045/74/cover500/s792838461_3.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788954688994','나주에 대하여','김화진','문학동네','한 사람을 세밀하게 묘사해내고 그에 따른 정서의 변화를 놓치지 않고 따라간 문장들은 정확하고 또 때론 날카로웠다는 심사평과 함께 2021년 문화일보 신춘문예에 당선되며 우리 앞에 등장한 김화진 소설가의 첫 소설집.','https://image.aladin.co.kr/product/30347/9/cover500/8954688993_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788954688796','가녀장의 시대','이슬아','이야기장수','슬아는 아침 일찍 일어나서 요가로 하루를 시작한다. 피고용인인 복희와 웅이에게 월급과 복리후생비 등을 지급하려면 우선 스스로를 잘 돌봐야 한다.','https://image.aladin.co.kr/product/30261/10/cover500/8954688799_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788998441012','모순','양귀자','쓰다','작가 양귀자가 1998년 펴낸 네 번째 장편소설로, 책이 나온 지 한 달 만에 무서운 속도로 베스트셀러 1위에 진입, 출판계를 놀라게 하고 그해 최고의 베스트셀러로 자리 잡으면서 ‘양귀자 소설의 힘’을 다시 한 번 유감없이 보여준 소설이다.','https://image.aladin.co.kr/product/2584/37/cover500/8998441012_2.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791191114225','작별인사 (밤하늘 에디션)','김영하','복복서가','<작별인사>는 한 소년이 작은 새의 죽음을 발견하는 장면으로 시작하지만 소설 속 인물들의 시선은 지구에서의 짧은 생을 넘어 우주적 시공간으로 확장된다.','https://image.aladin.co.kr/product/30083/38/cover500/k412839475_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791191824001','지구 끝의 온실','김초엽','자이언트북스','김초엽 첫 장편소설. 더스트로 멸망해버린 세계에서 이야기가 시작된다. 1장은 2129년 더스트생태연구센터에서 덩굴식물 모스바나에 대해 연구하는 아영의 이야기.','https://image.aladin.co.kr/product/27692/63/cover500/s772839857_2.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788956608556','구의 증명','최진영','은행나무','사랑하는 연인의 갑작스러운 죽음 이후 겪게 되는 상실과 애도의 과정을 통해 삶의 의미 혹은 죽음의 의미를 되묻는 소설이다.','https://image.aladin.co.kr/product/5527/50/cover500/8956608555_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791197377143','어서 오세요, 휴남동 서점입니다 (여름 에디션)','황보름','클레이하우스','서울 어디에나 있을 것 같은 동네의 후미진 골목길. 오가는 사람도 많지 않은 가정집들 사이에 평범한 동네 서점 하나가 들어선다.','https://image.aladin.co.kr/product/29583/72/cover500/k762838363_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791190174756','칵테일, 러브, 좀비 (리커버)','조예은','안전가옥','안전가옥 쇼-트 시리즈의 두 번째 책으로, 조예은 작가의 단편집이다. 안전가옥 오리지널 시리즈의 첫 책 <뉴서울파크 젤리장수 대학살>에서 탄탄한 구성의 호러 스릴러를 선보였던 작가의 연출력은 단편집에서 더욱 다양한 색채로 빛을 발한다.','https://image.aladin.co.kr/product/29543/72/cover500/k502837053_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9788954681179','밝은 밤','최은영','문학동네','그날 할머니와 나는 목성을 봤다. 목성의 흐린 줄무늬를 봤다. 할머니는 아이처럼 감탄하면서 접안렌즈에서 오래도록 시선을 떼지 못했다.','https://image.aladin.co.kr/product/27541/91/cover500/k312835925_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),
'9791165341909','달러구트 꿈 백화점 1 (레인보우 에디션)','이미예','팩토리나인','이미예 장편소설. 잠들어야만 입장할 수 있는 독특한 마을. 그곳에 들어온 잠든 손님들에게 가장 인기 있는 곳은, 온갖 꿈을 한데 모아 판매하는 달러구트의 꿈 백화점이다.','https://image.aladin.co.kr/product/29895/53/cover500/k472838938_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133690695','주술회전 01',
'아쿠타미 게게','서울미디어코믹스/DCW','어느 날, 학교에 잠들어 있던 주물(呪物)의 봉인이 풀리면서 괴물이 나타나고 이타도리는 미처 도망치지 못한 선배를 구하기 위해 학교 건물로 뛰어드는데?!',
'https://image.aladin.co.kr/product/20575/57/cover500/e082535056_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133690701','주술회전 02',
'아쿠타미 게게','서울미디어코믹스/DCW','소년원 안에서 갑자기 주태(呪胎)가 발생. 미처 도망치지 못한 사람을 구조하기 위해, 이타도리를 비롯한 주술고전 1학년들이 파견된다. 그러나 특급 주령으로 변한 주태의 습격을 받고 위기에 처한 일행. 이타도리는 스쿠나와 몸을 바꿔 주령을 쓰러뜨리려 시도하는데…?!',
'https://image.aladin.co.kr/product/20575/57/cover500/ek69263587_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133690718','주술회전 03',
'아쿠타미 게게','서울미디어코믹스/DCW','후시구로와 쿠기사키 앞에 나타난 주술고전 교토쿄의 토도 아오이와 젠인 마이. 좋아하는 여성 타입을 물어보는 토도에게 후시구로가 던진 대답은? 한편, 주련 중인 이타도리는 실전에서 단련하기 위해 주령이 사건을 일으킨 현장으로 향하는데…?!',
'https://image.aladin.co.kr/product/20575/57/cover500/e072535056_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133694822','주술회전 04',
'아쿠타미 게게','서울미디어코믹스/DCW','저주에 의한 살인사건을 쫓던 이타도리는 현장에 있던 준페이와 만나 의기투합한다. 그런데 정작 준페이는 사건의 범인인 주령, 마히토에게 심취해 있었다. 마히토는 그런 준페이를 이용해 이타도리와 싸움을 붙이려 획책하고, 준페이는 그 술수에 넘어가는데….',
'https://image.aladin.co.kr/product/21677/79/cover500/ek51263510_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133694839','주술회전 05',
'아쿠타미 게게','서울미디어코믹스/DCW','첫날 시작된 단체전은 구획 안에 풀려 있는 2급 주령을 먼저 퇴치하는 쪽이 승리하는 것이었다',
'https://image.aladin.co.kr/product/21677/79/cover500/ek68263553_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133694846','주술회전 06',
'아쿠타미 게게','서울미디어코믹스/DCW','교류회를 틈타 이타도리를 공격하는 교토교 팀. 그런 상황에 마히토가 이끄는 주령과 주저사들이 난입한다. ',
'https://image.aladin.co.kr/product/21677/79/cover500/ek65263607_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791133699506','주술회전 07',
'아쿠타미 게게','서울미디어코믹스/DCW','주술 고전은 특급 주령인 하나미 일당의 습격을 물리치지만, 스쿠나의 손가락과 특급 주물인 주태구상도(呪胎九相圖)를 빼앗긴다',
'https://image.aladin.co.kr/product/23372/8/cover500/e282537369_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137308077','주술회전 08',
'아쿠타미 게게','서울미디어코믹스/DCW','이야기는 고죠와 게토가 주술고전 2학년이었을 무렵에 벌어진 사건이 있던 때로 거슬러 올라간다.',
'https://image.aladin.co.kr/product/25700/51/cover500/e262537255_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137310087','주술회전 09',
'아쿠타미 게게','서울미디어코믹스/DCW','죠를 최강에 이르게 만들고 게토를 모반으로 이끈 지난날의 사건, 그 결말은?',
'https://image.aladin.co.kr/product/26203/24/cover500/e532538878_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137311084','주술회전 10',
'아쿠타미 게게','서울미디어코믹스/DCW','움직이는 육체를 손에 넣기 위해 주령 측과 내통하고 있던 일명 ‘메카마루’, 무타 코키치….',
'https://image.aladin.co.kr/product/26203/24/cover500/e522538878_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137311701','주술회전 11',
'아쿠타미 게게','서울미디어코믹스/DCW','시부야 역 지하 승강장에 꽉 들어찬 일반인과 개조 인간들. 도망칠 곳이 없는 참혹한 상황 속에서 고죠는 여전히 주령 측을 압도한다.',
'https://image.aladin.co.kr/product/26366/67/cover500/e142538477_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137312371','주술회전 12',
'아쿠타미 게게','서울미디어코믹스/DCW','젠인 토우지의 강령이 예상치 못한 사태에 빠지며, 혼돈을 더해 가는 시부야 사변. 지하 승강장에 있는 게토를 공격하는 메이메이와 보조 감독의 심각한 피해에 분노하는 나나미.',
'https://image.aladin.co.kr/product/26673/62/cover500/e362538286_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137313293','주술회전 13',
'아쿠타미 게게','서울미디어코믹스/DCW','서운 주령으로 변모한 다곤. 그 끝없는 주력의 격류가 나오비토, 마키, 나나미를 덮친다.',
'https://image.aladin.co.kr/product/26905/3/cover500/e482538292_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137314788','주술회전 14',
'아쿠타미 게게','서울미디어코믹스/DCW','일시적 자유를 손에 넣은 스쿠나의 잔학한 행동으로 인해 시부야 시내에 심각한 피해가 발생한 가운데, 주저사의 기습으로 치명상을 입은 후시구로는 최후의 수단에 나선다.',
'https://image.aladin.co.kr/product/27141/73/cover500/e412538408_1.jpg');
insert into book(seq,isbn,title,writer,publisher,content,image) values((select nvl(max(seq), 0)+1 from book),'9791137315761','주술회전 15',
'아쿠타미 게게','서울미디어코믹스/DCW','스쿠나의 대량 살인, 나나미 켄토의 죽음. 그리고 마히토의 손에 의해, 쿠기사키마저! 자신의 죄의 무게로 인해 이타도리의 마음이 한계를 넘어선 그때, 친한 친구의 위기 상황에 그 남자가 달려 온다.',
'https://image.aladin.co.kr/product/27324/60/cover500/e572538416_1.jpg');

select count(*) from book;
--------------------------------------------------------------------------------------------member
create table member(
id varchar2(10) primary key,
password varchar2(10),
name varchar2(10),
phone varchar2(20),
mail varchar2(50),
address2 varchar2(100),
address_detail varchar2(50)
)

select * from member

insert into member(id,password,name) values('admin','1234','관리자');
insert into member(id,password,name) values('hong','1234','홍길동')

drop table member

---------------------------------------------------------------------------------------------rental
create table rental(
id varchar2(20) not null, --member table
isbn varchar2(14) not null, --book table
title varchar2(100) not null, --book table
rentday date default sysdate,
returnday date default sysdate+14,
rentalseq number(10),
restday varchar2(3),
primary key(isbn) -- 두 개의 필드 조합으로 기본키 설정
);

update rental set restday = ceil(returnday-sysdate);

-- 레코드 삽입
insert into rental(id,isbn,title,rentalseq) 
values('hong','9791191859379','인생의 역사',(select nvl(max(rentalseq), 0)+1 from rental));
insert into rental(id,isbn,title,rentalseq) 
values('hong','9788998441012','모순',(select nvl(max(rentalseq), 0)+1 from rental));
insert into rental(id,isbn,title,rentalseq) 
values('hong','9788956608556','구의 증명',(select nvl(max(rentalseq), 0)+1 from rental));

select id,isbn,title,TO_CHAR(rentday,'YYYY-MM-DD'),TO_CHAR(returnday,'YYYY-MM-DD') from rental

select * from rental 

delete from rental

delete from rental where isbn='9791167070791'

select * from rental

drop table rental

insert into rental(id,isbn,title,rentalseq) values('hong','9791137315761','주술회전 15',(select nvl(max(seq), 0)+1 from book));

select returnday+7 from rental where rentalseq=1

update rental set returnday=(select returnday+7 from rental where rentalseq=1) where rentalseq=1

select * from rental
-------------- restday 구하기
select rentday-returnday as restday from rental where isbn = '9791137315761';

	select * from
	(select rownum as rnum,B.*
	from(select seq,isbn,title,writer,publisher,content,image,state from book order by seq desc) B)
	where rnum between 1*10-9 and 1*10
			AND TITLE LIKE '%'||'주술'||'%' 
			
---------------------------------------------------------------------------------- qna
create table qna(
seq number(4) primary key, -- 글 번호
id varchar2(10) not null, -- 아이디
name varchar2(10),
title varchar2(200), -- 글 제목
content varchar2(1000), -- 글 내용
regdate date default sysdate, -- 작성일
state varchar2(2) default 'N' not null, -- 상태 (대기중 또는 답변완료)
cnt number(5) default 0 -- 조회수
)

drop table qna

select * from qna

insert into qna(seq,id,name,title,content,state) values((select nvl(max(seq), 0)+1 from qna),'hong','홍길동','1번째 게시글','문의드립니다.','N')

---------------------------------------------------------------------------------- replyqna
create table replyqna(
seq number(5) not null,
replyseq number(5) not null,-- qna테이블에서 seq를 참고하는 필드
name varchar2(30) not null,--댓글 남긴 사람 이름
content varchar2(2000) not null,-- 본문내용
regdate date default sysdate,
id varchar2(10), -- 댓글 수정 삭제 인증을 위한 userid추가
primary key(seq,replyseq)
)

select count(*) from replyqna;

drop table replyqna

--------------------------------------------------------------------------------- wishbook
create table wishbook(
seq number(20) primary key, -- 신청순서
id varchar2(10) not null, -- 신청자 아이디
isbn varchar2(30) not null, -- isbn
title varchar2(100) not null, -- 제목
writer varchar2(100) not null, -- 저자
publisher varchar2(50) not null, -- 출판사
image varchar2(200) not null, -- 표지
regdate date default sysdate, -- 신청일
state varchar2(2) default 'W' not null -- 기본상태: w(대기 중)
)

insert into wishbook(id,seq,isbn,title,writer,publisher,content,image) 
values();
insert into wishbook(seq,id,isbn,title,writer,publisher,image,regdate) 
values((select nvl(max(seq), 0)+1 from wishbook),'kim','1214545555','안녕','김청구','우리집','123454','2022-12-04');

select * from wishbook

select * from (select sysdate-regdate as restdate from wishbook) where restdate>30;

select sysdate-regdate as restdate from wishbook

select count(*) from wishbook where id='hong';
select * from wishbook order by seq
drop table wishbook

delete (select * from (select sysdate-regdate as restdate from wishbook) where restdate>30)

delete from wishbook where seq=1;