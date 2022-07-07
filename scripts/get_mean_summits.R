args <- commandArgs(trailingOnly = TRUE)
options(scipen = 999)

df <- read.table(args[1]) 
df$V8 <- round((df$V4 + df$V5)/2)
df$V9 <- df$V8-4
df$V10 <- df$V8+4
new_table <- df[ ,c(1,9,10,2,3)]

write.table(new_table,
            file = args[2],
            sep='\t',
            row.names=F,
            col.names=F,
            quote=FALSE)