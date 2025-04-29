# project_2

### 📅 2025/04/29 작업 내용

- **전국 리콜 현황 전체보기 기능 구현 완료** (`recall_list.jsp`)
  - ✅ 페이징 처리 완료
  - ❌ DB로 옮겨오는 방식 아님 — API 주소를 호출해서 바로 가져오는 방식
  - ⚠️ 총 개수(total) 구할 수 없어 **923개로 고정 처리**
  - 📝 표 양식 CSS 적용 완료!

### 🛠️ 추가 및 수정된 파일 목록

- `RecallController` (수정)
- `Defect_DetailsDTO` (추가)
- `PageService` (추가)
- `PageServiceImpl` (추가)
  - 👉 PageServiceImpl:XML 파일 형식을 List로 변환하는 메소드 포함
  
---