setEPS()
postscript("desktop_speedup(black).eps")
plot(desktop_speedup, type="o", col="red", xaxt='n', xlab="Number of Processes", yaxt='n', ylab="Speedup", fg="black", bg=NA, main="Desktop Speedup",cex.main=2, col.main="black", col.lab="black", lwd=4, lty=4, pch=0, xlim=c(1,16), ylim=c(1,5))
axis(2,col="black", at=seq(1, 5, by = 0.5), las =2, col.ticks="black", col.axis="black")
axis(1, col="black", at=c(1,2,4,8,16), las =1, col.axis="black")
dev.off()

