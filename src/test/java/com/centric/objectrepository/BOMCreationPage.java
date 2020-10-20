package com.centric.objectrepository;

import com.centric.resources.Commonactions;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class BOMCreationPage extends Commonactions {

	public BOMCreationPage() {
		PageFactory.initElements(Commonactions.driver, this);
	}

	@FindBy(xpath="//a[text()='Product Specification Setup']")
	private WebElement ProdSpecSetup;

	@FindBy(xpath="//a/span[text()='BOM Sections']")
	private WebElement BOMSection;

	@FindBy(xpath="//table[contains(@data-csi-automation,'StyleBOMSectionDefinitions')]//div[text()='New BOM Section']")
	private WebElement NewBomSecBtn;

	@FindBy(xpath="//div[contains(@data-csi-automation,'field-BOMSectionDefinition')]//div[2]/div/input")
	private WebElement BOMSecVaue;

	@FindBy(xpath="//div[contains(@data-csi-automation,'field-BOMSectionDefinition-Form-SortOrder')]//div[2]/input[1]")
	private WebElement Sortvalue;

	@FindBy(xpath="//div[text()='Sort Order must be unique for each BOM Section.']")
	private WebElement errormessage;

	@FindBy(xpath="(//td[contains(@data-csi-act,'ApplicableStyleTypes')])[3]")
	private WebElement applicablestyletype ;

	@FindBy(xpath="//label[text()='Accessories - Only Color']//parent::div/div/input")
	private WebElement AccOnlyColor;

	@FindBy(xpath="//label[text()='Apparel - Color and Size']//parent::div/div/input")
	private WebElement AppColorandSize;

	@FindBy(xpath="(//td[contains(@data-csi-heading,'QueryFilter')])[2]")
	private WebElement QueryFilter;

	@FindBy(xpath="//input[@id='editFilterName']")
	private WebElement FilterName;

	@FindBy(xpath="//span[text()='Add Filter']")
	private WebElement AddFilter;

	@FindBy(xpath="(//div[@role='region']//div[text()='Material'])[2]")
	private WebElement MaterialFilter;

	@FindBy(xpath="//tr[@role=\"presentation\"]//span[text()='Equals']")
	private WebElement CheckEquals;

	@FindBy(xpath="//td[text()='Matches']")
	private WebElement Matches;

	@FindBy(xpath="//div/input[@name='value1']")
	private WebElement Filtervalue;

	@FindBy(xpath="//span[@data-csi-act='Delete' or text()='close']")
	private WebElement DeletestyleBom;

	@FindBy(xpath="//span[@data-csi-act='Edit' or text()='mode_edit']")
	private WebElement EditStyleBOM;

	@FindBy(xpath="//table[contains(@data-csi-automation,'MaterialBOMSections')]//div[text()='New BOM Section']")
	private WebElement materailBomSectionBtn ;

	@FindBy(xpath="//td[contains(@data-csi-act,'ApplicableMaterialTypes')]/div")
	private WebElement AppMaterialType;

	@FindBy(xpath="//label[text()='Fabric - Stanadlone']//parent::div/div/input")
	private WebElement Fabricstandalone;

	@FindBy(xpath="//td[contains(@data-csi-act,'PlacementProductTypes')]")
	private WebElement PlacementProductTypes;

	@FindBy(xpath="//div[contains(text(),'Material BOM')]//parent::div//span[@data-csi-act='Delete' or text()='close']")
	private WebElement deleteMAterialBOM;

	@FindBy(xpath="//div[contains(text(),'Material BOM')]//parent::div//span[@data-csi-act='Edit' or text()='mode_edit']")
	private WebElement EditMaterialBOM;

	@FindBy(xpath="//span[@title='Enter Full Screen']")
	private WebElement fullScreen;

	@FindBy(xpath="//table[@data-csi-act='ViewPrint']//td[@role='button']")
	private WebElement PrintBtn;

	@FindBy(xpath="//table[contains(@data-csi-automation,'StyleBOMSectionDefinitions-print')]//td[text()='Print Preview']")
	private WebElement printreview;

	@FindBy(xpath="//a/span[text()='BOM Templates']")
	private WebElement BomTemplate;

	@FindBy(xpath="//div[@data-csi-automation='field-ApparelBOM-Form-Subtype']//div[3]/input[1]")
	private WebElement TemplateSubType;

	@FindBy(xpath="//table[contains(@data-csi-automation,'StyleBOMTemplates')]//div[text()='New Style BOM Template']")
	private WebElement NewStyleBOMTemplate;

	@FindBy(xpath="//div[@data-csi-automation='field-ApparelBOM-Form-Node Name']//div/div/input")
	private WebElement StyleBOM;

	@FindBy(xpath="//span[@data-csi-tab='ApparelBOMRevision-TDS' or text()='TDS']")
	private WebElement TDS;

	@FindBy(xpath="//span[@data-csi-tab='DataSheetRevision-TDSSwitchboard' or text()='Canvas']")
	private WebElement Canvas;

	@FindBy(xpath="//span[@data-csi-tab='ApparelBOMRevision-CareSymbolsComposition' or text()='Care & Composition']")
	private WebElement Composition;

	@FindBy(xpath="//span[@data-csi-tab='ProductBOMRevision-PartMaterials' and contains(text(),'Placement')]")
	private WebElement Placement;

	@FindBy(xpath="//span[@data-csi-tab='ProductBOMRevision-HierarchicalPartMaterials' or contains(text(),'Multi-level Placement')]")
	private WebElement Multi_level_Placement;

	@FindBy(xpath="//span[text()='Create a new Canvas']")
	private WebElement NewCanvasbtn;

	@FindBy(xpath="//span[@title='Line']")
	private WebElement Line;

	@FindBy(xpath="//table[contains(@data-csi-automation,'CareSymbol')]//div[text()='Select Care Labels']")
	private WebElement carelabelBtn;

	@FindBy(xpath="(//span[text()='Select Care Labels']//following::input[@type='checkbox'])[2]")
	private WebElement carelabelcheckbox;

	@FindBy(xpath="//div/span[@data-csi-act='Remove']")
	private WebElement Removecarelabel;

	@FindBy(xpath="//table[contains(@data-csi-automation,'Languages')]//div[text()='Select Translations']")
	private WebElement Translation;

	@FindBy(xpath="(//span[text()='Language']//following::input[@type='checkbox'])[2]")
	private WebElement Langaugecheckbox1;

	@FindBy(xpath="(//span[text()='Language']//following::input[@type='checkbox'])[4]")
	private WebElement Langaugecheckbox2;

	@FindBy(xpath="//table[contains(@data-csi-automation,'ToolbarNewAction')]//td[contains(text(),'New of Material')]")
	private WebElement Newofmaterial;

	@FindBy(xpath="(//span[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-Actions']//span[text()='Actions'])[1]")
	private WebElement Action1;
	
	@FindBy(xpath="(//span[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-Actions']//span[text()='Actions'])[2]")
	private WebElement Action2;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-Sections']//td[text()='Sections'])[1]")
	private WebElement Sections1;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-Sections']//td[text()='Sections'])[2]")
	private WebElement Sections2;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-BomSectionMenuSelect']//td[text()='Select Section'])[2]")
	private WebElement SelectSections;

	@FindBy(xpath="//span[text()='BOM Section']//following::th//input[@type='checkbox']")
	private WebElement SectionCheckBox;

	@FindBy(xpath="(//span[text()='BOM Section']//following::div[contains(@class,'dijitSliderIncrementIconH')]//span[text()='+']/parent::div)[1]")
	private WebElement slider1;

	@FindBy(xpath="(//span[text()='BOM Section']//following::div[contains(@class,'dijitSliderIncrementIconH')]//span[text()='+']/parent::div)[2]")
	private WebElement slider2;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-BomSectionMenuCreate']//td[text()='Create Section'])[2]")
	private WebElement CreateSection;

	@FindBy(xpath="//div[@data-csi-automation='field-BOMSectionDefinition-AdHocForm-Node Name']//div/div/input")
	private WebElement CreateBOMValue;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-BomSectionMenuArrange'])[2]")
	private WebElement arrangeSection;

	@FindBy(xpath="//span[text()='Arrange BOM Section']//following::span[@class=\"csi-dnd-handle\"]")
	private WebElement Arrangefrom;

	@FindBy(xpath="//span[@data-csi-automation='plugin-BOMSectionContainer-ArrangeBOMSections-BomSectionMenuSort' or text()='Restore Site Order']")
	private WebElement Restoresite;

	@FindBy(xpath="(//tr[@data-csi-automation='plugin-ProductBOMRevision-PartMaterials-BomSectionMenuDelete'])[2]")
	private WebElement deletesection;

	@FindBy(xpath="//td[contains(text(),'Delete')]//parent::tr//input")
	private WebElement deletesectioncheckbox;

	@FindBy(xpath="//span[contains(text(),'fabric section')]//following::td[@role='button']")
	private WebElement fabricsectionexpand;

	@FindBy(xpath="//span[contains(text(),'All section')]//following::td[@role='button']")
	private WebElement AllsectionExpand;

	@FindBy(xpath="//span[text()='New from Material']//following::input[@type='checkbox']")
	private WebElement Sectionmaterialcheckbox;

	@FindBy(xpath="//span[text()='chat_bubble_outline']")
	private WebElement EditbuttonBom;

	@FindBy(xpath="//form//div/p")
	private WebElement commentBOM;

	@FindBy(xpath=" //td/div/span[text()='content_copy']")
	private WebElement CopyBOMsection;

	@FindBy(xpath="(//td/div/span[text()='close'])[2]")
	private WebElement DeleteBOMSection;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td[@role='button'])[2]")
	private WebElement fabricsec;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td//div[text()='add'])[1]")
	private WebElement Apparelsec;
			
	@FindBy(xpath="(//table[contains(@data-csi-automation,'actionRow-ProductBOMRevision-PartMaterials')]//td[@role='button'])[4]")
	private WebElement Allsec;

	public WebElement getProdSpecSetup() {
		return ProdSpecSetup;
	}

	public WebElement getBOMSection() {
		return BOMSection;
	}

	public WebElement getNewBomSecBtn() {
		return NewBomSecBtn;
	}

	public WebElement getBOMSecVaue() {
		return BOMSecVaue;
	}

	public WebElement getSortvalue() {
		return Sortvalue;
	}

	public WebElement getErrormessage() {
		return errormessage;
	}

	public WebElement getApplicablestyletype() {
		return applicablestyletype;
	}

	public WebElement getAccOnlyColor() {
		return AccOnlyColor;
	}

	public WebElement getAppColorandSize() {
		return AppColorandSize;
	}

	public WebElement getQueryFilter() {
		return QueryFilter;
	}

	public WebElement getMaterialFilter() {
		return MaterialFilter;
	}

	public WebElement getFilterName() {
		return FilterName;
	}

	public WebElement getAddFilter() {
		return AddFilter;
	}

	public WebElement getCheckEquals() {
		return CheckEquals;
	}

	public WebElement getMatches() {
		return Matches;
	}

	public WebElement getFiltervalue() {
		return Filtervalue;
	}

	public WebElement getDeletestyleBom() {
		return DeletestyleBom;
	}

	public WebElement getEditStyleBOM() {
		return EditStyleBOM;
	}

	public WebElement getMaterailBomSectionBtn() {
		return materailBomSectionBtn;
	}

	public WebElement getAppMaterialType() {
		return AppMaterialType;
	}

	public WebElement getFabricstandalone() {
		return Fabricstandalone;
	}

	public WebElement getPlacementProductTypes() {
		return PlacementProductTypes;
	}

	public WebElement getDeleteMAterialBOM() {
		return deleteMAterialBOM;
	}

	public WebElement getEditMaterialBOM() {
		return EditMaterialBOM;
	}

	public WebElement getFullScreen() {
		return fullScreen;
	}

	public WebElement getPrintBtn() {
		return PrintBtn;
	}

	public WebElement getPrintreview() {
		return printreview;
	}

	public WebElement getBomTemplate() {
		return BomTemplate;
	}

	public WebElement getTemplateSubType() {
		return TemplateSubType;
	}

	public WebElement getNewStyleBOMTemplate() {
		return NewStyleBOMTemplate;
	}

	public WebElement getStyleBOM() {
		return StyleBOM;
	}

	public WebElement getTDS() {
		return TDS;
	}

	public WebElement getCanvas() {
		return Canvas;
	}

	public WebElement getComposition() {
		return Composition;
	}

	public WebElement getPlacement() {
		return Placement;
	}

	public WebElement getMulti_level_Placement() {
		return Multi_level_Placement;
	}

	public WebElement getNewCanvasbtn() {
		return NewCanvasbtn;
	}

	public WebElement getLine() {
		return Line;
	}

	public WebElement getCarelabelBtn() {
		return carelabelBtn;
	}

	public WebElement getCarelabelcheckbox() {
		return carelabelcheckbox;
	}

	public WebElement getRemovecarelabel() {
		return Removecarelabel;
	}

	public WebElement getTranslation() {
		return Translation;
	}

	public WebElement getLangaugecheckbox1() {
		return Langaugecheckbox1;
	}

	public WebElement getLangaugecheckbox2() {
		return Langaugecheckbox2;
	}

	public WebElement getNewofmaterial() {
		return Newofmaterial;
	}

	public WebElement getAction1() {
		return Action1;
	}
	
	public WebElement getAction2() {
		return Action2;
	}

	public WebElement getSections1() {
		return Sections1;
	}

	public WebElement getSections2() {
		return Sections2;
	}

	public WebElement getSelectSections() {
		return SelectSections;
	}

	public WebElement getSectionCheckBox() {
		return SectionCheckBox;
	}

	public WebElement getSlider1() {
		return slider1;
	}

	public WebElement getSlider2() {
		return slider2;
	}

	public WebElement getCreateSection() {
		return CreateSection;
	}

	public WebElement getCreateBOMValue() {
		return CreateBOMValue;
	}

	public WebElement getArrangeSection() {
		return arrangeSection;
	}

	public WebElement getArrangefrom() {
		return Arrangefrom;
	}

	public WebElement getRestoresite() {
		return Restoresite;
	}

	public WebElement getDeletesection() {
		return deletesection;
	}

	public WebElement getDeletesectioncheckbox() {
		return deletesectioncheckbox;
	}

	public WebElement getFabricsectionexpand() {
		return fabricsectionexpand;
	}

	public WebElement getAllsectionExpand() {
		return AllsectionExpand;
	}

	public WebElement getSectionmaterialcheckbox() {
		return Sectionmaterialcheckbox;
	}

	public WebElement getEditbuttonBom() {
		return EditbuttonBom;
	}

	public WebElement getCommentBOM() {
		return commentBOM;
	}

	public WebElement getCopyBOMsection() {
		return CopyBOMsection;
	}

	public WebElement getDeleteBOMSection() {
		return DeleteBOMSection;
	}
	
	public WebElement getFabricsec() {
		return fabricsec;
	}

	public WebElement getApparelsec() {
		return Apparelsec;
	}

	public WebElement getAllsec() {
		return Allsec;
	}


}
