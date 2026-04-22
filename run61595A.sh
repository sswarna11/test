cpdctl dsjob version
cpdctl dsjob compile-pipeline -p devRT_Alpha_Bank -n SeqCheckCompileErrorInParallelJob_Level1 --enable-cache=true --enable-inline=false
cpdctl dsjob compile-pipeline -p devRT_Alpha_Bank -n SeqCheckCompileErrorInParallelJob_Level2 --enable-cache=true --enable-inline=false
# child-pipeline-job-run should fail.
cpdctl dsjob run-pipeline -p devRT_Alpha_Bank -n SeqCheckCompileErrorInParallelJob_Level1 --wait -1 --optimize --skip-compile --enable-inline=false --run-name run1
