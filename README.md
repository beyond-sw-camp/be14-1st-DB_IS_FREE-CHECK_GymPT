# 📖 운동하는 사람들을 위한 올인원(All-in-One) 플랫폼 Check! GymPT

<img width="1322" alt="Image" src="https://github.com/user-attachments/assets/000f594b-60cf-4343-868a-3dd0cc1c49ae" />

<br>

## 프로젝트 소개

- 최근 들어 건강과 피트니스에 대한 관심이 높아지면서 운동하는 사람들이 빠르게 증가하고 있다. 그러나 많은 사람들이 운동 기록 관리, 바디프로필 예약, 운동 관련 정보 검색, 운동 커뮤니티 참여, 운동 제품 구매,
  그리고 운동 계획 작성 등을 위해 다양한 앱과 서비스를 번갈아 사용하는 불편함을 겪고 있다.

- 우리의 프로젝트는 이러한 불편함을 해결하기 위해, 운동하는 사람들을 위한 올인원(All-in-One) 플랫폼을 제공하고, 운동 관련 모든 기능을 한 곳에 통합하여 사용자가 보다 편리하게 건강 관리와 운동 목표를
  달성할 수 있도록 도와준다.

---

주요 제공 기능:

- 🏋️ 운동 기록 저장: 사용자가 매일의 운동 일지를 작성하고, 통계 및 피드백을 통해 운동 진행 상황을 추적
- 📸 바디프로필 예약 관리: 바디프로필 스튜디오 예약 및 스케줄 관리
- 💬 운동 커뮤니티: 운동에 관심 있는 사용자들이 서로 정보를 공유하고 소통
- 🛍️ 운동 제품 추천: 운동 장비, 의류, 보조제 등 관련 상품을 운동 종류마다 확인 가능
- 📓 운동 다이어리: 개인 맞춤형 운동 및 식단 계획 작성과 체크리스트 관리
- 📚 운동 방법 및 정보 제공: 사용자들이 다양한 운동 방법, 피트니스 팁 등을 쉽게 학습할 수 있는 콘텐츠 제공
  <br>

## 팀원 구성

<div align="center">

| **고성연** | **서민종** | **이상모** | **이청민** | **한석현** |
| :------: |  :------: | :------: | :------: | :------: |
| [<img src="https://avatars.githubusercontent.com/Gombo2" height=150 width=150> <br/> @Gombo2](https://github.com/Gombo2) | [<img src="https://avatars.githubusercontent.com/MJay1123" height=150 width=150> <br/> @MJay1123](https://github.com/MJay1123) | [<img src="https://avatars.githubusercontent.com/Morris235" height=150 width=150> <br/> @Morris235](https://github.com/Morris235) | [<img src="https://avatars.githubusercontent.com/Bluesky3125" height=150 width=150> <br/> @Bluesky3125](https://github.com/Bluesky3125) | [<img src="https://avatars.githubusercontent.com/Hancoal" height=150 width=150> <br/> @Hancoal](https://github.com/Hancoal) |

</div>

<br>

## 1. 개발 환경

- DBMS : <img src="https://img.shields.io/badge/mariadb-003545?style=for-the-badge&logo=mariadb&logoColor=white">
- 인프라 : <img src="https://img.shields.io/badge/vmware-607078?style=for-the-badge&logo=vmware&logoColor=white">
- 개발
  환경 : <img src="https://img.shields.io/badge/intellijidea-000000?style=for-the-badge&logo=intellijidea&logoColor=white"> ,
  HeidiSQL
- 버전 및 이슈관리 : <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
- 협업
  툴 : <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"><img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"> <img src="https://img.shields.io/badge/kakaotalk-FFCD00?style=for-the-badge&logo=kakotalk&logoColor=white">
  <br>

## 2. 프로젝트 구조

```
main
├── README.md
├── .gitignore
├── create_tables.sql -- 테이블 생성
├── work_record -- 운동 기록 관련 기능
├── work_info -- 운동 정보 관련 기능
├── user -- 회원 관련 기능
├── studio -- 스튜디오 관련 기능
├── report -- 신고 관련 기능
├── product -- 제품 관련 기능
├── place -- 운동 장소 관련 기능
├── dummy -- 더미 데이터 생성
├── diary -- 다어어리 관련 기능
├── community -- 커뮤니티 관련 기능
│     ├── post -- 게시글 관련 기능
│     └── comment -- 댓글 관련 기능
├── blacklist -- 블랙리스트 관련 기능
├── admin -- 관리자 관련 기능
└── StartingPackage -- 더미 데이터 백업
```

<br>

## 5. WBS

 <img src = "https://github.com/user-attachments/assets/4bc1fdd2-f00b-446d-9962-54a750be8507">

<br>

## 6. 요구사항 명세서

<img src = "https://github.com/user-attachments/assets/edb10cc5-f7c4-462c-a4f2-26dc4d455c84">
<img src = "https://github.com/user-attachments/assets/8e232b7a-f879-4f81-8eda-7a4b5e2a418e">
<img src = "https://github.com/user-attachments/assets/4f7abaff-3b25-4708-90cd-05e443671ea3">
<img src = "https://github.com/user-attachments/assets/e21d78b2-676e-4666-a679-db3c1b2e3286">

<br>

## 7. UML
<img src = "https://github.com/user-attachments/assets/e6219c5a-28b9-4250-abe0-285881341d10">

<br>

## 8. 모델링

<details>
  <summary>개념 모델링</summary>
  <img src = "https://github.com/user-attachments/assets/b19dd0a9-0ca0-41d1-8eab-e3b394ec5c07">
</details>

<details>
  <summary><b>논리 모델링</b></summary>
  <img src = "https://github.com/user-attachments/assets/84c869dd-c8fe-4103-8f84-b5d535a4cb9a">
</details>

<details>
  <summary><b>물리 모델링</b></summary>
  <img src = "https://github.com/user-attachments/assets/45570ca3-d9dc-43b3-a140-1b05d8323b5f">
</details>

<br>

## 9. 테스트 케이스

<details>
  <summary>테스트 케이스</summary>

<details>
    <summary>회원</summary>

<details>
    <summary>[TEST-001]회원가입</summary>
  - 이메일 중복 확인     
  <img src = "https://github.com/user-attachments/assets/787d7299-5710-4187-8df9-78844750c45b">
  - 닉네임 중복 확인
  <img src = "https://github.com/user-attachments/assets/92c15616-2f43-4422-91a3-b128a963fb2c">
  - 회원 가입
  <img src = "https://github.com/user-attachments/assets/c7823e6f-addc-4b17-8ecc-64461b916278">
  </details>

<details>
    <summary>[TEST-002]회원 탈퇴</summary>
       <img src = "https://github.com/user-attachments/assets/8f706900-07fd-4192-944b-5cd174947658">
  </details>

<details>
    <summary>[TEST-003]ID 찾기</summary>
       <img src = "https://github.com/user-attachments/assets/2f1ccb5e-69e4-4df4-a13c-3c533cce7eff">
  </details>

<details>
    <summary>[TEST-004]비밀번호 찾기</summary>
       <img src = "https://github.com/user-attachments/assets/2f1ccb5e-69e4-4df4-a13c-3c533cce7eff">
  </details>

<details>
 <summary>[TEST-005]회원가입</summary>
       <img src = "https://github.com/user-attachments/assets/ed476a1d-1439-4f6c-ab74-a5cad582cba1">
  </details>

  </details>

<details>
<summary>운동 장소 리뷰</summary>
  
<details>
<summary>[TEST-006]리뷰 등록</summary>
<img src = "https://github.com/user-attachments/assets/935da274-8bda-4516-890d-25ef067074fc">
  </details>

<details>
<summary>[TEST-007]리뷰 수정</summary>
<img src = "https://github.com/user-attachments/assets/00129645-214c-4a61-875a-53cbd0a3321b">
  </details>

<details>
<summary>[TEST-008]리뷰 삭제</summary>
<img src = "https://github.com/user-attachments/assets/f015f7b9-1f6c-4d61-9dd6-0fabcf2e92a9">
  </details>

<details>
<summary>[TEST-009]리뷰 조회</summary>
- 리뷰 전체 조회
<img src = "https://github.com/user-attachments/assets/df5d1290-d7fe-4ccf-ad98-850fc1937437">
- 해당 장소 리뷰 조회
<img src = "https://github.com/user-attachments/assets/8e06228e-a623-49e0-9da9-4638110a5709">
  </details>

<details>
<summary>[TEST-010]리뷰 검색 </summary>
 <img src = "https://github.com/user-attachments/assets/da4a1997-12be-432e-93a6-cbaffefebf70">
  </details>

  </details>

<details>
    <summary>커뮤니티</summary>
       
<details>
    <summary>[TEST-011]게시글 등록</summary>
       <img src = "https://github.com/user-attachments/assets/06987a81-4af2-473a-bd6a-76895ac31d9f">
  </details>

<details>
    <summary>[TEST-012]게시글 수정</summary>
       <img src = "https://github.com/user-attachments/assets/88265c07-9d0d-4695-b64f-ac7e98f4f88f">
  </details>

<details>
    <summary>[TEST-013]게시글 삭제</summary>
       <img src = "https://github.com/user-attachments/assets/78279bc7-8bcb-4125-828a-38553b4b1140">
  </details>

<details>
    <summary>[TEST-014]게시글 조회</summary>
       <img src = "https://github.com/user-attachments/assets/c814e0f8-f5e9-43c5-83e0-5cd2e33f7079">
  </details>

<details>
    <summary>[TEST-015]게시글 좋아요</summary>
       <img src = "https://github.com/user-attachments/assets/e90cdb52-4214-4bfb-b1cc-7d549a7f2712">
  </details>

<details>
    <summary>[TEST-016]게시글 좋아요 취소</summary>
       <img src = "https://github.com/user-attachments/assets/70096e9d-79d7-4fb7-b4c6-bb5e114fa12d">
  </details>

<details>
<summary>[TEST-017]게시글 북마크</summary>
<img src = "https://github.com/user-attachments/assets/7e42a0e8-0233-43d2-b6ab-644a2779513b">
  </details>

<details>
<summary>[TEST-018]게시글 북마크 취소</summary>
<img src = "https://github.com/user-attachments/assets/1eec6ade-bb8b-42da-a84c-420de61efda8">
  </details>

<details>
<summary>[TEST-019]게시글 검색</summary>
<img src = "https://github.com/user-attachments/assets/f6849185-99d8-4ca4-86e1-7ba268e23b7d">
  </details>

<details>
<summary>[TEST-020]댓글 작성</summary>
<img src = "https://github.com/user-attachments/assets/dc81f2d6-5c8d-474c-91ee-af5a93f8e2b8">
  </details>

<details>
<summary>[TEST-021]댓글 수정</summary>
<img src = "https://github.com/user-attachments/assets/c9e614d3-8093-4597-b12b-f0f627ec6fc5">
  </details>

<details>
<summary>[TEST-022]댓글 삭제</summary>
<img src = "https://github.com/user-attachments/assets/ed132f01-8806-4e01-9f00-3f7f13282d61">
  </details>

<details>
<summary>[TEST-023]댓글 조회</summary>
- 전체 댓글 조회
<img src = "https://github.com/user-attachments/assets/57731881-6b24-4a86-8399-b1ee58849f1f">
- 게시글 1개 조회시 댓글 ,대댓글 조회
<img src = "https://github.com/user-attachments/assets/893abc0a-7bb2-47bc-b2e9-bb2b61b6814b">
  </details>

  </details>

<details>
    <summary>운동 장소</summary>
       
<details>
    <summary>[TEST-024]운동 장소 등록</summary>
       <img src = "https://github.com/user-attachments/assets/d1ac4c06-d593-4c76-b256-0b94b7c870e9">
  </details>

<details>
    <summary>[TEST-025]운동 장소 조회</summary>
       <img src = "https://github.com/user-attachments/assets/c91d451b-1eec-4063-b81e-147bd134bb2e">
  </details>

<details>
    <summary>[TEST-026]운동 장소 삭제</summary>
       <img src = "https://github.com/user-attachments/assets/3a074e74-b898-49dd-8162-147edc00933a">
  </details>

<details>
    <summary>[TEST-027]운동 장소 검색</summary>
       <img src = "https://github.com/user-attachments/assets/87249134-ca57-423a-b447-4f6b27ef97d7">
  </details>

<details>
    <summary>[TEST-028]운동 장소 수정</summary>
       <img src = "(https://github.com/user-attachments/assets/a73b3f8b-1f63-45a5-a427-d007a25d7a23">
  </details>

  </details>

<details>
    <summary>운동 기록</summary>

<details>
    <summary>[TEST-029]전체 운동 기록 조회</summary>
       <img src = "https://github.com/user-attachments/assets/8bfbb98b-f0fc-4a44-9399-7051429d2fbd">
  </details>

<details>
    <summary>[TEST-030]운동별 운동 기록 조회</summary>
       <img src = "https://github.com/user-attachments/assets/0aa10601-c64a-446c-a1ae-8044bca6cca3">
  </details>

<details>
    <summary>[TEST-031]운동 기록 등록</summary>
       <img src = "https://github.com/user-attachments/assets/2431e27e-279a-4ee4-a208-5b0fba7b5719">
  </details>

<details>
    <summary>[TEST-032]운동 기록 삭제</summary>
       <img src = "https://github.com/user-attachments/assets/58a8d032-f6ff-42a7-b174-ed00700141ff">
  </details>

  </details>

<details>
    <summary>운동 정보</summary>

<details>
    <summary>[TEST-033]운동 정보 조회</summary>
       <img src = "https://github.com/user-attachments/assets/83d742e2-da51-482c-8a6b-2fa023132922">
  </details>

  <details>
    <summary>[TEST-034]운동 정보 등록</summary>
       <img src = "https://github.com/user-attachments/assets/fbd19de2-9082-4b59-aff5-df6a570f4372">
  </details>

  <details>
    <summary>[TEST-035]운동 정보 삭제</summary>
       <img src = "https://github.com/user-attachments/assets/57b0baf3-e071-4de6-9dfb-3295bf0cc1bf">
  </details>

  <details>
    <summary>[TEST-036]운동 정보 수정</summary>
       <img src = "https://github.com/user-attachments/assets/5352db1f-6b25-44aa-9e18-ea3812877046">
  </details>

  <details>
    <summary>[TEST-037]운동 정보 검색</summary>
       <img src = "https://github.com/user-attachments/assets/f76b3934-4e2a-438b-a10f-afeba4e86145">
  </details>

  </details>

 <details>
    <summary>스튜디오</summary>

   <details>
    <summary>[TEST-038]스튜디오 정보 등록</summary>
       <img src = "https://github.com/user-attachments/assets/8de594d7-0204-4011-8b17-be2a706318e6">
  </details>

   <details>
    <summary>[TEST-039]스튜디오 정보 수정</summary>
       <img src = "https://github.com/user-attachments/assets/f40fcb22-a521-4841-b02a-f2f68905caed">
  </details>

  <details>
    <summary>[TEST-040]스튜디오 정보 조회</summary>
        - 전체 조회
       <img src = "https://github.com/user-attachments/assets/d7af8b5a-cd3b-414f-8de8-8d549b7d4b9e">
        - 키워드 검색
       <img src = "https://github.com/user-attachments/assets/4cbbc218-d346-4d59-9478-b5580cb80372">
        - 해당 스튜디오 한개 조회
       <img src = "https://github.com/user-attachments/assets/9ade52db-842a-4835-a6c5-0b4a78bc27ca">
</details>

  <details>
    <summary>[TEST-041]스튜디오 정보 수정</summary>
       <img src = "https://github.com/user-attachments/assets/b2cc18ac-11a7-4e25-a386-923ee19edf34">
  </details>

  <details>
    <summary>[TEST-042]스튜디오 리뷰 등록</summary>
       <img src = "https://github.com/user-attachments/assets/61cd33ef-1254-4f0b-80f7-53a3aae29204">
  </details>


  <details>
    <summary>[TEST-043]스튜디오 리뷰 조회</summary>
       <img src = "https://github.com/user-attachments/assets/d433eff1-94c3-4a84-bf79-646a2372db67">
  </details>

<details>
    <summary>[TEST-044]스튜디오 리뷰 검색</summary>
       <img src = "https://github.com/user-attachments/assets/e952a435-ded8-49ed-82ca-bf2df81d06e9">
  </details>

<details>
<summary>[TEST-045]스튜디오 리뷰 삭제</summary>
<img src = "https://github.com/user-attachments/assets/4e59cf79-d238-44c2-a9e7-9dd63855e4e9">
  </details>

<details>
    <summary>[TEST-046]스튜디오 예약 등록</summary>
       <img src = "https://github.com/user-attachments/assets/e2b4b2d2-40b9-49e7-b844-e977b4a12e7c">
  </details>

<details>
    <summary>[TEST-047]스튜디오 예약 조회</summary>
       <img src = "https://github.com/user-attachments/assets/cad5ee35-3116-4720-865d-a18497df4bcd">
  </details>

<details>
    <summary>[TEST-048]스튜디오 예약 가능 여부</summary>
       <img src = "https://github.com/user-attachments/assets/1ef314f4-1367-4b93-85b3-04356437261e">
  </details>

<details>
    <summary>[TEST-049]스튜디오 예약 수정</summary>
       <img src = "https://github.com/user-attachments/assets/7e373d3b-0738-4094-934b-192f77184533">
  </details>

<details>
    <summary>[TEST-050]스튜디오 예약 삭제</summary>
       <img src = "https://github.com/user-attachments/assets/b7f0557c-50e5-4e25-92ab-66dfe6f3538e">
  </details>

  </details>

   <details>
    <summary>운동 제품</summary>

   <details>
    <summary>[TEST-051]운동 상품 등록</summary>
  <img src = "https://github.com/user-attachments/assets/18c42dcb-d386-4301-886f-7e956e3f53d8">
  </details>

   <details>
    <summary>[TEST-052]운동 상품 조회</summary>
     <img src = "https://github.com/user-attachments/assets/88548dbe-fadf-49c2-9cae-c3713316260c">
  </details>

   <details>
    <summary>[TEST-053]운동 상품 수정</summary>
  <img src = "https://github.com/user-attachments/assets/4db67702-4502-4dde-8aab-52233c04a78e">
  </details>

  <details>
    <summary>[TEST-054]운동 상품 삭제</summary>
  <img src = "https://github.com/user-attachments/assets/0824c78f-1f33-4741-b908-b05c6ef49f26">
  </details>

  <details>
    <summary>[TEST-055]운동 상품 키워드 검색 조회</summary>
   <img src = "https://github.com/user-attachments/assets/cec77eb6-b67a-4013-8818-768784fb74e0">
  </details>

  </details>

   <details>
    <summary>다이어리(캘린더)</summary>

   <details>
    <summary>[TEST-056]할 일 등록</summary>
        <img src = "https://github.com/user-attachments/assets/54f77b94-337b-4709-b3fb-4c7b6c5b3f9a">
  </details>

   <details>
    <summary>[TEST-057]할 일 수정</summary>
    <img src = "https://github.com/user-attachments/assets/f67d9f03-d19e-4cd2-a665-250033782bfa">
  </details>

   <details>
    <summary>[TEST-058]할 일 삭제</summary>
    <img src = "https://github.com/user-attachments/assets/bad1f6c6-ff9c-47d4-85ae-b8169b1a57b6">
  </details>

   <details>
    <summary>[TEST-059]할 일 조회</summary>
       - 하나에 대한 조회
     <img src = "https://github.com/user-attachments/assets/220694cc-914e-443a-8f0c-fd0ab0ba3338">
       - 전체에 대한 조회
     <img src = "https://github.com/user-attachments/assets/92d8b171-1393-4d1e-94fd-86925752b3d1"> 
  </details>

  </details>

   <details>
    <summary>두 번째 토글</summary>

<details>
    <summary>[TEST-060]신고하기</summary>
    <img src = "https://github.com/user-attachments/assets/d5894bbd-fffb-4ce2-8583-50fd3f57806a">
  </details>

<details>
    <summary>[TEST-061]신고 처리 여부</summary>
    <img src = "https://github.com/user-attachments/assets/a1b95b83-bf36-4f90-a69c-03004144ba70">
  </details>

<details>
    <summary>[TEST-062]신고에 따른 삭제</summary>
    <img src = "https://github.com/user-attachments/assets/95c88e18-5b50-4242-8e9b-401054fc989">
  </details>

<details>
    <summary>[TEST-063]블라인드 여부</summary>
    <img src = "https://github.com/user-attachments/assets/cf40dcd4-8970-40b7-8d2c-6af1030d8bc7">
  </details>

<details>
    <summary>[TEST-064]블랙리스트 레벨</summary>
    <img src = "https://github.com/user-attachments/assets/be8352c9-b935-4a7e-9d30-7d397fb972eb">
  </details>

  </details>

</details>

## 10. 프로젝트 팀원 회고

|고성연|회고 내용|
|:---:|-|
|서민종|언제나 프로젝트를 고민하시는게 눈에 보였어요. 전체적인 진행 상황을 이끌고 나가면서 팀원들의 역할을 적절히 분배하신 덕분에 프로젝트가 원활히 진행된 것 같습니다!|
|이상모|프로젝트 전반을 안정적으로 관리하며 팀원들이 목표를 명확히 이해하고 협업할 수 있도록 도왔다. 진행 상황을 꼼꼼히 정리하고 방향성을 제시해 팀워크가 원활히 이루어질 수 있었다. 열정적으로 문제를 해결하려는 태도가 인상적이었다.따로 팀장 역할을 맡은 건 아니었지만, 그럼에도 먼저 나서서 프로젝트를 이끌어 주어, 프로젝트가 원활히 진행되는데 큰 도움이 되었습니다. 프로젝트 전반에 걸쳐 가장 큰 역할을 하셨다고 생각합니다.|
|이청민|따로 팀장 역할을 맡은 건 아니었지만, 그럼에도 먼저 나서서 프로젝트를 이끌어 주어, 프로젝트가 원활히 진행되는데 큰 도움이 되었습니다. 프로젝트 전반에 걸쳐 가장 큰 역할을 하셨다고 생각합니다.|
|한석현|리더십이 크게 빛났던것 같습니다. 항상 프로젝트와 코드에 대해 고민하고, 프로젝트를 진행하며 놓칠수도 있는 부분을 잘 잡아주어 프로젝트가 올바른 길로 갈 수 있었습니다.|

|서민종|회고 내용|
|:---:|-|
|고성연|프로젝트 중간다리의 핵심. 없으면 안되는 데이터나, 주제 선정 및 의견 교환중에 다양하게 의견을 내주시고, 기능에 대한 고민 또한 많이 해주셔서 팀 프로젝트가 원활하게 돌아갈 수 있었다. 다양한 의견을 통해 좀더 나은 방향으로 나아갈수 있었음|
|서민종|프로젝트의 큰 흐름을 정확히 이해하고 기능 테스트에 필요한 더미 데이터 생성을 책임감 있게 수행했다. 팀원들 간의 오해를 바로잡아주며 협업 과정에서 부족했던 부분을 자연스럽게 메워줬다. 실질적인 피드백과 섬세한 조율이 돋보였다.|
|이청민|AI를 활용한 더미 데이터를 만들어 코드가 제대로 작동하는지 확인하는데 큰 도움을 주었고, 코드들의 피드백을 적극적으로 해주시며 전체적으로 팀의 윤활유 역할을 해주셨습니다.|
|한석현|기능구현과 더불어 프로젝트 전체 진행에 대한 능력이 좋으신것 같습니다. 남들이 생각하지 못한 부분까지 짚어주시고 다양한 의견으로 통해 프로젝트의 퀄리티를 향상시키는데 큰 도움이 되었습니다|

|이상모|회고 내용|
|:---:|-|
|고성연|진행 일정에 밀려 놓칠 수 있는 디테일들을 잡아주고 컨벤션 등을 관리해주어 작업할때 수월하게 할 수 있게 해주셨다. 이 프로젝트를 통해 무엇을 배우고 경험할 수 있는지에 기반하여 여러가지 제안을 해주시고 의견을 내주어서 프로젝트를 하면서 얻어가는 것이 많았다|
|서민종|기능적인 부분들을 고민할 때 세심한 부분을 잘 캐치하셨던 것 같습니다. 다른 팀원들의 의견을 경청하시면서 수용할 건 수용하며 좋은 아이디어를 많이 제시해주셔서 기능 개발 과정에서 많은 도움을 받았습니다.|
|이청민|실무 경험을 바탕으로 프로젝트를 다른 시야로 보며 세세한 부분들을 놓치지 않도록 잡아주셨습니다. 특히 규칙 없이 나열되어 있던 파일들을 잘 분류해 주셨습니다.|
|한석현|프로그래밍적 접근 방식이 훌륭하시고 최적의 결과를 위해 항상 고민하는 모습이 인상적이었습니다. 또한 팀원들에게 적극적으로 피드백 해주셔서 프로젝트를 진행함에 있어 큰 도움이 되었습니다|

|이청민|회고 내용|
|:---:|-|
|고성연|어려운 기능 구현 등에서 빛나는 실력을 보여주시고, 서버 등 작업 또한 도맡아서 해주셨다. 전체적인 기획이 주어지면 그에 따른 진행 능력이 뛰어나시다고 느꼈다. 또한 pr도중 오류난 부분이나, 수정사항등에 대해서 바로바로 잡아주셔서 후에 큰 기능 오류 없이 진행할 수 있었다.|
|서민종|SQL 쿼리 작성에서 돋보이는 실력을 지니고 계셨어요. 오류가 발생했을 때는 문제점을 빠르게 찾아내 해결하셨고, 복잡한 프로시져 작성도 훌륭하게 해내셔서 팀 내 브레인 역할 담당이셨다고 생각합니다. |
|이상모|코드 리뷰를 꼼꼼히 진행해 프로젝트의 완성도를 높이는 데 큰 도움을 줬다. 특히 SQL 지식을 활용해 내가 미처 생각하지 못했던 아이디어들을 제시하며 프로젝트에 새로운 관점을 더했다. 논리적이고 체계적인 접근이 돋보였다.|
|한석현|프로그래밍적 접근 방식이 훌륭하시고 최적의 결과를 위해 항상 고민하는 모습이 인상적이었습니다. 또한 팀원들에게 적극적으로 피드백 해주셔서 프로젝트를 진행함에 있어 큰 도움이 되었습니다 |

|한석현|회고 내용|
|:---:|-|
|고성연|코딩과 분위기, 기획 등 모든 걸 다 섞은 사람. 전체적으로 팀 프로젝트를 하는데 있어 막히는 부분이 있으면 어느정도 팀의 분위기가 다운될 수도 있는데 이분이 있었기에 다들 화목하게 진행할 수 있었고, 또한 맡은 부분에 대하여 확실하게 처리해주셔서 믿음이 많이 갔다.|
|서민종|팀 내에서 가장 활동적이면서 분위기를 잘 풀어내 주셨던 분이에요. 프로젝트를 진행하면서 과열된 분위기를 환기시켜 주면서 원활한 진행을 도와주셨고, 외부 자료를 참고하면서 모델링 과정에서 전체적인 틀을 잡아주셨습니다.|
|이상모|GPT를 능숙히 활용하며 작업의 효율성을 높였고, 내가 놓쳤던 기능이나 세부 사항들을 꼼꼼히 점검해 팀에 공유했다. 빠르게 누락된 부분을 파악하고 보완하며 프로젝트의 완성도 향상에 기여했다.|
|한석현|재치 있는 아이디어로 프로젝트의 방향성을 잡아주셨고, AI를 적극적으로 활용하여 작업을 효율적으로 진행해 주셨으며, 팀의 분위기 메이커를 담당해 프로젝트가 힘들지 않게 느껴지도록 해주셨습니다.|
