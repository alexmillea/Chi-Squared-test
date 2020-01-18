#chi square test
#
install.packages("testthat")
library("testthat")
pollingData <- as.table(rbind(c(190, 155, 55), c(240, 290, 70)))
dimnames(pollingData) <- list(gender = c("Male", "Female"), 
                              treatment = c("Left Wing", "Centre", "Right Wing"))
(pollingChi <- chisq.test(pollingData))   # Prints test summary
pollingChi$observed                      # observed counts
pollingChi$expected                      # expected counts
#

chisq.post.hoc(pollingData)

