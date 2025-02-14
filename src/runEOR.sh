#!/bin/sh
 

#SBATCH --get-user-env=L

#SBATCH --job-name=EOR
#SBATCH --time=40:00:00
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=52000M
#SBATCH --output log.%J
                               # 5000 SUs 122820198591 and 100000 SUs 122820197153
#SBATCH --account=132820197310
#122746359444  #122746356390 #122820196637 #122820194196 #122820196243 #= 22820191161#122820196243 #122820191161 #122820196243 #122824786466   122820193641 for 1000000 SUs
#SBATCH --mail-type=ALL
#SBATCH --mail-user=rmishra@tamu.edu


 
#echo ${SLURM_JOBID} > MatlabSubmitLOG1/batch_job_id-${SLURM_JOBID}
# change directory to submission directory
#cd /scratch/user/prajeshjangale/disp/eor_disp

# load the Matlab module
module load Matlab/R2020b
restoredefaultpath; rehash toolboxcache;
savepath;



#start matlab, and execute the script
matlab -nodisplay -nosplash -nodesktop -r "master_surf_grid1; exit" > log1
#matlab -r "master_surf_grid2; exit" > log2
#matlab -r "master_surf_grid3; exit" > log3
#matlab -r "master_surf_grid4; exit" > log4
#matlab -r "master_surf_grid5; exit" > log5
#matlab -r "master_surf_grid6; exit" > log6
#matlab -r "master_surf_grid7; exit" > log7
#matlab -r "master_surf_grid8; exit" > log8
#matlab -r "master_surf_grid9; exit" > log9
#matlab -r "master_surf_grid10; exit" > log10
    
