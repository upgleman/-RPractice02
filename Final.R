#월별 주문 빈도 차이 보고서 작성하기

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)

str(sales)
# 월별 주문 빈도 차이 확인
month_freq <- table(sales$order_month, sales$order_type)

print(month_freq)

#판매액 현황 보고서 작성하기

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)
summary(sales)
# 판매액 평균
sales_mean <- mean(sales$order_sales)

print(sales_mean)


# 판매액 중앙값
sales_median <- median(sales$order_sales)

print(sales_median)

names(which.max(table(sales$order_sales)))

# 판매액 최빈값
sales_mode <- names(which.max(table(sales$order_sales)))

print(sales_mode)


# 판매액 표준편차
sales_std <- sd(sales$order_sales)

print(sales_std)


# 판매액 30, 70 분위수
q70 <- quantile(sales$order_sales, probs=c(0.30))
q30 <- quantile(sales$order_sales, probs=c(0.70))

print(q70)
print(q30)

#주문 만족도 조사 참여 감사 상품 증정 이벤트
library(gtools)

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)
summary(sales)

# 1안 : 경품 종류 2가지, 구매번호 기준 선발 / 중복순열
sugg1 <- permutations(length(sales$order_num), 2, v=sales$order_num, set=TRUE, repeats.allowed=TRUE)

# print(sugg1) #실제 경우
print(nrow(sugg1))


# 2안 : 경품 종류 동일, 응모자 기준 선발 / 조합
sugg2 <- combinations(length(sales$order_num), 2, v=sales$order_num, set=TRUE, repeats.allowed=FALSE)

print(nrow(sugg2))


# 3안 : 설문조사 경품 종류 동일, 구매번호 기준 선발 / 중복조합 
sugg3 <- combinations(length(sales$order_num), 2, v=sales$order_num, set=TRUE, repeats.allowed=TRUE)

print(nrow(sugg3))


# 4안 : 설문조사 경품 종류 2가지, 응모자 기준 선발 / 순열
sugg4 <- permutations(length(sales$order_num), 2, v=sales$order_num, set=TRUE, repeats.allowed=FALSE)

print(nrow(sugg4))

