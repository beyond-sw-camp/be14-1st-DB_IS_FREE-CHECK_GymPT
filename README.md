# 📖 운동하는 사람들을 위한 올인원(All-in-One) 플랫폼 Check! GymPT

<img width="1322" alt="Image" src="https://github.com/user-attachments/assets/000f594b-60cf-4343-868a-3dd0cc1c49ae" />

- 배포 URL : https://ohmycode-readme.netlify.app
- Test ID : readme@test.com
- Test PW : 123123

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
├── community -- 커뮤니티 관련 기능능
│     ├── post -- 게시글 관련 기능
│     └── comment -- 댓글 관련 기능
├── blacklist -- 블랙리스트 관련 기능
├── admin -- 관리자 관련 기능
└── StartingPackage -- 더미 데이터 백업
```

<br>

## 6. WBS

<br>

## 7. 요구사항 명세서

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
       <img src = "">
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

## 10. 프로젝트 후기

### 🍊 고성연

깃헙을 통한 협업에 익숙해지는 것, 서로 감정 상하지 않고 무사히 마무리하는 것이 1차적인 목표였어서 항상 이 부분을 명심하면서 작업했습니다.
각자 페이지를 작업하고 합치는 과정에서 마주친 버그들이 몇 있었는데, 시간에 쫓기느라 해결하기에 급급해서 제대로 트러블슈팅 과정을 기록하지 못한 게 살짝 아쉬운 부분으로 남습니다. 그래도 2022년 한 해 동안 가장
치열하게 살았던 한 달인 것 같습니다. 조원들 모두에게 고생했다고 전하고 싶습니다🧡

<br>

### 👻 서민종

여러모로 많은 것들을 배울 수 있었던 한 달이었습니다. 혼자서는 할 수 없었던 일이라는 것을 너무 잘 알기에 팀원들에게 정말 감사하다는 말 전하고 싶습니다. 개인적으로 아쉬웠던 부분은 기한 내에 기능을 구현하는
데에만 집중하면서 트러블 슈팅이나 새로 배웠던 것들을 체계적으로 기록하지 못했다는 점입니다. 이렇게 느낀 바가 있으니 이후의 제가 잘 정리하면서 개발할 거라 믿습니다… 하하 다들 수고하셨습니다!!!!

<br>

### 😎 이상민

팀 프로젝트 시작에 앞서 초기 설정을 진행하며 체계적인 설계의 중요성을 느꼈습니다. 앞으로는 점점 더 체계적이고 효율적으로 프로젝트를 진행할 수 있도록 발전하고 싶습니다.
정규 수업 직후에 프로젝트를 진행하면서 배운 내용을 직접 구현하는 과정이 어색했지만 어떤 부분이 부족한지 알 수 있는 기회였습니다. 스스로 최대한 노력해보고 팀원들과 함께 해결해 나가면서 협업의 장점을 체감할 수
있었습니다. 하지만 빠르게 작업을 진행하면서 팀원들과 함께 해결한 이슈가 어떤 이슈이며 어떻게 해결했는지에 대해 자세히 작성하지 못한 것이 아쉽습니다.
’멋쟁이 사자처럼’이라는 같은 목표를 가진 집단에서 프로젝트에 함께할 수 있는 소중한 경험이었습니다. 함께 고생한 조원들 모두 고생하셨습니다! 앞으로도 화이팅해서 함께 목표를 이뤄가고 싶습니다.

<br>

### 🐬 이청민

컨벤션을 정하는 것부터 Readme 파일 작성까지 전 과정을 진행하려니 처음 생각보다 많은 에너지를 썼어요. 좋은 의미로 많이 썼다기보다, 제 능력을 십분 발휘하지 못해서 아쉬움이 남는 쪽입니다. 개발한다고 개발만
해서는 안 된다는 것을 몸소 느껴보는 기간이었던 것 같습니다. 이번 기회로 프로젝트를 진행하면서, 제가 잘하는 점과 부족한 점을 확실하게 알고 가는 건 정말 좋습니다. 기술적인 부분에 있어서는 리액트의 컴포넌트화가
주는 장점을 알았습니다. 조금 느린 개발이 되었을지라도 코드 가독성 부분에 있어서 좋았고, 오류가 발생해도 전체가 아닌 오류가 난 컴포넌트와 근접한 컴포넌트만 살펴보면 수정할 수 있는 부분이 너무 편했습니다. 모두
고생 참 많으셨고 리팩토링을 통해 더 나은 프로젝트 완성까지 화이팅입니다.

<br>

### 🙈 한석현

배울 때 이해가 부족했던 부분을 실제 적용해보면서 더욱 확실하게 이해할 수 있었고, GitHub 사용과 프로젝트 설계, 데이터베이스 관련 공부를 통해 많은 것을 배울 수 있었습니다.
데이터베이스 설계와 쿼리 작성에 대한 경험을 쌓으면서 이론과 실습을 동시에 익힐 수 있었던 점이 매우 유익했습니다.
첫 번째 프로젝트를 바탕으로 다음 프로젝트에서는 기획과 설계 단계를 더욱 탄탄히 하여 완성도를 높일 수 있을 것 같습니다. 또한, 좋은 팀원들과 함께 진행하며 많은 것을 배우고 큰 동기부여를 얻은 값진
시간이었습니다." DB IS FREE 조원 여러분 모두 고생하셨습니다!🥳
