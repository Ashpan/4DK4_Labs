import random
import matplotlib.pyplot as plt
import numpy as np

# Define the rate of job arrivals
arrival_rate = 20

# Define the execution times for the good and bad connection devices
jg = 1
jb = 1

# Define the upload times for the two devices
ug = 0.5
ub = 10 * ug

# Define the simulation function


def simulate():
    # Initialize the FIFO queues for each device
    queue_g = []
    queue_b = []

    # Initialize the simulation time
    time = 0

    # Initialize the lists to store the delay times for each device
    delays_g = []
    delays_b = []

    # Initialize the number of jobs processed
    num_jobs = 0

    last_completion_time = 0

    simulation_run_time = 5000000

    # Run the simulation for a specified number of time units
    while time < simulation_run_time:
        # Check for new job arrivals
        poisson_val = np.random.poisson(simulation_run_time/arrival_rate)
        if poisson_val < time:
            # Increment the number of jobs processed
            num_jobs += 1

            # Generate a random number to determine which device the job arrives at
            device = random.random()
            # If the job arrives at the good connection device
            if device <= 0.5:
                # Add the job to the FIFO queue for the good connection device
                queue_g.append(time)
                print("Arrival time of good device", time)

            # If the job arrives at the bad connection device
            else:
                # Add the job to the FIFO queue for the bad connection device
                queue_b.append(time)
                print("Arrival time of bad device", time)

        # Check if the cloud server is idle and there are jobs in the good connection device queue
        if time >= last_completion_time and len(queue_g) > 0:
            # Get the arrival time of the next job in the queue
            arrival_time = queue_g.pop(0)
            # Calculate the delay time for the job
            delay = time - arrival_time
            # Add the delay time to the list of delays for the good connection device
            delays_g.append(delay)

            # Update the time of the last completion
            last_completion_time = time + jg

        # Check if the cloud server is idle and there are jobs in the bad connection device queue
        if time >= last_completion_time and len(queue_b) > 0:
            # Get the arrival time of the next job in the queue
            arrival_time = queue_b.pop(0)

            # Calculate the delay time for the job
            delay = time - arrival_time
            print("Delay of job", delay)

            # Add the delay time to the list of delays for the bad connection device
            delays_b.append(delay)

            # Update the time of the last completion
            last_completion_time = time + jb

        # Increment the simulation time
        time += 1

    # Calculate the mean delay time for each device
    mean_delay_g = sum(delays_g) / len(delays_g)
    mean_delay_b = sum(delays_b) / len(delays_b)
    print(mean_delay_b, mean_delay_g)

simulate()
