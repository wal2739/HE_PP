<h1 align="center">중장비 서비스 포트폴리오</h1>

---

<h2 align="center">머리글</h1>
<div align="center">
  풀스택 개발자 지망생 권상원입니다.
  조금은 특별한 포트폴리오를 제작하고 싶어, 여러가지 아이디어를 구상했는데요.
  디자인적 감각이 없는 저는 예쁘고 화려한 포트폴리오를 제작하는 것 보다는 실용적이고, 기본에 충실한 포트폴리오를 만들고 싶었습니다.
  하여 하나의 가상 웹 솔루션을 구상하여 스스로 사용자-개발자 입장을 오가며 아이디어를 기획하게 되었습니다.
  
  그렇게 해서 나온 아이디어가 바로 중장비 서비스 프로그램 입니다.
  
  중장비 서비스 프로그램이란 중장비를 보유하고 직접 현장에서 작업하시는 개인 사업자와 현장 작업을 클라이언트(거래처)에게 의뢰받아 개인 사업자에게 발주를 넣는
  중계 사업자와의 중간 과정 즉, 클라이언트에게 작업을 받아서 개인 사업자에게 발주를 넣고 해당 작업을 완료 한 후 다시 중계사업자에게 해당 작업의 증빙 자료와
  대금을 받는 과정을 하나의 프로그램으로 편리하게 사용하고, 이용 할 수 있게 만든 웹프로그램 입니다.
  이에 그치지 않고 각 사용자 간의 커뮤니케이션과 관련 분야의 소식을 빠르게 알아 볼 수 있도록하는 부가 서비스도 존재 합니다.
  
  그럼 제 중장비 서비스 프로그램의 상세 설명과 기능들에 대하여 설명드리겠습니다.
  긴 글 끝까지 읽어주셔서 감사합니다.
</div>

---

>목차
>>0. [소개](#소개)
>>1. [아쉬운점](#아쉬운-점)
>>2. [개인적인 포트폴리오 평가](#총평)
>>3. [기능 설명](#기능-설명)
>>4. [코드 설명](#코드-설명)

<h2 align="center">소개</h1>

<h4 align="center">개발 환경</h4>

|  <center></center> |  <center>사용 기술</center> |  <center>Header3</center> |
|:--------|:--------:|--------:|
|**Develop Tools** | <center>[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP&count_bg=%23FFFFFF&title_bg=%2364B051&icon=riseup.svg&icon_color=%23E7E7E7&title=Eclipse+ver4.12.0&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP&count_bg=%23FFFFFF&title_bg=%2364B051&icon=riseup.svg&icon_color=%23E7E7E7&title=SQL+Developer+ver19.2.0.206&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP&count_bg=%23FFFFFF&title_bg=%2364B051&icon=riseup.svg&icon_color=%23E7E7E7&title=Visual+Studio+Code+ver1.56.2&edge_flat=false)](https://hits.seeyoufarm.com)</center> |*cell 1x3* |
|**Develop Language For Front end** | <center>[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fhit-counter&count_bg=%23FFFFFF&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=HTML5&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fhit-counter&count_bg=%23FFFFFF&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=JSP&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fhit-counter&count_bg=%23FFFFFF&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=JavaScript&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fhit-counter&count_bg=%23FFFFFF&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Bootstrap+ver4.3.1&edge_flat=false)](https://hits.seeyoufarm.com), [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fhit-counter&count_bg=%23FFFFFF&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=jQuery+ver3.4.1&edge_flat=false)](https://hits.seeyoufarm.com)</center> |*cell 2x3* |
|**Develop Language For Back end** | <center>cell 2x2 </center> |*cell 2x3* |
|**etc.** | <center>cell 3x2 </center> |*cell 3x3* |


<h2 align="center">아쉬운 점</h1>

><strong>기술적인 부분</strong>
>>1. 디자인
>>>대략적인 디자인은 원래 생각했던 디자인대로 구현이 되어갔으며, 작업 초반에는 상당히 만족스러운 디자인이라고 생각했습니다.
>>>하지만 가장 큰 문제는 색상이었습니다. 배경과 상대적으로 어울리는 색상 그리고 하나의 색상을 넣는다면 디자인상 절대적으로 들어가야 하는 색상 등
>>>디자인적 감각과 해당 분야에 무지했던 저는 색상 조합이 가장 힘들었습니다. 
>>>또한 작업 중반을 넘어가면서 많은 기능들이 추가가 되고, 그에 따라 해당 기능들을 구현하기 위해 생기는 많은 객체들로 인해 제 머릿속에 있던 디자인은
>>>점점 더 멀어져 갔습니다. 개인적으로 이 부분이 굉장히 아쉽다고 생각합니다.
>>2. 한계
>>>개인적으로 작업을 하면서 느낀 기술적인 한계는 없었습니다.
>>>여기서 말씀드리는 한계란, 좀 더 효율적인 코드를 만들지 못한 제 한계를 말씀드리는 겁니다.
>>>효율적인 코드를 구상한다고 했지만, 마지막 검수 과정에서 보이는 몇몇 코드들이 마음에 걸렸습니다.
>>>특히 자바 프로그래밍의 가장 큰 장점인 <strong>객체 지향 프로그래밍</strong>이 완벽하게 이루어 졌는가의 의문이 들었습니다.
>>>캡슐화와 다형성을 구성하는 부분에 있어 최대한 노력을 해봤지만, 개인적으로 제 자신에게 아쉬움이 크게 들었기 때문입니다.
><strong>개인적인 부분</strong>
>>1. 작업 기간
>>>이 포트폴리오의 작업 기간은 아이디어 구상을 제외하고 약 7개월 정도 걸렸습니다.
>>>그 중 약 2개월 정도는 기술적 한계가 있다는 스스로의 최면으로 책을 보거나 딴 짓 하기를 반복했습니다.
>>>그러다 마음을 다잡고 시작하여 약 4개월만에 포트폴리오 작업을 끝내고, 1개월간 수정/보완 그리고 검수 작업을 진행 했습니다.
>>>만약 제가 제대로 마음을 먹고 작업을 시작했다면 더 빨리 끝낼 수 있지 않았을까 하는 아쉬움이 생깁니다.




