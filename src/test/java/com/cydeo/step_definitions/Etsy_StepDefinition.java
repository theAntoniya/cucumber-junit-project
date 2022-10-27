package com.cydeo.step_definitions;

import com.cydeo.pages.EtsyPage;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;

public class Etsy_StepDefinition {


  EtsyPage etsyPage = new EtsyPage();

    @Given("User is on {string} website")
    public void user_is_on_website(String website) {

        Driver.getDriver().navigate().to(website);

    }
    @Given("User sees title is as expected {string}")
    public void user_sees_title_is_as_expected(String expectedTitle) {

        String actualTitle =Driver.getDriver().getTitle();

        Assert.assertEquals(expectedTitle,actualTitle);

    }


    @When("user types Wooden Spoon in the search box")
    public void userTypesWoodenSpoonInTheSearchBox() {

      etsyPage.searchBox.sendKeys("Wooden Spoon"+ Keys.ENTER);


    }

    @And("user clicks search button")
    public void userClicksSearchButton() {

    //  etsyPage.searchBox.sendKeys(Keys.ENTER);
    }

    @Then("user sees Wooden Spoon is in the title")
    public void userSeesWoodenSpoonIsInTheTitle() {
      String expectedTitle =  "Wooden spoon - Etsy";
      String actualTitle =Driver.getDriver().getTitle();

      Assert.assertEquals("Title verification is failed", expectedTitle,actualTitle);

    }

  @When("user types {string} in the search box")
  public void userTypesInTheSearchBox(String searchKeyword) {
    etsyPage.searchBox.sendKeys(searchKeyword+ Keys.ENTER);

  }

  @Then("user sees {string} is in the title")
  public void userSeesIsInTheTitle(String expectedTitle) {

    String actualTitle =Driver.getDriver().getTitle();

    Assert.assertEquals(expectedTitle,actualTitle);
  }
}
