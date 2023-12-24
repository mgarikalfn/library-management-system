import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class BookServiceTest {

    @Test
    public void testIsBookAlreadyIssued_WhenBookIsAlreadyIssued_ReturnsTrue() {
        // Arrange
        BookService bookService = new BookService();
        int bookId = 123;

        // Act
        boolean result = bookService.isBookAlreadyIssued(bookId);

        // Assert
        Assertions.assertTrue(result);
    }

    @Test
    public void testIsBookAlreadyIssued_WhenBookIsNotIssued_ReturnsFalse() {
        // Arrange
        BookService bookService = new BookService();
        int bookId = 456;

        // Act
        boolean result = bookService.isBookAlreadyIssued(bookId);

        // Assert
        Assertions.assertFalse(result);
    }
}
