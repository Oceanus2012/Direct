library(xts)
library(PerformanceAnalytics)
library(plyr)
library(quantmod)
tickers <- c("AAPL", "MSFT", "SBUX")
data <- new.env()
getSymbols(tickers, src = 'yahoo', from = "2007-01-01", to = "2018-12-31", env = data, auto.assign = T)


str(X_DJI)
X_DJI$Date
return_dji = X_DJI[,2:4]
con = gzcon(url('http://www.systematicportfolio.com/sit.gz','rb'))
source(con)
close(con)
bt.prep(data, align = 'remove.na',fill.gaps = T)
prices <- data$prices
ret <- prices / mlag(prices) -1
 #compute weight
