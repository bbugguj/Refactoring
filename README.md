####1. Customer class의 statement 메서드 분해와 기능 재분배
- **Extract Method** 기법을 통해 Customer class의 statement 메서드 분해
 - case문 자체를 하나의 메서드로 추출(amount_for)
 - 직관적인 이름으로 변수명 수정(element > rental)
