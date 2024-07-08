import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int maksLembur = 40;
        float totalGaji = 0f;
        float bonusLembur = 1.5f;

        System.out.print("Lama Jam Kerja: ");
        int jamKerja = sc.nextInt();

        System.out.print("Tarif Jam Kerja: ");
        int gaji = sc.nextInt();

        if (jamKerja <= maksLembur) {
            totalGaji = gaji * jamKerja;
        } else {
            totalGaji = gaji * maksLembur;

            int jamLembur = jamKerja - maksLembur;
            float gajiLembur = gaji * jamLembur;

            totalGaji += gajiLembur * bonusLembur;
        }
        sc.close();

        System.out.printf("Total Gaji: %.2f", totalGaji);
    }
}
