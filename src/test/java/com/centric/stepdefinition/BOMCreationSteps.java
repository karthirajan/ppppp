package com.centric.stepdefinition;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;

import com.centric.objectrepository.BOMCreationPage;
import com.centric.objectrepository.ConfigurationPage;
import com.centric.objectrepository.DocumentPage;
import com.centric.objectrepository.HomePage;
import com.centric.objectrepository.InspectionPage;
import com.centric.objectrepository.MaterialSpecificationPage;
import com.centric.objectrepository.PopupPage;
import com.centric.objectrepository.QualityPage;
import com.centric.objectrepository.SetupPageTK;
import com.centric.objectrepository.SourcingPage;
import com.centric.objectrepository.StyleInspectionPage;
import com.centric.objectrepository.StylePage;
import com.centric.objectrepository.UserManagementPage;
import com.centric.resources.Commonactions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class BOMCreationSteps extends Commonactions {

	HomePage hp = new HomePage();
	Commonactions ca = new Commonactions();
	MaterialSpecificationPage mp = new MaterialSpecificationPage();
	PopupPage pp = new PopupPage();
	SourcingPage sp = new SourcingPage();
	DocumentPage dp = new DocumentPage();
	StylePage st = new StylePage();
	InspectionPage in = new InspectionPage();
	UserManagementPage up = new UserManagementPage();
	StyleInspectionPage si = new StyleInspectionPage();
	SetupPageTK su = new SetupPageTK();
	ConfigurationPage co = new ConfigurationPage();
	BOMCreationPage bc = new BOMCreationPage();

	String file, name, filter;

	@Then("user creates NewBOMSection {string},{string},{string}")
	public void user_creates_NewBOMSection(String Bomsections, String sortvalues, String Materialname) throws Throwable {

		String[] Bomsection = Bomsections.split(",");
		String[] sortvalue = sortvalues.split(",");

		Commonactions.isElementPresent(hp.getDatasetup());
		ca.click(hp.getDatasetup());
		Commonactions.isElementPresent(bc.getProdSpecSetup());
		ca.click(bc.getProdSpecSetup());
		Commonactions.isElementPresent(bc.getBOMSection());
		Commonactions.mouseOver(bc.getBOMSection());
		ca.click(bc.getBOMSection());
		Commonactions.isElementPresent(bc.getNewBomSecBtn());
		ca.click(bc.getNewBomSecBtn());
		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Bomsection[0]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[0]);
		Commonactions.isElementPresent(mp.getSaveAndNew_btn());
		ca.click(mp.getSaveAndNew_btn());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Bomsection[1]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[0]);
		Commonactions.isElementPresent(mp.getSaveAndNew_btn());
		ca.click(mp.getSaveAndNew_btn());
		String text = Commonactions.getText(bc.getErrormessage());
		if(text.contains("Sort Order must be unique"))
		{
			System.out.println("sort order Error message validated");
		}
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[1]);
		Commonactions.isElementPresent(mp.getSaveAndNew_btn());
		ca.click(mp.getSaveAndNew_btn());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Bomsection[2]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[2]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();
		ca.eleToBeClickable();

		for (int i = 0; i < 40; i++) {
			ca.click(bc.getSlider1());
		}
		Commonactions.isElementPresent(bc.getApplicablestyletype());
		ca.click(bc.getApplicablestyletype());
		Commonactions.isElementPresent(bc.getAccOnlyColor());
		ca.click(bc.getAccOnlyColor());
		ca.click(bc.getAppColorandSize());
		ca.eleToBeClickable();

		ca.click(driver.findElement(By.xpath("(//td[contains(@data-csi-act,'PlacementProductType::0')])[1]")));
		ca.eleToBeClickable();
		WebElement e1 = ca.activeElement();
		ca.eleToBeClickable();
		e1.sendKeys(Keys.DELETE);
		ca.eleToBeClickable();
		ca.insertText(e1, "Material");
		ca.eleToBeClickable();
		ca.jsMouseOver();
		ca.eleToBeClickable();
		ca.click(driver.findElement(By.xpath("(//td[contains(@data-csi-act,'PlacementProductType::0')])[2]")));
		ca.eleToBeClickable();
		WebElement e2 = ca.activeElement();
		ca.eleToBeClickable();
		e2.sendKeys(Keys.DELETE);
		ca.eleToBeClickable();
		ca.insertText(e2, "Material");
		ca.eleToBeClickable();
		ca.jsMouseOver();
		ca.eleToBeClickable();

		for (int i = 0; i < 5; i++) {
			ca.click(bc.getSlider1());
		}
		ca.eleToBeClickable();
		ca.click(driver.findElement(By.xpath("(//td[contains(@data-csi-act,'PlacementProductTypes')])[2]")));
		ca.click(bc.getFabricstandalone());
		ca.eleToBeClickable();
		ca.click(bc.getSlider1());
		ca.click(driver.findElement(By.xpath("(//td[contains(@data-csi-act,'PlacementProductTypes')])[3]")));
		ca.eleToBeClickable();
		ca.click(bc.getAccOnlyColor());
		ca.click(bc.getAppColorandSize());
		ca.eleToBeClickable();
		ca.click(bc.getSlider1());
		ca.eleToBeClickable();
		for (int i = 0; i < 20; i++) {
			ca.click(bc.getSlider1());
		}
		Commonactions.isElementPresent(bc.getQueryFilter());
		Commonactions.mouseOver(bc.getQueryFilter());
		Commonactions.isElementPresent(sp.getEdit());
		Commonactions.mouseOver(sp.getEdit());
		ca.click(sp.getEdit());
		Commonactions.isElementPresent(bc.getFilterName());
		ca.insertText(bc.getFilterName(), "Material");
		Commonactions.isElementPresent(bc.getAddFilter());
		ca.click(bc.getAddFilter());
		ca.eleToBeClickable();

		WebElement e3 = ca.activeElement();
		ca.eleToBeClickable();
		e3.sendKeys(Keys.DELETE);
		ca.eleToBeClickable();
		ca.insertText(e3, "Material");
		Commonactions.isElementPresent(bc.getMaterialFilter());
		ca.click(bc.getMaterialFilter());
		ca.eleToBeClickable();

		ca.click(bc.getCheckEquals());
		ca.eleToBeClickable();
		ca.click(bc.getMatches());
		ca.eleToBeClickable();
		Commonactions.isElementPresent(bc.getFiltervalue());
		ca.insertText(bc.getFiltervalue(), "Copy");
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getNewBomSecBtn());
		ca.click(bc.getNewBomSecBtn());
		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Bomsection[3]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[3]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getDeletestyleBom());
		ca.click(bc.getDeletestyleBom());
		Commonactions.isElementPresent(pp.getDelete_Btn());
		ca.click(pp.getDelete_Btn());
		Commonactions.isElementPresent(bc.getEditStyleBOM());
		ca.click(bc.getEditStyleBOM());
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), sortvalue[4]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();
		ca.eleToBeClickable();
		System.out.println("copy,Edit and delete action performed in BOM Style Section");

		for (int i = 1; i <= 3; i++) {
			ca.click(driver.findElement(By.xpath("(//td[contains(@data-csi-heading,'Active')]//input)[" + i + "]")));
		}
		System.out.println("BOM Style section created");

	}

	@Then("user Creates NewMaterialBomSection {string},{string}")
	public void user_Creates_NewMaterialBomSection(String Materialsections, String sortvalues) throws Throwable {

		String[] Materialsection = Materialsections.split(",");
		String[] Materialvalue = sortvalues.split(",");

		Commonactions.isElementPresent(bc.getMaterailBomSectionBtn());
		ca.click(bc.getMaterailBomSectionBtn());
		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Materialsection[0]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();
		ca.eleToBeClickable();
		for (int i = 0; i < 40; i++) {
			ca.click(bc.getSlider2());
		}
		Commonactions.isElementPresent(bc.getAppMaterialType());
		ca.click(bc.getAppMaterialType());
		Commonactions.isElementPresent(bc.getFabricstandalone());
		ca.click(bc.getFabricstandalone());
		Commonactions.isElementPresent(bc.getPlacementProductTypes());
		ca.click(bc.getPlacementProductTypes());
		Commonactions.isElementPresent(bc.getFabricstandalone());
		ca.click(bc.getFabricstandalone());

		for (int i = 0; i < 40; i++) {
			ca.click(bc.getSlider2());
		}

		Commonactions.isElementPresent(bc.getMaterailBomSectionBtn());
		ca.click(bc.getMaterailBomSectionBtn());
		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Materialsection[1]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), Materialvalue[0]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();
		ca.eleToBeClickable();

		for (int i = 1; i <= 2; i++) {
			ca.click(driver.findElement(By.xpath("(//div[contains(text(),'Material BOM')]//parent::div//td[contains(@data-csi-heading,'Active')]//input)["+ i + "]")));
		}

		Commonactions.isElementPresent(bc.getMaterailBomSectionBtn());
		ca.click(bc.getMaterailBomSectionBtn());
		Commonactions.isElementPresent(bc.getBOMSecVaue());
		ca.insertText(bc.getBOMSecVaue(), Materialsection[2]);
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), Materialvalue[2]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();
		Commonactions.isElementPresent(bc.getDeleteMAterialBOM());
		ca.click(bc.getDeleteMAterialBOM());
		Commonactions.isElementPresent(pp.getDelete_Btn());
		ca.click(pp.getDelete_Btn());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getEditMaterialBOM());
		ca.click(bc.getEditMaterialBOM());
		Commonactions.isElementPresent(bc.getSortvalue());
		ca.insertText(bc.getSortvalue(), Materialvalue[1]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		boolean displayed = bc.getFullScreen().isDisplayed();
		if (displayed == true) {
			System.out.println("full screen is present in Bom Section");
		}

		boolean displayed2 = bc.getPrintBtn().isDisplayed();
		if (displayed2 == true) {
			Commonactions.isElementPresent(bc.getPrintBtn());
			ca.click(bc.getPrintBtn());
			Commonactions.isElementPresent(bc.getPrintreview());
			ca.click(bc.getPrintreview());
			Commonactions.switchToWindow();
			ca.eleToBeClickable();
			Commonactions.switchToMainWindow();
			ca.eleToBeClickable();
		}
		System.out.println("Print, window handling,Edit and delete action performed in Bom material Section");
		System.out.println("BOM Material section created");

	}

	@Then("user created NewBOMTemplate {string},{string},{string},{string}")
	public void user_created_NewBOMTemplate(String Subtype, String TemplateName, String createsections, String EditComment) throws Throwable {

		String[] createsection = createsections.split(",");


		Commonactions.isElementPresent(hp.getDatasetup());
		ca.click(hp.getDatasetup());
		Commonactions.isElementPresent(bc.getProdSpecSetup());
		ca.click(bc.getProdSpecSetup());
		Commonactions.isElementPresent(bc.getBOMSection());
		Commonactions.mouseOver(bc.getBOMSection());
		ca.click(bc.getBOMSection());

		Commonactions.isElementPresent(bc.getBomTemplate());
		ca.click(bc.getBomTemplate());
		ca.eleToBeClickable();
		ca.eleToBeClickable();
		Commonactions.isElementPresent(bc.getNewStyleBOMTemplate());
		ca.click(bc.getNewStyleBOMTemplate());
		ca.eleToBeClickable();
		WebElement e3 = ca.activeElement();
		ca.eleToBeClickable();
		e3.sendKeys(Keys.DELETE);
		ca.eleToBeClickable();
		ca.insertText(e3, Subtype);
		ca.jsMouseOver();
		ca.eleToBeClickable();
		Commonactions.isElementPresent(bc.getStyleBOM());
		ca.insertText(bc.getStyleBOM(), TemplateName);
		Commonactions.isElementPresent(sp.getSaveandgo());
		ca.click(sp.getSaveandgo());
		ca.eleToBeClickable();
		System.out.println("Material Template Name created");

		Commonactions.isElementPresent(bc.getTDS());
		ca.click(bc.getTDS());
		Commonactions.isElementPresent(bc.getCanvas());
		ca.click(bc.getCanvas());
		Commonactions.isElementPresent(bc.getComposition());
		ca.click(bc.getComposition());
		Commonactions.isElementPresent(bc.getPlacement());
		ca.click(bc.getPlacement());
		Commonactions.isElementPresent(bc.getMulti_level_Placement());
		ca.click(bc.getMulti_level_Placement());

		Commonactions.isElementPresent(bc.getCanvas());
		ca.click(bc.getCanvas());
		Commonactions.isElementPresent(bc.getNewCanvasbtn());
		ca.click(bc.getNewCanvasbtn());
		Commonactions.isElementPresent(bc.getLine());
		ca.click(bc.getLine());
		ca.eleToBeClickable();

		ca.eleToBeClickable();
		Commonactions.isElementPresent(si.getSaveFinish());
		ca.click(si.getSaveFinish());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getComposition());
		ca.click(bc.getComposition());
		Commonactions.isElementPresent(bc.getCarelabelBtn());
		ca.click(bc.getCarelabelBtn());
		Commonactions.isElementPresent(bc.getCarelabelcheckbox());
		ca.click(bc.getCarelabelcheckbox());
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getTranslation());
		Commonactions.mouseOver(bc.getTranslation());
		ca.click(bc.getTranslation());
		Commonactions.isElementPresent(bc.getLangaugecheckbox1());
		ca.click(bc.getLangaugecheckbox1());
		ca.click(bc.getLangaugecheckbox2());
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getPlacement());
		ca.click(bc.getPlacement());
		Commonactions.isElementPresent(si.getNewfrommaterialExpand2());
		ca.click(si.getNewfrommaterialExpand2());
		Commonactions.isElementPresent(bc.getNewofmaterial());
		ca.click(bc.getNewofmaterial());
		ca.eleToBeClickable();
		WebElement e1 = ca.activeElement();
		ca.eleToBeClickable();
		e1.sendKeys("Shoulder");
		ca.eleToBeClickable();
		ca.jsMouseOver();
		ca.eleToBeClickable();

		boolean actiondisplay = bc.getAction1().isDisplayed();
		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}

		boolean Sectiondisplay = bc.getSections1().isDisplayed();
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getSelectSections());
		ca.click(bc.getSelectSections());
		Commonactions.isElementPresent(bc.getSectionCheckBox());
		ca.click(bc.getSectionCheckBox());
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getCreateSection());
		ca.click(bc.getCreateSection());
		Commonactions.isElementPresent(bc.getCreateBOMValue());
		ca.insertText(bc.getCreateBOMValue(), createsection[0]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getCreateSection());
		ca.click(bc.getCreateSection());
		Commonactions.isElementPresent(bc.getCreateBOMValue());
		ca.insertText(bc.getCreateBOMValue(), createsection[1]);
		Commonactions.isElementPresent(mp.getSave_btn1());
		ca.click(mp.getSave_btn1());
		ca.eleToBeClickable();

		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getArrangeSection());
		ca.click(bc.getArrangeSection());
		List<WebElement> sectionsize = driver.findElements(By.xpath("//span[text()='Arrange BOM Section']//following::span[@class='csi-dnd-handle']"));
		int s = sectionsize.size();
		WebElement element1 = driver.findElement(By.xpath("(//span[text()='Arrange BOM Section']//following::span[@class='csi-dnd-handle'])[" + s + "]"));
		Commonactions.draganddrop(bc.getArrangefrom(), element1);
		Commonactions.isElementPresent(sp.getClose());
		ca.click(sp.getClose());

		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getArrangeSection());
		ca.click(bc.getArrangeSection());
		Commonactions.isElementPresent(bc.getRestoresite());
		ca.click(bc.getRestoresite());
		ca.eleToBeClickable();
		Commonactions.isElementPresent(sp.getClose());
		ca.click(sp.getClose());
		ca.eleToBeClickable();

		if (actiondisplay == true) {
			ca.click(bc.getAction1());
		} else {
			ca.click(bc.getAction2());
		}
		if (Sectiondisplay == true) {
			ca.jsMouseOver(bc.getSections1());
		} else {
			ca.jsMouseOver(bc.getSections2());
		}
		Commonactions.isElementPresent(bc.getDeletesection());
		ca.click(bc.getDeletesection());
		ca.jsMouseOver(bc.getDeletesectioncheckbox());
		ca.click(bc.getDeletesectioncheckbox());
		Commonactions.isElementPresent(pp.getDelete_Btn());
		ca.click(pp.getDelete_Btn());
		ca.eleToBeClickable();
		boolean fabric = bc.getFabricsec().isDisplayed();
		if (fabric == true) {
			ca.click(bc.getFabricsec());
		}

		newfrommaterial();
		Commonactions.isElementPresent(bc.getSectionmaterialcheckbox());
		ca.click(bc.getSectionmaterialcheckbox());
		Commonactions.isElementPresent(si.getFinish());
		ca.click(si.getFinish());
		ca.eleToBeClickable();

		boolean apparel = bc.getAllsec().isDisplayed();
		if (apparel == true) {
			mouseOver(bc.getAllsec());
			ca.click(bc.getAllsec());
		}
		ca.eleToBeClickable();
		WebElement e2 = ca.activeElement();
		ca.eleToBeClickable();
		e2.sendKeys("Shoulder");
		ca.eleToBeClickable();
		ca.jsMouseOver();
		ca.eleToBeClickable();

		Commonactions.isElementPresent(bc.getEditbuttonBom());
		ca.click(bc.getEditbuttonBom());
		Commonactions.isElementPresent(bc.getCommentBOM());
		ca.insertText(bc.getCommentBOM(), EditComment);
		Commonactions.isElementPresent(bc.getCommentBOM());

		ca.click(mp.getSave_btn1());
		Commonactions.isElementPresent(bc.getCopyBOMsection());
		ca.click(bc.getCopyBOMsection());
		bc.jsMouseOver();
		Commonactions.isElementPresent(bc.getDeleteBOMSection());
		ca.click(bc.getDeleteBOMSection());
		ca.eleToBeClickable();
		ca.click(pp.getDelete_Btn());
		ca.eleToBeClickable();

		ca.jsScrollPagedowntoEnd();
		ca.eleToBeClickable();

		boolean all = bc.getAllsec().isDisplayed();

		if (all == true) {
			ca.click(bc.getAllsec());
		} 

		newfrommaterial();
		Commonactions.isElementPresent(bc.getSectionmaterialcheckbox());
		ca.click(bc.getSectionmaterialcheckbox());
		Commonactions.isElementPresent(si.getFinish());
		ca.click(si.getFinish());
		ca.eleToBeClickable();

	}

	public void newfrommaterial() throws Throwable {
		List<WebElement> ss = driver.findElements(By.xpath("//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td[contains(text(),'New from Material')]"));
		int s = ss.size();
		for (int i = 1; i <= s; i++) {
			boolean display = driver.findElement(By.xpath("(//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td[contains(text(),'New from Material')])["+ i + "]")).isDisplayed();
			ca.eleToBeClickable();
			if (display == true) {
				ca.click(driver.findElement(By.xpath("(//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td[contains(text(),'New from Material')])["+ i + "]")));
				ca.eleToBeClickable();
				display = false;
			}
		}
	}

}


