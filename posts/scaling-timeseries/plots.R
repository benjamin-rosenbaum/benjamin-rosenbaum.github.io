rm(list=ls())

n = 1000
x = seq(.01, 2, length.out=n)
y = log(x)

# Ricker model

a = 0.5   
b = -0.3333

df = data.frame(x = x, 
                y = a+b*x)
ggplot(df, aes(x,y)) +
  geom_line() +
  geom_hline(yintercept=0, lty=3) +
  xlab("Density") +
  ylab("Growth rate") +
  ggtitle("Ricker")

df = data.frame(x = y, 
                y = a+b*x)
ggplot(df, aes(x,y)) +
  geom_line() +
  geom_hline(yintercept=0, lty=3) +
  xlab("log(Density)") +
  ylab("Growth rate") +
  ggtitle("Ricker on logscale")



# Gompertz model

a =  0.04
b = -0.1

df = data.frame(x = x, 
                y = a+b*y)
ggplot(df, aes(x,y)) +
  geom_line() +
  geom_hline(yintercept=0, lty=3) +
  xlab("Density") +
  ylab("Growth rate") +
  ggtitle("Gompertz")

df = data.frame(x = y, 
                y = a+b*y)
ggplot(df, aes(x,y)) +
  geom_line() +
  geom_hline(yintercept=0, lty=3) +
  xlab("log(Density)") +
  ylab("Growth rate") +
  ggtitle("Gompertz on logscale")

