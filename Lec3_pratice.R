#[실습1 해설] 팩토리얼

# 12! 계산
fac <- factorial(12)


# 결과 출력
print(fac)

# [실습2 해설] 순열
install.packages("gtools")
library(gtools)

# 참가한 학생 명단
students <- c("가","나","다","라","마","바")
print(length(students))
# 순열 : 6명 수강생 중 2명에게 순위별 상품을 주는 경우의 수 
rank_per <-permutations(length(students), 2, v=students, set=TRUE, repeats.allowed=FALSE)
rank_per_num <-nrow(permutations(length(students), 2, v=students))

print(rank_per)
print(rank_per_num)

# [실습3 해설] 조합

library(gtools)

# 참가한 학생 명단
students <- c("가","나","다","라","마","바")

# 조합 : 6명 수강생 중 2명에게 상품을 주는 경우의 수 
rank_com <-combinations(length(students), 2, students, set=TRUE, repeats.allowed=FALSE)
rank_com_num <- nrow(combinations(length(students), 2, students))

print(rank_com)
print(rank_com_num)

library(gtools)

#[실습4 해설] 중복순열
# 중복순열
key<- c("A", "B", "C", "D", "E")
re_per <- permutations(length(key), 3, v=key, set=TRUE, repeats.allowed=TRUE)
re_per_num <- nrow(re_per)

print(re_per)
print(re_per_num)

#[실습5 해설] 중복조합

library(gtools)

# 중복조합
key <- c("A","B","C","D","E")
re_com <- combinations(length(key), 3, v=key, set=TRUE, repeats.allowed=TRUE)
re_com_num <- nrow(re_com)

print(re_com)
print(re_com_num)

#[실습6 해설] 조건부확률
answer_Q1andQ2 <- 0
answer_Q2 <- 0
answer_Q1orQ2 <- 0
set.seed(1000)


# 랜덤한 결과를 내는 함수
# 랜덤한 결과를 내는 함수
random_answer <- function() {
  return(sample(1:2, 1, replace=TRUE))
}

# 30명의 응답 결과
for(i in 1:30) {
  Q1 =random_answer()
  Q2 =random_answer()
  
  if(Q2 == "1")
  {
    answer_Q2 = answer_Q2 +1
  }
  if(Q1 == "1" & Q2 == "1"){
    answer_Q1andQ2 = answer_Q1andQ2+1
  }
  if(Q1 == "1" | Q2 == "1"){
    answer_Q1orQ2 = answer_Q1orQ2+1
  }
}


# 조건부 확률과 독립
paste("P(Q1 and Q2 | Q2 ):", answer_Q1andQ2/answer_Q2)
paste( "P(Q1 and Q2 | Q1 or Q2 ):", answer_Q1andQ2/answer_Q1orQ2 )

#[실습7 해설] 확률변수

# 6개의 면이 있는 주사위의 결과
roll_the_dice <- function() {
  dice <- sample(1:6, 1, replace=TRUE)
}

# 주사위의 결과를 저장할 변수
result <- c()

# 주사위를 100번 굴렸을 때의 결과를 저장
for (i in 1:100000){
  die <- roll_the_dice()
  
  result <- c(result, die)
}

# 결과의 도수 분포표 출력
table(result)


# 결과를 막대그래프로 시각화
barplot(table(result))
