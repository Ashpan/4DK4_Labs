import math

def max_offered_load(channels):
    offered_load = 0
    current_blocking_probability = -1
    blocking_probability = 0
    while (blocking_probability >= current_blocking_probability and blocking_probability < 0.01):
        numerator = (offered_load**channels)/math.factorial(channels)
        denominator = 0
        for i in range(channels+1):
            denominator += (offered_load**i)/math.factorial(i)
        blocking_probability = numerator/denominator
        if blocking_probability > current_blocking_probability and blocking_probability < 0.01:
            current_blocking_probability = blocking_probability
            offered_load += 0.05
    print({"numerator": numerator, "denominator": denominator})
    return "{:d}\t\t{:.4f}".format(channels, offered_load)

def main():
    print("Channels\tOffered Load")
    for channels in range(1, 100):
        print(max_offered_load(channels))

if __name__ == "__main__":
    main()