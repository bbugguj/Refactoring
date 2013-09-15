####1. Customer class의 statement 메서드 분해와 기능 재분배
- **Extract Method** 기법을 통해 Customer class의 statement 메서드 분해
 - case문 자체를 하나의 메서드로 추출(amount_for)
 - 직관적인 이름으로 변수명 수정(element > rental)
- **Move Method** 기법을 통해 Customer class의 amount_for 메서드를 Rental class로 이동 
 - amount_for 메서드를 Rental class로 이동시킨 후 환경에 맞게 변수 이름 수정(메서드는 자신이 사용하는 데이터와 같은 객체에 존재해야 함)
 - **Replace Temp With Query** 기법을 통해 this_amount를 없앰
 