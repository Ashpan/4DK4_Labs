import random
import matplotlib.pyplot as plt

# Define the rate of job arrivals
# arrival_rate = 1

arrival_rate_list = 1,2,3,4,5,6,7,8,9,10

# Define the execution times for the good and bad connection devices
jg = 1
jb = 2

# Define the upload times for the two devices
ug = 0.5
ub = 1

# Define the simulation function
def simulate() -> list:
  for i, arrival_rate in enumerate(arrival_rate_list):
    # Initialize the FIFO queues for each device
    queue_g = []
    queue_b = []

    # Initialize the simulation time
    time = 0

    # Initialize the list to store the delay times for good device
    delays_good = []

    # Initialize the list to store the delay times for good device
    delays_bad = []

    # Initialize the number of jobs processed
    num_jobs = 0

    last_completion_time = 0

    # Run the simulation for a specified number of time units
    while time < 500000:
      # Check for new job arrivals
      if random.expovariate(arrival_rate) < time:
        # Increment the number of jobs processed
        num_jobs += 1

        # Generate a random number to determine which device the job arrives at
        device = random.random()

        # If the job arrives at the good connection device
        if device <= 0.5:
          # Add the job to the FIFO queue for the good connection device
          queue_g.append(time)

        # If the job arrives at the bad connection device
        else:
          # Add the job to the FIFO queue for the bad connection device
          queue_b.append(time)

      # Check if the cloud server is idle and there are jobs in the good connection device queue
      if time >= last_completion_time and len(queue_g) > 0:
        # Get the arrival time of the next job in the queue
        arrival_time = queue_g.pop(0)

        # Calculate the delay time for the job
        delay = time - arrival_time

        # Add the delay time to the list of delays
        delays.append(delay)

        # Update the time of the last completion
        last_completion_time = time + jg

      # Check if the cloud server is idle and there are jobs in the bad connection device queue
      if time >= last_completion_time and len(queue_b) > 0:
        # Get the arrival time of the next job in the queue
        arrival_time = queue_b.pop(0)

        # Calculate the delay time for the job
        delay = time - arrival_time

        # Add the delay time to the list of delays
        delays.append(delay)

        # Update the time of the last completion
        last_completion_time = time + jb

      # Increment the simulation time
      time += 1
    mean_delay = [0] * len(arrival_rate_list)
    # Calculate the mean delay time for all jobs processed
    mean_delay[i] = sum(delays) / len(delays)

    return mean_delay

# Run the simulation multiple times to get an average result
mean_delays = []
for i in range(5):
  mean_delays.append(simulate())

# Calculate the overall average mean delay time
overall_mean_delay = sum(mean_delays) / len(mean_delays)



# Print the overall average mean delay time
print("Overall average mean delay: " + str(overall_mean_delay))
plt.plot(arrival_rate, overall_mean_delay)
plt.xlabel("arrival rate (λ)")
plt.ylabel("mean delay")
plt.legend()
