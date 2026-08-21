장군봉 배드민턴 Supabase 최종본

이미 Supabase Project URL과 Publishable key를 index.html에 넣어 두었습니다.

1. Supabase SQL Editor에서 schema.sql은 이미 실행했다면 다시 실행할 필요 없습니다.
2. 이 폴더의 index.html을 웹 호스팅에 올립니다.
3. 화면:
   /              고객용 실시간 모니터
   /register      QR 고객 등록
   /waiting?ticket=...  고객 개인 대기 화면
   /admin         관리자 화면

주의:
- index.html에는 Publishable key만 들어 있습니다. Secret key는 들어 있지 않습니다.
- 현재 DB 정책은 테스트/소규모 운영용 공개 정책입니다. 실제 공개 운영 전에는 관리자 인증/RLS 보강이 필요합니다.
