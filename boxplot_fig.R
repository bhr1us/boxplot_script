#define variables for plot
groups <- c("Confirmed", "Non-confirmed")
FP <- c(0.04, 0.03, 0.36, 0.06, 0.02, 5.1, 2.3, 0.07, 0.5, 1.2, 28.7, 13.0, 48.0, 3428.3)
FB <- c(NA, 41800, 183, 0.5, 6.3, NA, 332, 0.08, 45143, 155, 7770, 9320, 2095, 16)

#make data frome
df <- data.frame (FP, FB)

# define y-axis tick marks
y <- c("0.1", "1", "10", "100", "1000", "10000", "100000")

#generate plot
boxplot (df$FB[1:8], df$FB[9:14], ylab= "Firmicutes:Bacteroidetes", log ="y", names = groups, yaxt="n")
axis (2, at = y, labels =y, las=1)