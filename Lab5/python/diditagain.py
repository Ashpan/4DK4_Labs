# Import necessary modules
import numpy as np
import matplotlib.pyplot as plt

# Initialize simulation constants and variables
M = 2
Jg = 1
Jb = 1
Ug = 1
Ub = 10

# Initialize list to store mean delays for each device
mean_delays = []

# Loop over different arrival rates
for l in np.arange(0.1, 1.0, 0.1):
    # Initialize simulation time and number of jobs in system
    t = 0
    n_jobs = 0

    # Initialize queue and delay for each device
    good_queue = []
    bad_queue = []
    good_delay = 0
    bad_delay = 0

    # Initialize counters for number of jobs processed by each device
    good_jobs = 0
    bad_jobs = 0

    # Simulate for a fixed number of time units
    for i in range(10000):
        # Generate next arrival time for each device
        good_arrival = np.random.exponential(scale=1.0 / (l / M))
        bad_arrival = np.random.exponential(scale=1.0 / (l / M))

        # Advance simulation time to next arrival
        t = min(good_arrival, bad_arrival)

        # Update job counts and queues for each device
        if good_arrival < bad_arrival:
            good_queue.append(Ug + Jg)
            n_jobs += 1
        else:
            bad_queue.append(Ub + Jb)
            n_jobs += 1

        # Decrement remaining execution/upload time for each job
        for queue in (good_queue, bad_queue):
            if len(queue) > 0:
                queue[0] -= 1
                if queue[0] == 0:
                    n_jobs -= 1
                    queue.pop(0)

        # Update delay for each device
        good_delay += len(good_queue)
        bad_delay += len(bad_queue)

    # Calculate mean delay for each device
    good_mean_delay = good_delay / good_jobs
    bad_mean_delay = bad_delay / bad_jobs
    mean_delays.append((good_mean_delay, bad_mean_delay))

# Convert list of mean delays to NumPy array
mean_delays = np.array(mean_delays)

# Plot mean delay for each device as a function of l
plt.plot(np.arange(0.1, 1.0, 0.1), mean_delays[:, 0], label="Good connection")
plt.plot(np.arange(0.1, 1.0, 0.1), mean_delays[:, 1], label="Bad connection")

# Add labels and title to plot
plt.xlabel("Arrival rate (l)")
plt.ylabel("Mean delay")
plt.title("Mean delay vs. arrival rate")