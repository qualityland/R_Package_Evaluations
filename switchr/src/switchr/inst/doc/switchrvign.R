### R code from vignette source 'switchrvign.Rnw'

###################################################
### code chunk number 1: switchrvign.Rnw:44-53
###################################################
library(switchr)
switchrBaseDir(file.path(tempdir(), ".switchr"))
reps = options("repos")[[1]]
options(width=40)
if(reps["CRAN"] == "@CRAN@") {
    reps["CRAN"] = "https://cloud.r-project.org"
    options(repos = reps)
}
graceful_inet(TRUE)


###################################################
### code chunk number 2: switchrvign.Rnw:60-61
###################################################
switchTo("vign1")


###################################################
### code chunk number 3: switchrvign.Rnw:71-77
###################################################
switchBack()
txtcon = textConnection("txt", "w", local=TRUE)
sink(txtcon, type="message")
switchTo("vign1")
sink(NULL, type="message")
print(txt,width=30)


###################################################
### code chunk number 4: switchrvign.Rnw:88-89
###################################################
switchBack()


###################################################
### code chunk number 5: switchrvign.Rnw:109-111 (eval = FALSE)
###################################################
## ### Not Run
## removeLib("mylibrary")


###################################################
### code chunk number 6: switchrvign.Rnw:130-134
###################################################
man = PkgManifest(name = "fastdigest",
    url = "https://github.com/gmbecker/fastdigest",
    type = "git")
man


###################################################
### code chunk number 7: switchrvign.Rnw:141-144
###################################################
man2 = GithubManifest("gmbecker/fastdigest",
     "gmbecker/RCacheSuite")
man2


###################################################
### code chunk number 8: switchrvign.Rnw:155-158
###################################################
man3 = GithubManifest(redland = "ropensci/redland-bindings/R/redland")
man3



###################################################
### code chunk number 9: switchrvign.Rnw:167-169 (eval = FALSE)
###################################################
## ## NOT RUN due to peculiarities of CRAN build system wrt installed.packages()
## lman = libManifest()


###################################################
### code chunk number 10: switchrvign.Rnw:183-185 (eval = FALSE)
###################################################
## ## NOT RUN
## switchTo("vign2", seed = lman)


###################################################
### code chunk number 11: switchrvign.Rnw:203-205 (eval = FALSE)
###################################################
## ## NOT RUN
## install_packages("RCacheSuite", man2)


###################################################
### code chunk number 12: switchrvign.Rnw:211-216 (eval = FALSE)
###################################################
## ## NOT RUN
## install_packages("fastdigest",
##                  versions = c(fastdigest= "0.5-0"),
##                  man = man2)
## 


###################################################
### code chunk number 13: switchrvign.Rnw:241-243
###################################################
oldman = cranPkgVersManifest(pkg = "randomForest", vers = "4.6-5")
oldman


###################################################
### code chunk number 14: switchrvign.Rnw:252-253
###################################################
manifest_df(oldman)$url


###################################################
### code chunk number 15: switchrvign.Rnw:262-264
###################################################
oldman2 = rVersionManifest("3.1.1")
oldman2


###################################################
### code chunk number 16: switchrvign.Rnw:271-272
###################################################
head(manifest_df(oldman2)$url)


###################################################
### code chunk number 17: switchrvign.Rnw:285-287 (eval = FALSE)
###################################################
## ## NOT RUN
## switchrNoUnload(TRUE)


