cricket=read.csv(file.choose(),header = TRUE)
head(cricket)
tail(cricket)
summary(cricket)
colnames(cricket)
is.na(cricket$BF)
nrow(cricket)
ncol(cricket)
unique(cricket$Player)
table(cricket$Player)

#only sachin data
cricket_sachin=subset(cricket,cricket$Player=='Sachin') #first way
cricket_sachin

cric_sachin=cricket[cricket$Player=='Sachin',]
cric_sachin

table(cricket$Player)
nrow(cricket_sachin)
nrow(cric_sachin)

# for row 2,10,20 of cricket data

cricket2_10_20=cricket[c(2,10,20),]
cricket2_10_20

# only player and strike rate

cric_p_s=cricket[,c("Player","SR")]
head(cric_p_s)

mean(cricket_sachin$SR)

#hypothesis about sachin SR
# H0 : mu>80
# Ha : mu<80

xbar=mean(cricket_sachin$SR)
ssd=sd(cric_sachin$SR)
n=nrow(cric_sachin)

t.test(cricket_sachin$SR,mu=80,alternative = 'less')

