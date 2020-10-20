package com.centric.runner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;



@RunWith(Cucumber.class)
@CucumberOptions(features="src\\test\\resources\\Features",glue = "com.centric.stepdefinition",plugin = {"html:target","json:target/jsonReports/reports3.json"},tags = {"@Browser3"})


public class TestRunner3 {


}