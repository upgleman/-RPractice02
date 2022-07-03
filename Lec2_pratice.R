#[실습1 해설] 평균

# 카페인 함유량 데이터
coffee <- c(202,177,121,148,89,121,137,158)

#평균계산
cf_mean <- mean(coffee)

# 평균값 출력
print("평균값")
print(cf_mean)

#[실습2 해설] 중앙값

# 중앙값 계산
cf_median <- median(coffee)

# 중앙값 출력
print("중앙값")
print(cf_median)

#[실습3 해설] 최빈값

# 최빈값 계산
cf_mode <- names(which.max(table(coffee)))
# max <-which.max(table(coffee))
# print(max)
# str(max)
# 최빈값 출력
print("최빈값")
print(cf_mode)

#[실습4 해설] 분산

# 분산 계산
cf_var <- var(coffee)

# 분산 출력
print("분산")
print(cf_var)

#[실습5 해설] 표준편차

# 표준편차 계산
cf_std <- sd(coffee)

# 표준편차 출력
print("표준편차")
print(cf_std)

#[실습6 해설] 범위

# 범위 계산
cf_range <- diff(range(coffee))
# cf_max <- max(coffee)

# 범위 출력 max - min
print("범위")
print(cf_range)

#[실습7 해설] 백분위수
#백분위수
cf_quant_20 <-quantile(coffee, probs=c(0.20))
cf_quant_80 <-quantile(coffee, probs=c(0.80))

print(cf_quant_20)
print(cf_quant_80)

#[실습8 해설] 사분위수 범위
q75 <- quantile(coffee, probs=c(0.75))
print(q75)
# 1 사분위수 계산
q25 <- quantile(coffee, probs = c(0.25))
print(q25)
# 사분위수 범위 계산 후 출력
cf_IQR <- q75 - q25
print(cf_IQR)

# summary(coffee)

#[실습9 해설] 변동계수

#CV
cf_cv <- sd(coffee)/mean(coffee)

cf_cv <- round(cf_cv,2)

print(cf_cv)

#[실습10 해설] 도수분포표

# 주량 데이터 
# <- 벡터 데이터
drink_cup <- data.frame(cup <- c(22,7,19,3,10,8,19,7,15,9,35,5),
                        who <- c('A', 'E', 'D', 'B', 'C','A','A','A','D','B', 'C','B'))

print(drink_cup)

# 도수분포표 4개의 그룹으로 범주화

factor_cup <- cut(drink_cup$cup, 4)


print(table(factor_cup))

#[실습11 해설] 상자그림

# 카페인 함유량 데이터
coffee <- c(202,177,121,148,89,121,137,158)

## 여기에 상자그림을 그리는 코드를 작성해주세요
boxplot(coffee)

#[실습12 해설] 분할표

# drink 데이터 불러오기
mart <- read.csv("mart.csv", header=TRUE)
# print(mart)

# Q1.지역별로 선호하는 마트 //지역 - 마트
region_crosstab <- table(mart$region, mart$mart)
print(region_crosstab)

# Q2. 가족구성원의 수별로 선호하는 마트 // 구성원수 - 마트
famnum_crosstab <- table(mart$family_num, mart$mart)
print(famnum_crosstab)

#[실습13 해설] 산점도
# body.csv 읽어오기 
body <- read.csv("body.csv", header=TRUE)

# Q1. 산점도 
##1-1 키와 몸무게간 산점도 
## 여기에 코드를 작성해 주세요
plot(x= body$height, y=body$weight)


##1-2 키와 체지방량 산점도 
## 여기에 코드를 작성해 주세요
plot(x= body$height, y=body$body_fat)

##1-3 키와 다리길이 산점도 
## 여기에 코드를 작성해 주세요

plot(x= body$height, y=body$leglen)


##1-4 키와 모발 산점도 
## 여기에 코드를 작성해 주세요

plot(x= body$height, y=body$hair)

#[실습14 해설] 두 범주형 변수의 요약 공분산
# body.csv 읽어오기 
body = read.csv("body.csv", header=TRUE)

# 공분산
cov_body <- cov(body, use = c( "complete.obs"), method = c("pearson", "kendall", "spearman"))

print(cov_body)

# [실습15 해설] 상관계수
# 상관계수 
corr_body <- cor(body, use = c( "complete.obs"), method = c("pearson", "kendall", "spearman"))

print(corr_body)
