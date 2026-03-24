package tests;

import com.intuit.karate.junit5.Karate;

public class RunTest {
    @Karate.Test
    Karate test() {
        return Karate.run( "classpath:/tests").relativeTo(getClass());
    }
}
