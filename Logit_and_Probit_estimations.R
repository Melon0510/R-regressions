# Section 17.1 in Woodridge "Introductory Econometrics: A Modern Approach"

data(mroz, package='wooldridge')

# Estimate logit model
logitres<-glm(inlf~nwifeinc+educ+exper+I(exper^2)+age+kidslt6+kidsge6,
              family=binomial(link=logit),data=mroz)
# Summary of results:
summary(logitres)
# Log likelihood value:
logLik(logitres) 
# McFadden's pseudo R2:
1 - logitres$deviance/logitres$null.deviance


# Estimate probit model
probitres<-glm(inlf~nwifeinc+educ+exper+I(exper^2)+age+kidslt6+kidsge6,
               family=binomial(link=probit),data=mroz)
# Summary of results:
summary(probitres)
# Log likelihood value:
logLik(probitres) 
# McFadden's pseudo R2:
1 - probitres$deviance/probitres$null.deviance