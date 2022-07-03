#[실습1 해설] 도수
data <- c(1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1)

# table() 함수를 사용하여 도수를 구해보세요!
freq <- table(data)

print("도수 계산")
print(freq)

#[실습2 해설] 상대도수
data <- c(1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1)

freq <- table(data)

# prop.table() 함수를 사용하여 상대도수를 구해보세요!
rel_freq <- prop.table(freq)

print("상대 도수")
print(rel_freq)

#[실습3 해설] 도수분포표
# drink 데이터 불러오기
drink <- read.csv("drink.csv", header=TRUE)


#누가 몇 번 참석했는지 알 수 있는 도수분포표 
drink_who <- table(drink)

print("누가 몇 번 참석했는지 알 수 있는 도수분포표")
print(drink_who)

#[실습4 해설] 원형그래프
# 술자리 참석 상대도수 데이터 
labels <- c('A', 'B', 'C', 'D', 'E')
ratio <- c(33,25,17,17,8)


## Q1. 원형 그래프를 만드는 코드를 작성해 주세요
pie(ratio, labels)


#[실습5 해설] 막대그래프
# 술자리 참석 상대도수 데이터 
labels <- c('A', 'B', 'C', 'D', 'E')
ratio <- c(33,25,17,17,8)


## Q1. 막대 그래프를 만드는 코드를 작성해 주세요
barplot(ratio, names = labels)

#[실습6 해설] 히스토그램
# 주량 데이터
drink_cup <- data.frame(cup = c(22,7,19,3,10,8,19,7,15,9,35,5), who = c('A', 'E', 'D', 'B', 'C','A','A','A','D','B', 'C','B'), stems = c(2,0,1,0,1,0,1,0,1,0,3,0))

print(drink_cup)

## 히스토그램을 그리는 코드를 작성해 주세요

cups <- drink_cup$cup
who <- drink_cup$who
stems <- drink_cup$stems
hist(cups)
# hist(who)  수치형 데이터만 가능
hist(stems)

#[실습7 해설] 줄기-잎그림
# 주량 데이터
drink_cup <- data.frame(cup = c(22,7,19,3,10,8,19,7,15,9,35,5), who = c('A', 'E', 'D', 'B', 'C','A','A','A','D','B', 'C','B'), stems = c(2,0,1,0,1,0,1,0,1,0,3,0))

print(drink_cup)

## 줄기-잎 그림을 그리는 코드를 작성해 주세요


stem(drink_cup$cup, drink_cup$stems)

