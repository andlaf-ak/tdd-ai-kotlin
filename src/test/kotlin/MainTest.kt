import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

class MainTest {
    @Test
    fun `simple addition test`() {
        val result = 2 + 2
        assertEquals(4, result)
    }

    @Test
    fun `string concatenation test`() {
        val greeting = "Hello" + ", " + "Kotlin!"
        assertEquals("Hello, Kotlin!", greeting)
    }
}
