package model;

public class demoa {
    public static float calculate(float firstOperand, float secondOperand, char operator) {
        switch (operator) {
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                if (secondOperand != 0) {
                    return firstOperand / secondOperand;
                } else {
                    throw new RuntimeException("cannot be divided by 0!");
                }
            default:
                throw new RuntimeException("Invalid calculation!");
        }
    }
}
