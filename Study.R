library(xts)
library(PerformanceAnalytics)
library(plyr)
library(quantmod)
library(tidyverse)
tickers <- c("AAPL", "MSFT", "SBUX")
data <- new.env()
getSymbols(tickers, src = 'yahoo', from = "2007-01-01", to = "2018-12-31", env = data, auto.assign = T)


str(X_DJI)
X_DJI$Date
return_dji = X_DJI[,2:4]
con = gzcon(url('http://www.systematicportfolio.com/sit.gz','rb'))
source(con)
close(con)
#q1
bt.prep(data, align = 'remove.na',fill.gaps = T)
prices <- data$prices
ret <- prices / mlag(prices) -1
 #compute weight
close(con)
ret.sample <- ret['2007/2009',]
avg.ret <- colMeans(coredata(ret.sample))
cov.d <- cov(coredata(ret.sample))
ones.vec <- matrix(rep(1, n), ncol = 1)
ones.vec <- matrix(rep(1, n), ncol = 1)
numerator <- solve(cov.d)%*%ones.vec
denominator <- t(ones.vec)%*%numerator
mvp.w <numerator / as.numeric(denominator)
#q2
prices %>% to.monthly(indexAt = 'lastof', OHLC = FALSE) %>%
  data.frame(date = index(.)) %>%
  remove_rownames() %>%
  gather(stock, price, -date) %>%
  group_by(stock) %>%
  mutate(returns = log(price)-log(lag(price))) %>%
  select(-price) %>%
  spread(stock, returns) %>%
  slice(-1)
library(tidyquant)
#Skip
library(pacman) 
p_load(timeSeries, PerformanceAnalytics, fPortfolio) 
chart.CumReturns(ret.ts_m, legend.loc = "topleft", main = "")
plot(portfolioFrontier(ret.ts_m))
Spec = portfolioSpec() setSolver(Spec) = “solveRshortExact”
setTargetReturn(Spec) = mean(colMeans(ret.ts_m))
#Skip
