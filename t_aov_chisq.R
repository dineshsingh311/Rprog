school=read.csv(file.choose(),header = TRUE)
cicket=read.csv(file.choose(),header=TRUE)

#2 sample hypo testing

sachin_sr=cricket$SR[cricket$Player=='Sachin']
dravid_sr=cricket$SR[cricket$Player=='Dravid']

t.test(sachin_sr,dravid_sr)
t.test(cricket$SR~cricket$Player)


#from school dataset

unique(school$School)
table(school$School)

t.test(school$Math1,school$Math2,paired = T)


two=subset(school,school$School==2)
head(two)
mean(two$Math1)

one=subset(school,school$School==1)
mean(one$Math1)



#3 or more than 3 sample go for anova test

#from school dataset race vs math1

#check class of the race


class(school$Race)
table(school$Race)
 #so we have to change the race from integer to cetegorical

fit=aov(school$Math1~as.factor(school$Race))
summary(fit)



#chi sq test-------association between two categorical variable--(use freq)
#from school data set

class(school$School)

chisq.test(school$School,school$Prog)

chisq.test(as.factor(school$School),as.factor(school$Prog))





















