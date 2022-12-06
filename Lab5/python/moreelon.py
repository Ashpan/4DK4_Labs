import numpy as np
import matplotlib.pyplot as plt


# initialize simulation
M = 2  # number of mobile devices
l = 5  # arrival rate
Jg = 1  # execution time for good connection
Jb = 1  # execution time for bad connection
Ug = 1  # upload time for good connection
Ub = 10  # upload time for bad connection
T = 50000 # max run time
queue = []  # initialize queue for each device
mean_delay = [0, 0]  # initialize mean delay for each device
num_jobs = [0, 0]  # initialize number of jobs for each device
dmax = 50  # maximum delay threshold

# simulate job arrivals
for t in range(T):
    for i in range(M):
        if np.random.poisson(l) > 0:
            # a job has arrived at device i
            queue.append(t)  # add job to queue
# simulate job transmission and execution
for i in range(M):
    if len(queue) > 0:
        # job is in queue for device i
        job_start_time = queue[0]  # start time of first job in queue
        if t >= job_start_time + Ug + Jg:
            # job has finished execution
            delay = t - job_start_time  # total delay time
            mean_delay[i] = (mean_delay[i] * num_jobs[i] + delay) / (num_jobs[i] + 1)  # update mean delay
            num_jobs[i] += 1  # update number of jobs
            queue = queue[1:]  # remove job from queue
# plot mean delay for each device
plt.plot(l, mean_delay[0], label="good connection")
plt.plot(l, mean_delay[1], label="bad connection")
plt.xlabel("arrival rate (λ)")
plt.ylabel("mean delay")
plt.legend()
# determine maximum supported arrival rate
for i in range(M):
    if mean_delay[i] > dmax:
        lambda_max = l[i]
        break
