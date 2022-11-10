import math

def truncate(number, digits) -> float:
    # Improve accuracy with floating point operations, to avoid truncate(16.4, 2) = 16.39 or truncate(-1.13, 2) = -1.12
    nbDecimals = len(str(number).split('.')[1])
    if nbDecimals <= digits:
        return number
    stepper = 10.0 ** digits
    return math.trunc(stepper * number) / stepper

def main():
    MAX_ARRIVAL_RATE = 10
    ARRIVAL_RATE_STEP = 0.1
    arrival_rate = ARRIVAL_RATE_STEP
    for i in range(int(MAX_ARRIVAL_RATE/ARRIVAL_RATE_STEP)):
        print(round(arrival_rate, 1), end=", ")
        arrival_rate += ARRIVAL_RATE_STEP

if __name__ == "__main__":
    main()