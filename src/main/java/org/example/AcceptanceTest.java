package org.example;//package org.example;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;
@RunWith(Cucumber.class)
@CucumberOptions(
        features ="/Users/yazanmansour/Downloads/untitled/src/main/Features",
        plugin = {"summary","html:target/cucumber/report.html"},
        monochrome = true, //readable output on console.
        snippets = SnippetType.CAMELCASE,
        glue = "org.example"
)//
public class AcceptanceTest {

}
