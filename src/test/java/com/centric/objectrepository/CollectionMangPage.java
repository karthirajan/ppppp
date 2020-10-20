package com.centric.objectrepository;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.centric.resources.Commonactions;

public class CollectionMangPage {
	
	
	public CollectionMangPage() {
		PageFactory.initElements(Commonactions.driver, this);
	}

	@FindBy(xpath="//input[@value='MarketingSegmentName']")
	private WebElement enum_marketingsegment;
	
	@FindBy(xpath="//td[contains(@data-csi-act,'LocaleName')]")
	private WebElement enum_displayname;
	
	@FindBy(xpath="(//span[text()='Currencies'])[1]")
	private WebElement currency;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'Data-Currency')]//div/div)[2]")
	private WebElement currencybtn;
	
	@FindBy(xpath="(//div[text()='New Currency']//following::span[@data-csi-act='Delete'])[1]")
	private WebElement currencydeletebtn;
	
	@FindBy(xpath="//span[text()='Delete Currency?']//following::span[text()='Cancel']")
	private WebElement currencycancel;
	
	@FindBy(xpath="(//span[text()='Currency Tables'])[1]")
	private WebElement CurrencyTable;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'Data-CurrencyTables')]//div/div)[2]")
	private WebElement Currencytablebtn;
	
	@FindBy(xpath="(//div//span[contains(text(),'Go to Dialog')])")
	private WebElement gotodialog;
	
	@FindBy(xpath="(//td[contains(text(),'Dollar')]//preceding-sibling::td)//input")
	private WebElement Dollar;
	
	@FindBy(xpath="(//td[contains(text(),'Rupee')]//preceding-sibling::td)//input")
	private WebElement Rupee;
	
	@FindBy(xpath="//td[@data-csi-heading='Node Name::0']/a")
	private WebElement Currencyname;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'CurrencyExchangeTable-ExchangeRates')]//div/div)[2]")
	private WebElement newfromcurrencybtn;
	
	@FindBy(xpath="//span[text()='Sales Setup']")
	private WebElement salessetup;
	
	@FindBy(xpath="//span[text()='Sales Markets']")
	private WebElement salesmarket;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'SalesMarkets')]//div/div)[2]")
	private WebElement salesmarketbtn;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'SalesMarket')]/div)/div/input)[1]")
	private WebElement salemarketvalue;
	
	@FindBy(xpath="(//div[contains(@data-csi-automation,'SalesMarket-Form-Currency')])/div[3]/input[1]")
	private WebElement currencyvalue;
	
	@FindBy(xpath="//span[text()='Sales Divisions']")
	private WebElement saledivision;

	@FindBy(xpath="(//table[contains(@data-csi-automation,'SalesDivisions')]//div/div)[2]")
	private WebElement salesdivisionbtn;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'SalesDivision')]/div)/div/input)[1]")
	private WebElement salesdivisionvalue;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'SourcingItem-Contacts')]//div/div)[2]")
	private WebElement newcontactbtn;
	
	@FindBy(xpath="((//a[text()='michel']/parent::td[@data-csi-act='Node Name::0'])/following-sibling::td/div/span[text()='content_copy'])[1]")
	private WebElement copycontact;
	
	@FindBy(xpath="//a[contains(text(),'COPY')]//following::span[@data-csi-act='Delete']")
	private WebElement deletecontact;
	
	@FindBy(xpath="(//span[text()='Sales Divisions'])[2]")
	private WebElement saledivision2;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingCollections') or text()='Marketing Collections']")
	private WebElement marketingcollection ;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingLooks') or text()='Marketing Looks']")
	private WebElement MarketingLook;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingTools') or text()='Marketing Tools']")
	private WebElement MarketingTool;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'SalesOrdersAndLineItems') or text()='Sales Order']")
	private WebElement SalesOrder;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'SalesOrderGroups') or text()='Sales Order Groups']")
	private WebElement salesordergroup;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'CatalogConfig') or text()='Catalog Configuration']")
	private WebElement catalogconfig;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MarketingLooks')]//div/div)[2]")
	private WebElement marketinglookbtn;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MarketingTools')]//div/div)[2]")
	private WebElement marketingtoolbtn;
	
	@FindBy(xpath="//a[contains(text(),'Banner')]//following::div/input[@type='checkbox']")
	private WebElement bannercheckbox;
	
	@FindBy(xpath="//a[contains(text(),'Canoply')]//following::div/input[@type='checkbox']")
	private WebElement canoplycheckbox;
	
	@FindBy(xpath="//a[contains(text(),'Canoply')]//following::span[@data-csi-act='Delete']")
	private WebElement canoplydelete;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MarketingCollections')]//div/div)[2]")
	private WebElement marketingcoll_btn;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'MarketingCollection')]/div)/div/input)[1]")
	private WebElement marketingcollvalue;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'MarketingCollection-Form-BaseCurrency')])/div/input)[3]")
	private WebElement marketingcurrenyvalue;

	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingCollection-MCProducts') or  text()='Marketing Products']")
	private WebElement marketingproduct;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MCProducts')])[1]//tbody/tr/td[2]")
	private WebElement MProductExpand;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MCProducts')])//td[text()='New from Style']")
	private WebElement newfromstyle;
	
	@FindBy(xpath="(//td[contains(text(),'Color and Size')]//preceding-sibling::td)//input")
	private WebElement apparelcolorandsizecheckbox;
	
	@FindBy(xpath="(//a//parent::td//following::td[contains(@data-csi-act,'LocalizedName')])[1]")
	private WebElement localizedname;
	
	@FindBy(xpath="//div[contains(@class,'scrollbar')]//span[text()='+']/parent::div")
	private WebElement scrollicon;
	
	@FindBy(xpath="(//a//parent::td//following::td[contains(@data-csi-act,'Code')])[1]")
	private WebElement MPcode;
	
	@FindBy(xpath="(//a//parent::td//following::td[contains(@data-csi-act,'WholesalePrice')])[1]")
	private WebElement wholesaleprice;
	
	@FindBy(xpath="(//a//parent::td//following::td[contains(@data-csi-act,'RetailPrice')])[1]")
	private WebElement retailproce;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MCProduct')]//div/div)[2]")
	private WebElement marketingproductbtn;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'MCProduct')]/div)/div/input)[1]")
	private WebElement marketingproductvalue;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'MCProduct-Form-Code')]/div)/div/input)[1]")
	private WebElement marketingproductcode;
	
	@FindBy(xpath="(//div[contains(@data-csi-automation,'MCProduct-Form-ProductStyleType')])//div[3]/input[1]")
	private WebElement styletype;
	
	@FindBy(xpath="//td[contains(@data-csi-act,'WholesalePrice')]")
	private WebElement MPrdtWSP;
	
	@FindBy(xpath="//td[contains(@data-csi-act,'RetailPrice')]")
	private WebElement MPRetailPrice;
	
	@FindBy(xpath="//td[contains(@data-csi-act,'MCSizeRange')]")
	private WebElement MPsizeRange;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MCProductColors')]//div/div)[2]")
	private WebElement newmarketingcolorway;
	
	@FindBy(xpath="((//a[text()='Blue']/parent::td[@data-csi-act='Node Name::0'])/following-sibling::td/div/span[text()='content_copy'])[1]")
	private WebElement Bluecopy;
	
	@FindBy(xpath="//a[contains(text(),'Shirt')]")
	private WebElement Materialproductname;

	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingCollection-MCMaterials') or text()='Marketing Materials']")
	private WebElement Marketingmaterial;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MarketingCollection-MCMaterials')]//div/div)[2]")
	private WebElement NewfrommaterialBtn;
	
	@FindBy(xpath="(//span[contains(text(),'New from Material')]//following::div/input[@role='checkbox'])[1]")
	private WebElement Newfrommaterialcheckbox;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'MarketingCollection-MarketingLooks')]//div/div)[2]")
	private WebElement MarketingLookBtn;
	
	@FindBy(xpath="(//td[contains(text(),'Color and Size')]//preceding-sibling::td)//input")
	private WebElement colorsizecheckbox;
	
	@FindBy(xpath="(//td[contains(text(),'MP')]//preceding-sibling::td)//input")
	private WebElement MPcheckbox;
	
	@FindBy(xpath="(//a[contains(text(),'Apparel')]//parent::td//following::td[contains(@data-csi-act,'MainMaterial')])[1]")
	private WebElement Apparelmaterial;
	
	@FindBy(xpath="(//a[contains(text(),'MP')]//parent::td//following::td[contains(@data-csi-act,'MainMaterial')])[1]")
	private WebElement MPMaterial;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingCollection-MarketingSegments') or text()='Marketing Segments']")
	private WebElement marketingsegment;
	
	@FindBy(xpath="//span[contains(@data-csi-tab,'MarketingCollections') or text()='Marketing Collection']")
	private WebElement marketingColl;
	
	@FindBy(xpath="//td[contains(@data-csi-heading,'Segment')]")
	private WebElement segmentvalue;
	
	@FindBy(xpath="(//a[contains(text(),'Apparel')]//parent::td//following::td[contains(@data-csi-act,'MarketingSegment')])[1]")
	private WebElement segment1;
	
	@FindBy(xpath="(//a[contains(text(),'MP')]//parent::td//following::td[contains(@data-csi-act,'MarketingSegment')])[1]")
	private WebElement segment2;
	
	@FindBy(xpath="//span[@data-csi-act='CMReleaseToMarkets']")
	private WebElement Releasetomarket;
	
	@FindBy(xpath="//span[@data-csi-act='CMReleaseToCustomers']")
	private WebElement ReleasetoCustomer;
	
	@FindBy(xpath="//span[text()='Select Sales Markets']")
	private WebElement selectsalesmarket;
	
	@FindBy(xpath="(//td[contains(text(),'US')]//preceding-sibling::td)//input")
	private WebElement usmarketcheckbox;
	
	@FindBy(xpath="//table[contains(@data-csi-automation,'MarketingCollection-SalesCollections')]")
	private WebElement pushmarketproduct;
	
	@FindBy(xpath="//td[contains(@data-csi-act,'State')]/div[text()='DRAFT']")
	private WebElement selectstate;
	
	@FindBy(xpath="(//table[contains(@data-csi-automation,'SalesOrders')]//div/div)[2]")
	private WebElement NewSalesOrderbtn;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'field-SalesOrder')]/div)/div/input)[1]")
	private WebElement salesorderValue;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'SalesOrder-Form-Market')]/div)[3]/input)[1]")
	private WebElement salesmarketvalue;
	
	@FindBy(xpath="((//div[contains(@data-csi-automation,'field-SalesMarket-Form-Node')]/div)[2]/div/input)[1]")
	private WebElement salesmarketvalue1;

	public WebElement getEnum_marketingsegment() {
		return enum_marketingsegment;
	}

	public WebElement getEnum_displayname() {
		return enum_displayname;
	}

	public WebElement getCurrency() {
		return currency;
	}

	public WebElement getCurrencybtn() {
		return currencybtn;
	}

	public WebElement getCurrencydeletebtn() {
		return currencydeletebtn;
	}

	public WebElement getCurrencycancel() {
		return currencycancel;
	}

	public WebElement getCurrencyTable() {
		return CurrencyTable;
	}

	public WebElement getCurrencytablebtn() {
		return Currencytablebtn;
	}

	public WebElement getGotodialog() {
		return gotodialog;
	}

	public WebElement getDollar() {
		return Dollar;
	}

	public WebElement getRupee() {
		return Rupee;
	}

	public WebElement getCurrencyname() {
		return Currencyname;
	}

	public WebElement getNewfromcurrencybtn() {
		return newfromcurrencybtn;
	}

	public WebElement getSalessetup() {
		return salessetup;
	}

	public WebElement getSalesmarket() {
		return salesmarket;
	}

	public WebElement getSalesmarketbtn() {
		return salesmarketbtn;
	}

	public WebElement getSalemarketvalue() {
		return salemarketvalue;
	}

	public WebElement getCurrencyvalue() {
		return currencyvalue;
	}

	public WebElement getSaledivision() {
		return saledivision;
	}

	public WebElement getSalesdivisionbtn() {
		return salesdivisionbtn;
	}

	public WebElement getSalesdivisionvalue() {
		return salesdivisionvalue;
	}

	public WebElement getNewcontactbtn() {
		return newcontactbtn;
	}

	public WebElement getCopycontact() {
		return copycontact;
	}

	public WebElement getDeletecontact() {
		return deletecontact;
	}

	public WebElement getSaledivision2() {
		return saledivision2;
	}

	public WebElement getMarketingcollection() {
		return marketingcollection;
	}

	public WebElement getMarketingLook() {
		return MarketingLook;
	}

	public WebElement getMarketingTool() {
		return MarketingTool;
	}

	public WebElement getSalesOrder() {
		return SalesOrder;
	}

	public WebElement getSalesordergroup() {
		return salesordergroup;
	}

	public WebElement getCatalogconfig() {
		return catalogconfig;
	}

	public WebElement getMarketinglookbtn() {
		return marketinglookbtn;
	}
	
	public WebElement getMarketingtoolbtn() {
		return marketingtoolbtn;
	}

	public WebElement getBannercheckbox() {
		return bannercheckbox;
	}

	public WebElement getCanoplycheckbox() {
		return canoplycheckbox;
	}

	public WebElement getCanoplydelete() {
		return canoplydelete;
	}

	public WebElement getMarketingcoll_btn() {
		return marketingcoll_btn;
	}

	public WebElement getMarketingcollvalue() {
		return marketingcollvalue;
	}

	public WebElement getMarketingcurrenyvalue() {
		return marketingcurrenyvalue;
	}

	public WebElement getMarketingproduct() {
		return marketingproduct;
	}

	public WebElement getMProductExpand() {
		return MProductExpand;
	}

	public WebElement getNewfromstyle() {
		return newfromstyle;
	}

	public WebElement getApparelcolorandsizecheckbox() {
		return apparelcolorandsizecheckbox;
	}

	public WebElement getLocalizedname() {
		return localizedname;
	}

	public WebElement getScrollicon() {
		return scrollicon;
	}

	public WebElement getMPcode() {
		return MPcode;
	}

	public WebElement getWholesaleprice() {
		return wholesaleprice;
	}

	public WebElement getRetailproce() {
		return retailproce;
	}

	public WebElement getMarketingproductbtn() {
		return marketingproductbtn;
	}

	public WebElement getMarketingproductvalue() {
		return marketingproductvalue;
	}

	public WebElement getMarketingproductcode() {
		return marketingproductcode;
	}

	public WebElement getStyletype() {
		return styletype;
	}

	public WebElement getMPrdtWSP() {
		return MPrdtWSP;
	}

	public WebElement getMPRetailPrice() {
		return MPRetailPrice;
	}

	public WebElement getMPsizeRange() {
		return MPsizeRange;
	}

	public WebElement getNewmarketingcolorway() {
		return newmarketingcolorway;
	}

	public WebElement getBluecopy() {
		return Bluecopy;
	}

	public WebElement getMaterialproductname() {
		return Materialproductname;
	}

	public WebElement getMarketingmaterial() {
		return Marketingmaterial;
	}

	public WebElement getNewfrommaterialBtn() {
		return NewfrommaterialBtn;
	}

	public WebElement getNewfrommaterialcheckbox() {
		return Newfrommaterialcheckbox;
	}

	public WebElement getMarketingLookBtn() {
		return MarketingLookBtn;
	}

	public WebElement getColorsizecheckbox() {
		return colorsizecheckbox;
	}

	public WebElement getMPcheckbox() {
		return MPcheckbox;
	}

	public WebElement getApparelmaterial() {
		return Apparelmaterial;
	}

	public WebElement getMPMaterial() {
		return MPMaterial;
	}

	public WebElement getMarketingsegment() {
		return marketingsegment;
	}
	
	public WebElement getMarketingColl() {
		return marketingColl;
	}

	public WebElement getSegmentvalue() {
		return segmentvalue;
	}

	public WebElement getSegment1() {
		return segment1;
	}

	public WebElement getSegment2() {
		return segment2;
	}

	public WebElement getReleasetomarket() {
		return Releasetomarket;
	}

	public WebElement getReleasetoCustomer() {
		return ReleasetoCustomer;
	}

	public WebElement getSelectsalesmarket() {
		return selectsalesmarket;
	}

	public WebElement getUsmarketcheckbox() {
		return usmarketcheckbox;
	}

	public WebElement getPushmarketproduct() {
		return pushmarketproduct;
	}

	public WebElement getSelectstate() {
		return selectstate;
	}

	public WebElement getNewSalesOrderbtn() {
		return NewSalesOrderbtn;
	}

	public WebElement getSalesorderValue() {
		return salesorderValue;
	}

	public WebElement getSalesmarketvalue() {
		return salesmarketvalue;
	}
	
	public WebElement getSalesmarketvalue1() {
		return salesmarketvalue1;
	}

}
