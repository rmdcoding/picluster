#Run time comparison graph
png("run-time-comparison.png")
plot(cluster_data, type="o", col="firebrick3", xaxt='n', yaxt='n', ylab="Run time (seconds)", xlab="Number of processes", lwd=4, lty=1, pch=0, xlim=c(1,16), ylim=c(0,35), main="Run time comparison: 1000x1000 matrix multiplication")
grid(10,10,col="lightgray",lty="dotted")
axis(2, at=seq(0,35, by=5), las=2)
axis(1, at=c(1,2,4,8,16), las=1)
lines(node_data, col="forestgreen", lwd=4, lty=1, pch=0, type="o")
legend(10,30, c("R-Pi Cluster", "Raspberry Pi"), col=c("firebrick3", "forestgreen"), lwd=4, lty=1, pch=0)
dev.off()

#node graph
png("node_speedup.png")
plot(node_speedup, type="o", col="firebrick3", xaxt='n', yaxt='n', xlab="Number of processes", ylab="Speedup", main="Raspberry Pi speedup: 1000x1000 matrix multiplication", lwd=4, lty=1, pch=0, xlim=c(1,16), ylim=c(1,7))
axis(2, at=seq(1,7,by=1), las=2)
axis(1, at=c(1,2,4,8,16), las=1)
grid(10,10,col="lightgray",lty="dotted")
dev.off()

#cluster graph
png("cluster_speedup.png")
plot(cluster_speedup, type="o", col="firebrick3", xaxt='n', yaxt='n', xlab="Number of processes", ylab="Speedup", main="R-Pi Cluster speedup: 1000x1000 matrix multiplication", lwd=4, lty=1, pch=0, xlim=c(1,16), ylim=c(1,4))
axis(1, at=c(1,2,4,8,16), las=1)
axis(2, at=seq(1,4,by=1), las=2)
grid(10,10,col="lightgray",lty="dotted")
dev.off()