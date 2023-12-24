import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class FineCalculatorTest {

    @Test
    public void testCalculateFine() {
        FineCalculator fineCalculator = new FineCalculator();

        // Test case 1: period_int is less than 10
        int fine1 = fineCalculator.calculateFine(5);
        assertEquals(0, fine1);

        // Test case 2: period_int is equal to 10
        int fine2 = fineCalculator.calculateFine(10);
        assertEquals(0, fine2);

        // Test case 3: period_int is greater than 10
        int fine3 = fineCalculator.calculateFine(15);
        assertEquals(25, fine3);
    }
}



