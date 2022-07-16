#[실습1 해설] 이항분포
# 1. 이항분포를 생성하기 위한 변수 선언
size <- 10
p <- 0.3
x <- seq(0,10,by=1)


# 2. dbinom() 함수를 이용하여 확률질량함수를 구하여 stat_dbin에 저장
stat_dbin <- dbinom(x, size,p)

# 엘리스에서 그래프를 그리기 위한 코드

barplot(stat_dbin)


# 3. pbinom() 함수를 이용하여 누적분포함수를 구하여 stat_pbin에 저장
stat_pbin <- pbinom(x,size,p)

barplot(stat_pbin)

# 4. 난수로 이루어진 이항분포 생성
set.seed(0)
stat_rbin <- rbinom(50, size, p)

print("난수 이항분포의 평균")
mean(stat_rbin)

#[실습2 해설] 초기하분포

# 1. 초기하분포를 생성하기 위한 변수 선언
m <- 5
n <- 25
k <- 10
x <- c(0,1,2,3,4,5)

# 2. dhyper() 함수를 이용하여 확률질량함수를 구하여 stat_dhyp에 저장
stat_dhyp <- dhyper(x,m,n,k)


barplot(stat_dhyp, names=0:5)

# 3. phyper() 함수를 이용하여 누적분포함수를 구하여 stat_phyp에 저장
stat_phyp <- phyper(x,m,n,k, lower.tail = TRUE)

barplot(stat_phyp, names=0:5)

# 4. 난수로 이루어진 초기하분포 생성
set.seed(0)
stat_rhyp <- rhyper(50, m,n,k)

print("난수 초기하분포의 평균")
mean(stat_rhyp)

# [실습3 해설] 균일분포

# 1.균일분포를 생성하기 위한 변수 선언
x <- seq(0, 1, length=1000)


# 2. dunif() 함수를 이용하여 확률밀도함수를 구하여 stat_duni에 저장
stat_duni <- dunif(x, min=0,max=1)

barplot(stat_duni)

# 3. punif() 함수를 이용하여 누적분포함수를 구하여 stat_puni에 저장
stat_puni <- punif(x, min=0, max =1)

barplot(stat_puni)

# 4. 난수로 이루어진 균일분포 생성
set.seed(0)
stat_runi <- runif(100, min=0,max =1)

print("난수 초기하분포의 평균")
mean(stat_runi)

#[실습4 해설] 정규분포

# 1.균일분포를 생성하기 위한 변수 선언
x <- seq(-3, 3, length=1000)


# 2. dnorm() 함수를 이용하여 확률밀도함수를 구하여 stat_dnor에 저장
stat_dnor <- dnorm(x, mean=0, sd=1)


barplot(stat_dnor)


# 3. pnorm() 함수를 이용하여 누적분포함수를 구하여 stat_pnor에 저장
stat_pnor <- pnorm(x, mean=0, sd =1)

barplot(stat_pnor)

# 4. 난수로 이루어진 정규분포 생성
set.seed(0)
stat_rnor <- rnorm(100, mean=0, sd=1)

print("난수 정규분포의 평균")
mean(stat_rnor)

#추가 - 특정함수 P에 해당하는 분위수 q의 값을 구하는 함수 : 누적분포함수의 역함수

x2 <- seq(0, 1, by=0.05)

stat_qnor <- qnorm(x2)

plot(x2,stat_qnor)
