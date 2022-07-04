#월별 주문 빈도 차이 보고서 작성하기

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)

# str(sales)
# 월별 주문 빈도 차이 확인
month_freq <- table(sales$order_month, sales$order_type)

print(month_freq)

#판매액 현황 보고서 작성하기

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)

# 판매액 평균
sales_mean <- NA

print(sales_mean)


# 판매액 중앙값
sales_median <- NA

print(sales_median)


# 판매액 최빈값
sales_mode <- NA

print(sales_mode)


# 판매액 표준편차
sales_std <- NA

print(sales_std)


# 판매액 30, 70 분위수
q70 <- NA
q30 <- NA

print(q70)
print(q30)

#주문 만족도 조사 참여 감사 상품 증정 이벤트
library(gtools)

# 주문 데이터 읽어오기
sales <- read.csv("sales.csv", header=TRUE)


# 1안 : 경품 종류 2가지, 구매번호 기준 선발 / 중복순열
sugg1 <- NA
print(nrow(sugg1))


# 2안 : 경품 종류 동일, 응모자 기준 선발 / 조합
sugg2 <- NA

print(nrow(sugg2))


# 3안 : 설문조사 경품 종류 동일, 구매번호 기준 선발 / 중복조합 
sugg3 <- NA

print(nrow(sugg3))


# 4안 : 설문조사 경품 종류 2가지, 응모자 기준 선발 / 순열
sugg4 <- NA

print(nrow(sugg4))

