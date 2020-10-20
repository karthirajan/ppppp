package com.centric.runner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;



@RunWith(Cucumber.class)
@CucumberOptions(features="src\\test\\resources\\Features",glue = "com.centric.stepdefinition",plugin = {"html:target","json:target/jsonReports/reports2.json"},tags = {"@Browser2"})


public class TestRunner2 {


}