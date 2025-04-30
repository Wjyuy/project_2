# project_2

<details>
<summary>📅 2025/04/29 작업 내용</summary>

<br>

- **전국 리콜 현황 전체보기 기능 구현 완료** (`recall_list.jsp`)
  - ✅ 페이징 처리 완료
  - ❌ DB로 옮겨오는 방식 아님 — API 주소를 호출해서 바로 가져오는 방식
  - ⚠️ 총 개수(total) 구할 수 없어 **923개로 고정 처리**
  - 📝 표 양식 CSS 적용 완료!

- **게시판 동작 프론트단 제작** (`announce.jsp,notice.jsp`)
  - ✅ notice.jsp 프론트 완료 (CSS까지)
  - ⚠️ announce 는 프론트 일시적 마무리, 추가 수정 예정 있음
  - ❌ 백앤드 구현 예정

- **결함신고 페이지** (`defect_reports.jsp`)
  - ✅ defect_reports.jsp-insert기능 완료
  - defect_details_check.jsp : 미완성 
   - 👉 (폼형식 관리자(는없지만)defect_reports 에 있는 글 검수하고 →defect_details로 insert 하는 페이지 )
  - ❌ 백앤드 기본틀 사용, 구현 예정, 프론트 수정필요


#### 🛠️ 추가 및 수정된 파일 목록

- `RecallController` (수정)
- `Defect_DetailsDTO` (추가)
- `PageService` (추가)
- `PageServiceImpl` (추가)
  - 👉 PageServiceImpl: XML 파일 형식을 List로 변환하는 메소드 포함

- `announce.jsp` (추가)
- `notice.jsp` (추가)
- `AnnounceController.java` (추가)
- `NoticeController.java` (추가)

- `defect_reports.jsp` (추가)
- `defect_reports_ok.jsp` (추가)
- `DefectController` (추가)
- `NoticeController.java` (추가)
- `DefectDAO` (추가)
- `Defect_ReportsDTO` (추가)
- `DefactService.java` (추가)
- `DefactServiceImpl.java` (추가)

</details>

<details>
<summary>📅 2025/04/30 작업 내용</summary>

<br>

- 
  - **무슨 기능을 구현**, **어떤 파일을 수정**, **이슈나 한계** 등

</details>
