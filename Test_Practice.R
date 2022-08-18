#이항검정
x3 <- 50
n4 <- 100
p4 <- 0.5 #defalut 0.5
binom.test(x3, n4, p4,
           conf.level = 0.95)


# 평균 취업률
# 전체취업률 mu = 54.5
# stat : 표본
stat <- scan()
55.6 83.3 43.4 58.1 31.6 55.6 60.7 64.6 73.3 55.6 64.3 52.8 22.7 46.3 71.4 53.8 64.5 67.9 71.4 80.0 59.5 40.5 77.1 58.6 65.4 52.4 66.7 91.3 41.3 72.1 61.9 78.4 63.6 41.0 65.2 81.3 54.8 19.6 50.0 53.1 41.2 56.5

m_stat <- mean(stat)

#정규성 검정
shapiro.test(stat)

#구간 추정
t.test(stat, conf.level = 0.95)

#alternative "greater","less","two.sided"
#모평균 t검정 가설 검정
t.test(stat,mu=54.5)                       # 양측 검정
t.test(stat,mu=54.5,alternative="greater") # 단측 검정
# 표본평균이 54.5보다 크므로 기각역에 해당합니다.
# 따라서 귀무가설은 기각됩니다.

### 표본크기결정(평균)
SizeMeanCI <- function(Error, Sigma, Conf.level=0.95)
{
  alpha <- (1-Conf.level)/2
  (Sigma*qnorm(1-alpha)/Error)^2  
}

SizeMeanCI(1.5,5,0.95)

SizeMeanTest <- function(Effect,Sigma,Alpha=0.05,Power=0.8)
{
  (Sigma*(qnorm(1-Alpha/2)+qnorm(Power))/Effect)^2
}

SizeMeanTest(5,10)

# 구간추정을 위한 표본크기 = 43
# 가설검정을 위한 표본크기 = 32

### 일표본 평균
x_r <- rnorm(100, mean = 10, sd = 0.1)

t.test(x_r, mu = 10,alternative="two.sided")
#귀무가설 채택 된다