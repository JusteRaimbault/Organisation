
# tuto piecewise linear fit with package segmented

library(segmented)


n<-100
x<-1:n/n
y<- -x+1.5*pmax(x-.5,0)+rnorm(n,0,1)*ifelse(x<=.5,.4,.1)

plot(x,y)

o<-lm(y~x)
oseg<-segmented(o,seg.Z=~x,psi=.6)
slope(oseg)

oseg<-segmented(o,seg.Z=~x,npsi=1)
slope(oseg)

pscore.test(oseg,more.break = T)

oseg<-segmented(o,seg.Z=~x,npsi=2)
summary(oseg)
# => does not converge


#
n<-100
x<-1:n/n
y<- x*ifelse(x<0.33,-1,ifelse(x>0.66,-1,1))+ifelse(x<0.33,0.33,ifelse(x>0.66,1,-0.33))+rnorm(n,0,1)*0.05
plot(x,y)

oseg<-segmented(o,seg.Z=~x,npsi=1)
pscore.test(oseg,more.break = T)

oseg<-segmented(o,seg.Z=~x,npsi=2)
pscore.test(oseg,more.break = T)
summary(oseg)

###
piecewiseSynthetic <- function(breakpoints,slopes,noiseratio,n=1000){
  if(length(slopes)<=(length(breakpoints))) {stop('wrong number of breakpoints')}
  x=c();y=c()
  cbreakpoints=c(0,breakpoints,1)
  for(i in 2:length(cbreakpoints)){
    currentx = seq(from = (n*cbreakpoints[i-1])+1,to = (n*cbreakpoints[i]), by = 1)
    y0 = y[length(y)];if(is.null(y0)){y0 = 0}
    x0 = x[length(x)];if(is.null(x0)){x0 = 0}
    currenty = y0 + slopes[i-1]*(currentx - x0)
    ampl = max(currenty)-min(currenty)
    currentnoisyy = currenty #+ rnorm(length(currenty),mean = 0,sd = ampl*noiseratios[i-1])
    y = append(y,currentnoisyy);x=append(x,currentx)
  }
  y = y + rnorm(length(y),mean = 0,sd = (max(y)-min(y))*noiseratio)
  return(data.frame(x=x,y=y))
}

getBreakpoints <- function(dataframe,maxBreakpointNumber = 5,criterion="AIC"){
  k = 0;#hasMoreBreakpoints=T;
  currentlm = lm(data = dataframe,formula = y~x)
  currentmodel = currentlm
  modelstats = data.frame()
  while(k<=maxBreakpointNumber){
    currentpval = pscore.test(currentmodel,more.break = k>0)$p.value
    daviespval = davies.test(currentmodel,alternative = "two.sided")$p.value
    modelstats=rbind(modelstats,c(k=k,pvalue=-currentpval,daviespvalue = -daviespval ,AIC=AIC(currentmodel),BIC=BIC(currentmodel)))
    currentmodel = segmented(currentlm,seg.Z=~x,npsi=k+1)
    #show(paste0("k=",k,"; p=",currentpval," ; AIC=",currentaic))
    k = k+1
  }
  names(modelstats)<-c("k","pvalue","daviespvalue","AIC","BIC")
  return(modelstats[modelstats[,criterion]==min(modelstats[,criterion]),])
}

#
b = 2

synth <- piecewiseSynthetic(seq(from=1/(b+1),to=1-1/(b+1),by=1/(b+1)),runif(b+1,min = -1,max=1),0.1)
plot(synth$x,synth$y)
# Q: should noise be a function of amplitude or uniform accross the signal? (more realistic ?)
getBreakpoints(synth)
# pvalues are a mess?


synth <- piecewiseSynthetic(seq(from=1/(b+1),to=1-1/(b+1),by=1/(b+1)),rep(c(1,-1),ceiling((b+1)/2)),0.1)
plot(synth$x,synth$y)
getBreakpoints(synth)
# same average, everything considered as noise? 

# - dirty bootstrap; accuracy can be function of noise; actual number of breakpoints; criteria used; amplitude of slopes
estbreakpoints = c()
for(rep in 1:100){
synth <- piecewiseSynthetic(seq(from=1/(b+1),to=1-1/(b+1),by=1/(b+1)),sign(runif(b+1,-1,1))*runif(b+1,min = 0.5,max=2),0.05)
#plot(synth$x,synth$y)
currentbpoints = getBreakpoints(synth,criterion="AIC")
show(currentbpoints)
estbreakpoints=append(estbreakpoints,currentbpoints$k)
}

mean(estbreakpoints)

# est number of breakpoints: Bayesian approach
# Martinez-Beneito, M. A., García-Donato, G., & Salmerón, D. (2011). A Bayesian joinpoint regression model with an unknown number of break-points. The Annals of Applied Statistics, 5(3), 2150-2168.








