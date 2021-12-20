dataa = read.table("clipboard")
colnames(dataa) <- c('hores_log','notes_log')

Hores_log=dataa$hores_log
Notes_log = dataa$notes_log

IC_log = t.test(x=Notes_log, conf.level=0.975)$conf.int