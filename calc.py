running = True
while running:
    print("1 = Addition")
    print("2 = Subtraction")
    print("3 = Multiplication")
    print("4 = Division")
    print("5 = Power")
    print("6 = Exit program")
    operation = int(input("Enter number : "))
    if operation == 1:
        print("Addition")
        first = int(input("Enter first number :"))
        second = int(input("Enter second number :"))
        result = first + second
        print(" ")
        print(first, " + ", second, " = ", result)
        print(" ")

    elif operation == 2:
        print("Subtraction")
        first = int(input("Enter first number :"))
        second = int(input("Enter second number :"))
        result = first - second
        print(first, " - ", second, " = ", result)

    elif operation == 3:
        print("Multiplication")
        first = int(input("Enter first number :"))
        second = int(input("Enter second number :"))
        result = first * second
        print(first, " x ", second, " = ", result)

    elif operation == 4:
        print("Division")
        first = int(input("Enter first number :"))
        second = int(input("Enter second number :"))
        result = first / second
        print(first, " : ", second, " = ", result)

    elif operation == 5:
        print("Power")
        first = int(input("Enter first number :"))
        second = int(input("Enter second number :"))
        result = first ** second
        print(first, " : ", second, " = ", result)

    elif operation == 6:
        print("Exiting the Program!")
        running = False
