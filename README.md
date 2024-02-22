# coding-test-java
- 🔥 실전에서는 복붙 안 된다!! 테이블이나 칼럼명 직접 작성해야 해
- 최종 채점 안 된다! 제출하기 전에 예제 케이스 이외에 검토하는 습관 들여야 해
- 마지막에 검토하는 시간도 있어야 할 듯.
- MYSQL 중간중간 출력해보는 것 필요함.

### To do list
- [ ] 설계, 태도, 행동강령, 유틸성 지식 우선 범주 없이 정리하기
- [ ] 해당 시험과 관련하여 특이사항 (제한시간, 캠, 레퍼런스, vscode 단축키 등) (컨트롤 c, x안됨.) 줄 지우려면 커맨드 백스페이스

### 설계
- 예외사항 고려
- 세부 설계: 들여쓰기 설계 후, 코드 껍질 짜면서 세부적인 설계는 //주석으로 처리하자. 
  - 단, 중간에 설계할 때 중요한 부분에는 시간 들여라. 너무 급하게 x

### 태도, 행동강령
- 넘어가기: 하나 온전히 물려고 하지 말고, 안 풀린다 싶으면 시원하게 넘어가기!!
  - 그 전 문제 말려서 다음 문제 왔으면, 그 전 문제는 잊어버리고 시작하자!!!
- 테스트 케이스 틀렸을 때 대처법
  - 가능성이 높은 쪽 고려
  - 요구사항 고려
  - 예외사항 고려
- 에러났을 때 대처법
  - index
  - null
- 문제 읽기: 문제 내용이 잘 이해되지 않더라도, 조급함을 버리고 계속 여러 번 읽으면서 정리하면 이해된다..! 
  - 문제 조건 하나하나를 꼼꼼히 민감하게 따지자.
  

### 유틸성 지식
- 넓이: 좌표평면 상의 넓이를 구하기 위해 2차원 배열로 표현하여 구할 수 있다.

- Contains 주의: List<int[]> list = new ArrayList<>();
- break: 사용할 때 범위 체크
- 문자열 특정 문자 포함 확인: s.contains("dd")
- long 선택
  - 중간에 연산하면서 21억 넘어갈 거 같을 때
  - 2,147,483,647 넘어가거나 2의 31제곱 넘어갈 때
  - -2,147,483,648 이하이거나 -2의 31제곱 -1 이하일 때

- 특정문자 제거: s.replaceAll([^abc], "");
  - a, b, c 셋 중에 하나가 아니라면 replace 작동함.
  - []: ~ 중의 하나
  - ^: 부정
- 문자열 분할: new StringTokenizer(expression, "abc", true);
  - a, b, c를 구분자로 분할함.
  - replace와 다르게 해당 파라미터가 정규식은 아님.
  - true하면 구분자도 포함시킴.
- split(String regex): 파라미터 그냥 문자열이 아니라 정규표현식이다!!
  - 정규표현식에서 .은 특수문자이기에 "\\."라고 해야 함.

- int 자릿수 얻기
- ```java
    while (number > 0) {
      stack.push(number % 10);
      number /= 10;
    }
- ```
- set 값 읽기: List<> list = new ArrayList<>(set);
- 진법 변환
  - 10진법 -> x진법: Integer.toString(n, x); Long.toString(n, x);
  - x진법 -> 10진법: Integer.parseInt(n, x); Long.parseLong(n, x);
  - 진법 변환했다가 좀 조작하고 다시 돌아올 때 조심해야 해! 숫자 커질 수 있음.
- 소수 찾기 범위: i <= Math.sqrt(n);
- 연속된 문자 제거하고 싶을 때: split("문자")
  - "1002".split("0"); // ["1", "", "2"]
- 자료구조 선택: 큐, 덱, 스택 쓰기 전에 중간 요소 필요없는지 점검하자.
- Math 메서드 주의: Math.ceil((double) time / fee[2]);
- 소수점 반올림: Math.round(pie*10)/10.0;	 // 3.1
- 영향력 주의: 좌표 x, y 위치 바꾸려면 통일성 지켜야 한다. 
- 90도 회전: y=x 대칭이동 + x축 대칭이동
- 변수 범위 체크: '크기가 100x100'에 현혹돼서 바로 100이라 선언x!! 각 인자마다 범위 확실히 체크하자.
- 예외 사항 체크: 예외 사항 찾을 때 너무 작은 값만 신경 쓰는 게 아니라 큰 값도 신경 써라! 양수가 아니라 음수도!


- 코드 재사용: 특정 동작을 반복해야 한다면, 재사용성 고려해서 힘들게 메서드 합치지 말고, 일단 복붙해서 구현하자.
- 논리 연산자: &&에서 왼쪽 피연산자 false일 경우, 자동 false 반환!!
- 자료구조 원소 읽을 때 주의: get, peek, poll, pop 등 할 때, 원소가 하나라도 있는지 null이 아닌지 민감하게 반응하자!!!
- 문자열 삭제 메서드
  - sb - delete: new StringBuilder(originalString).delete(startIndex, endIndex)
  - replace: originalString.replaceAll("삭제할 부분", "")
- 최장 증가 부분 수열 원리: 각 원소의 지위, 랭크를 매기는 작업을 **순차적으로** 선행함. 그리고 가장 큰 값이 답.

- st 개수: st.countTokens();
- char to String: String.valueOf(char);
- Character: char를 다루기 위한 클래스
  - isDigit: 숫자인지
  - isAlphabetic: 알파벳인지
  - isSpaceChar: 공백인지
  - isUpperCase: 대문자인지
  - toUpperCase: 대문자로
  - toString: 문자열로
- 아스키코드 저장: int offset = 'A'; <- 아스키코드로 저장됨.
- 부분 문자열 주의: subString (x) substring (o)
- 문자열 뒤집기: new StringBuilder(str).reverse().toString();


### 풀이 전 행동강령
#### 읽기
- 차분하게 읽고, 설계에 충분한 투자를 하자. (쉬워보여도 다 지켜라!)
- 문제를 읽을 때 잘 이해되지 않는 부분을 넘기는 건 좋지만, 다시 읽으러 와야 한다.

#### 설계
- n 작을 때부터 해보면서 아이디어 잡는다. (2~5. 특히 제시된 케이스가 제한적이라면 더욱 적극적으로 진행해야 한다.)
  - 기본적으로 flow는 주석으로 적되, 텍스트로 표현하기 힘든 건 노트에 적는다.
  - 해당 아이디어에서 구체화해야 할 것: 자료구조, 알고리즘, flow
  - 아이디어가 바로 떠올랐다고 해서 바로 풀이로 들어가지 않는다.
  - 범용성: n 클 때에도 아이디어가 적용되는지 확인한다.
  - 범용성: 특수한, 예외적인 경우에도 아이디어가 적용되는지 확인한다.
  - 효율성: 시간 제한에 적합한 아이디어인지 확인한다.

#### 후처리
- int 범위 체크한다. 2의 31제곱 안으로 들어온다고 하더라도 방심하지 않는다.
- 빠진 조건이 없는지 다시 한 번 꼼꼼히 읽는다.
- import java.util.*; 하고 시작하자!!


#### 간단히 추상화하자면
1. 차분하게 읽어라.
2. 설계 꼼꼼히 해라. (범용성, 효율성)
3. 빠진 거 없는지 체크해라.

### 디버깅 행동강령