setEPS()
postscript("cluster_speedup(white).eps")
plot(cluster_speedup, type="o", col="red", xaxt='n', xlab="Number of Processes", yaxt='n', ylab="Speedup", fg="white", bg=NA, main="Cluster Speedup",cex.main=2, col.main="white", col.lab="white", lwd=4, lty=4, pch=0, xlim=c(1,16), ylim=c(1,5))
axis(2,col="white", at=seq(1, 5, by = 1), las =2, col.ticks="white", col.axis="white")
axis(1, col="white", at=c(1,2,4,8,16), las =1, col.axis="white")
dev.off()

