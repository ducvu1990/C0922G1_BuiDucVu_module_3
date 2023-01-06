public class Puadratic {
    public static void main(String[] args) {

    }
    public static String solveQuadraticEquation(float a, float b, float c) {
        String equation = null;
        float delta = (b * b) - (4 * a * c);
        if (delta < 0){
            return null;
        }else if (delta == 0){
            return String.valueOf(-(b/(2*a)));
        }else {
            return String.valueOf(((-b)+Math.sqrt(delta))/(2*a) + "," +((-b)-Math.sqrt(delta))/(2*a));
        }
    }
}
