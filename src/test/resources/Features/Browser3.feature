#Author: karthick@kripya.com
@Selenium @Sourcing @Browser3
Feature: Browser - 3


      
  @ContractualSetup
  Scenario Outline: Contractual documents creation
    Given User launches centric application
    And User Click on setup icon
    And User creates contractual documents "<ContrctAll>","<Simple>","<RA>","<HED>","<HRD>"

    Examples: 
      | ContrctAll | Simple      | RA      | HED      | HRD      |
      | CDOC-ALL   | CDOC-simple | CDOC-RA | CDOC-HED | CDOC-HRD |

 

  #-----------------------------------------------------------------------------------------------------------------
  @ThemeSetup
  Scenario Outline: Theme Master creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates theme master "<All>","<single>","<multiple>","<AVsingle>"
    And User creates theme BOM type "Theme Lock","No Theme Lock"

    Examples: 
      | All           | single           | multiple           | AVsingle                    |
      | TM-All Season | TM-Single Season | TM-Multiple Season | TM-Allow material variation |

  #-----------------------------------------------------------------------------------------------------------------
  

  Scenario Outline: capability and operation group validation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates capability "<Shipping Port>","<Factory>","<Supplier>" and Operation group "<OperationGroup>"
    And User creates sub routing "<SubRoutingA>","<SubRoutingB>"
    #Then Logout from the Application

    Examples: 
      | Shipping Port       | Factory        | Supplier        | OperationGroup | SubRoutingA     | SubRoutingB     |
      | Cut - Shipping Port | Pack - Factory | Ship - Supplier | MAKE           | MAKE Subrouting | SHIP Subrouting |

  #-------------------------------------------------------------------------------------------------------------
  
  Scenario Outline: Sales Region and country creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates Country "<CountryA>","<CountryB>","<CountryC>"
    And User creates sales region "<SalesRegionA>","<SalesRegionB>"
   # Then Logout from the Application

    Examples: 
      | CountryA       | CountryB       | CountryC                        | SalesRegionA | SalesRegionB |
      | India-IND-Asia | China-CHN-Asia | United States-USA-North America | CAD SR       | USA SR       |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: HTS code creation
   #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates HTS code "<HTS_A>","<HTS_B>","<Description>","<From>","<To>","<Duty>"
    Then Logout from the Application

    Examples: 
      | HTS_A          | HTS_B        | Description | From                | To                  | Duty  |
      | India HTS Code | USA HTS Code | Automation  | India/United States | United States/India | 15/20 |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Container creation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates container "<container>","<Volume>","<Weight>","<Efficiency>"

    #Then Logout from the Application
    Examples: 
      | container | Volume | Weight | Efficiency |
      | Container | 30/40  | 15/10  | 70/80      |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Shipping Port creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates shipping port "<portA>","<portB>","<portC>","<portD>"

    # Then Logout from the Application
    Examples: 
      | portA                  | portB                 | portC                      | portD                            |
      | Chennai Port/India/231 | Mumbai Port/India/123 | SFS port/United States/456 | New York Port/United States/7855 |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Shpping Rate creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates shipping rate "<rateA>","<rateB>","<Freightrate>","<origin>","<destination>","<container>"

    Examples: 
      | rateA                 | rateB                 | Freightrate | origin     | destination | container |
      | India - United States | United States - India | 30000/40000 | Mumbai/SFS | SFS/Mumbai  | Container |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Customer creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates customer "<CustomerA>","<CustomerB>","<CustomerC>"

    Examples: 
      | CustomerA   | CustomerB      | CustomerC            |
      | H&M - India | Target - China | Zara - United States |

  #   -----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Shipment creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates Shipment "<Shipment>","<PortFrom>","<PortTo>"
    #Then Logout from the Application

    Examples: 
      | Shipment | PortFrom    | PortTo   |
      | Fedex    | Mumbai Port | SFS port |

  #   -----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Review creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates and validates Questions subsection"<Percentage>"
    And User validates review templates "<Review>"

    #Then Logout from the Application
    Examples: 
      | Review                                | Percentage |
      | Sourcing Review Template - Automation | 25/55      |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Template creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates routing template "<SRoutingTemp>","<Description>","Divider","<Factory>"
    #Then Go to homepage
    And User creates quote template "<SQuoteTemp>","<Placement>"

    Examples: 
      | Placement            | SQuoteTemp                | SRoutingTemp                | Description | Factory         |
      | Shoulder - placement | Supplier Quote - Template | Supplier Routing - Template | Automation  | Chennai Factory |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: SR Template creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates data package template in specification "DPT - Style","DPT - Material"
    Then Go to homepage
    And User creates supplier request templates "<TemplateA>","<TemplateB>","<Supplier>","<Style>","<Material>"

    Examples: 
      | Supplier | Style         | Material         | TemplateA   | TemplateB      |
      | Supplier | Style - Proto | Material - Proto | SRT - Style | SRT - Material |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Factory creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates factory "<FactoryA>","<FactoryB>","<Percentage>","<min-order>","<re-order>"
    And User validates factory reviews "<FactoryA>"
    And User validates supplier reviews

    Examples: 
      | FactoryA        | FactoryB           | Percentage | min-order | re-order |
      | Chennai Factory | Los Angels Factory |         20 |      1000 |      100 |

  #   -----------------------------------------------------------------------------------------------------------------
  @Libraries
  Scenario Outline: Libraries Creation and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to tab
    Then user creates the data for the libraries "<CareLibrary>"

    Examples: 
      | CareLibrary   |
      | Electric Boho |

  #-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Libraries
  Scenario: Libraries Creation and validation
    # Then Go to homepage
    Then user creates the data for the color libraries "Blue Haze"

  #-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Libraries
  Scenario: Libraries Creation and validation
    Then Go to homepage
    Then user creates the data for New Material library "Fall 2020 Materials"

  #-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Libraries
  Scenario: Libraries Creation and validation
    Then Go to homepage
    And user creates the data for print design library "Fall 2020 Concept Prints"

  #-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Libraries
  Scenario: Libraries Creation and validation
    #Then Go to homepage
    Then user creates the data for New size library "Winter 2020 3D"

  #Examples:
  #  |CareLibrary  |NewSpecLibrary|NewMatLibrary      |NewPrintDesignLibrary   |NewSizeLibrary|
  #  |Electric Boho|Blue Haze     |Fall 2020 Materials|Fall 2020 Concept Prints|Winter 2020 3D|
  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Templates
  Scenario Outline: User create templates
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to template tab
    And user creates the template "<Template>","<Type>"
    Then user creates the datasheet template for style "<DataSheetType>","<TemplateStyle>"
    Then Go to homepage
    And user creates the datasheet template for material "<DataSheetType1>","<TemplateMaterial>"

    Examples: 
      | Template                     | Type           | DataSheetType                        | TemplateStyle   | DataSheetType1                                    | TemplateMaterial |
      | Costing Package,DPT Material | Style,Material | Artwork,Routing,Size Chart,Style BOM | Costing Package | Test Run,Material BOM,Routing,Material Data Sheet | DPT Material     |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @canvas
  Scenario Outline: User create canvas
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to canvas tab
    Then user creates a manage view for the page "<RemoveAttributes>"
    And user creates the canvas template "<Template>","<Type>"
    Then verify the description of canvas template screen message "<TemplateStyle>"
    And create a canvas and select the rectangle box

    Examples: 
      | Template                                            | Type                 | TemplateStyle            | RemoveAttributes    |
      | 1st Proto Review-Apparel,Fit Correction:Across Back | Artwork,Style Review | 1st Proto Review-Apparel | Description,Subtype |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @canvas @SizeChartCanvas
  Scenario Outline: SizeChart Canvas creation & validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to SizeCanvas tab
    Then user creates the sizeChart canvas "<SizeChartName>"
    And user creates the dimension inside the canvas "Bra"
    Then user enters the values in the dimensions "<Dimensions>"
    Then Logout from the Application

    Examples: 
      | SizeChartName             | Dimensions |
      | Bra,Womens Basic Knit Tee | A15E       |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeItems
  Scenario Outline: User creates size items and validation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to size items tab
    And user creates the size item "<SizeItem>","<SizeSpec>"
    Then user creates the size item with all the types for Template scenario "<SizeItems>","<SizeSpec>"
    And user creates the spec items with different types "<ValueItems>","<SizeSpec>"
    Then Validate the options like copy and delete for size item "Reg_colorCopy","<SizeItemCopy>"
    And user creation of tags in the size item "<SizeItem>","<SizeItemTag>"

    Examples: 
      | SizeItem                                                 | SizeItemCopy  | SizeSpec                              | SizeItemTag              | SizeItems                                                                                                                 | ValueItems                 |
      | Armhole_Bound,Armhole_Faced,Belt Loops_Clean Finish Make | Armhole_Bound | Characteristic,Construction,Packaging | sleeve,armhole,waistband | Alphanumeric,Barcode,Email Address,Hyperlink,Latest Multi-line Comment,Multi-line Comment,Multi-line Text,Phone,Rich Text | double,integer,ref,reflist |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @canvas @SpecSizeDefinitions
  Scenario Outline: SpecSection definition Canvas creation & validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to SpecSizeCanvas tab
    Then user creates the Spec Section definitions canvas "<SpecSectionName>","<SizeSpec>"
    And user creates the data inside the characteristics value "<NameOfNewSpecSectionInsideChar>","<SpecSectionName>"
    Then user selects the values from the options of spec items "<NameOfNewSpecSectionInsideChar>"
    And user creates a custom view to verify the data output "<Attributes>","<DeselectAttributes>"
    Then user validate the special created data

    #Then Go to homepage
    #When user navigates to SpecSizeCanvas tab
    #Then user validate for next data type "<NameOfNewSpecSectionInsideChar>","<SpecSectionName>"
    #Then Logout from the Application
    Examples: 
      | SpecSectionName                                              | SizeSpec                              | NameOfNewSpecSectionInsideChar    | Attributes | DeselectAttributes            |
      | Model of Characteristics,KnitBottoms,Lighting Specifications | Characteristic,Construction,Packaging | Mount holder,General Construction | Value Type | Description,Image (Spec Item) |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material ColorSpec creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User update material property table with "<SizeRange>"
    And User creates material colorway "<ColorwayA>","<Description>"

    Examples: 
      | SizeRange | Description | ColorwayA     |
      | MensJeans | Automation  | Green CM - 01 |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Sample Creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates material sample combination "<MaterialSample>","<Material>","<DimensionA>","<DimensionB>","<Code>"

    Examples: 
      | Code | Material         | MaterialSample          | DimensionA | DimensionB              |
      |  123 | Material - Proto | Jeans Sample - Material | Colors     | Sample per active color |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Quality Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates Material quality "<TestrunA>","<TestRunB>","<TestGrpA>","<TestGrpB>","<SampleA>","<SampleB>","<User>","<Supplier>"
    And User approve material test run
    And User Creates material test run templates

    Examples: 
      | TestrunA             | TestRunB             | TestGrpA            | TestGrpB        | SampleA | SampleB | User          | Supplier |
      | Acid Test - Material | Wash Test - Material | Chemical Test Group | Wash Test Group | Green   | EGRET   | Administrator | Supplier |

  #-----------------------------------------------------------------------------------------------------------------
  @InspectionStyleCreation
  Scenario Outline: Inspection style Specification creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Style for inspection "<BOMName>"
    And User creates ImageDatasheet "<ImageName>","<Description>"
    Then User creates Review "<ReviewName>","<ReviewDesc>","<canvasNote>"
    And User creates sizechart "<InsSize>"
    Then User creates spec "<specvalue>","<datasheet>","<specdesc>","<customspecvalue>","<specialvalue>"
    And User Copy BOM Name "<Bomcopy1>","<Bomcopy2>"
    Then User creates Inspection and verify the created items in Style Specification "<InspectionName>","<Samplingvalue>","<SupplierValue>"

    Examples: 
      | BOMName | ImageName | Description              | ReviewName       | ReviewDesc               | canvasNote         | InsSize       | specvalue | datasheet          | specdesc           | customspecvalue     | specialvalue   | Bomcopy1     | Bomcopy2      | InspectionName     | Samplingvalue | SupplierValue |
      | Ins-BOM | INS-IDS   | Image Inspection Testing | Ins-Style Review | Style Inspection testing | Automation Testing | Ins-SizeChart | character | Ins-spec datasheet | Inspection Testing | Custom spec section | Characteristic | Ins-BOM COPY | Ins-BOM COPY2 | Apparel-Inspection | Single        | Supplier      |

  #-----------------------------------------------------------------------------------------------------------------
  @InspectionContinuation
  Scenario Outline: Inspection NewInspectionSecurityGroup creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then create NewInspectionSecurityGroup "<ErrorType>","<AccLimit>","<SampleQtyMethod>","<InsBatchName>","<Attribute>","<Batchcolorway>","<BatchSize>","<Defectvalue>","<DefectCounter>"
    And User verify the PDF and InspectionBatch status
    Then User waits for PDF and verify it

    Examples: 
      | ErrorType     | AccLimit | SampleQtyMethod   | InsBatchName     | Attribute                                            | Batchcolorway | BatchSize | Defectvalue | DefectCounter |
      | High,Critical | 2.5,4.5  | Static,Percentage | Size chart batch | Inspection Size Chart Dimension,Size Chart Dimension | Vanilla       | small     | size        |             5 |

  #-----------------------------------------------------------------------------------------------------------------
  @InspectionShipment
  Scenario Outline: Inspection Shipment Style Order creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User Creates Style Inspection "<ProductionQuote>","<styleInspValue>","<TemplateValue>","<ErrorType>","<DefectValue>"
    Then User creates Shipment Inspection "<ShipmentInspValue>","<TemplateValue>","<BatchShipment>","<Level>","<DefectValue>","<ErrorType>"
    And User Creates Order Inspection "<ErrorType>","<TemplateValue>","<Level>","<OrderInspection>","<DefectCounter>","<DefectValue>","<BatchSize>","<OrderBatchName>"
    Then User Create Tempalte under Inspection "<TemplateName>"
    And verify Template has created or not "<TemplateName>"
    Then Logout from the Application

    Examples: 
      | ErrorType     | ProductionQuote | styleInspValue   | TemplateValue | ShipmentInspValue   | Level          | BatchShipment  | OrderInspection  | TemplateName              | DefectCounter | DefectValue  | BatchSize | OrderBatchName  |
      | High,Critical | Supplier        | Style-Inspection | inspection    | Shipment-Inspection | Shipment,Order | Batch-shipment | Order-Inspection | order-inspection template |           1,2 | fabric,color | small     | Batch for Order |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Theme Color Rule Data Setup
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    When Navigate to Theme – Color Matching type, Create Color Matching type with Delete option  "<ColorMatchingType>","11-0103 EGRET"
    And Click style tab and get the listed season name in the style tab
    And Create a New Season "<Season>"
    And Create three Material with Colored Material and Enable “Ok for Color Specification” – True and False "<Material>"
    And Create New Theme value with above created Season "<Season>","<SubType>","Color Rule"
    And Navigate into the Theme Master and Create Custom view in properties level
    And Select the "Contrast" value in Color Matching type
    And Navigate to above create Theme node value
    And Add two Theme Colorway values "Theme Blue","Theme Egret"
    And Go & Check the Theme – Material tab > Color Rule should be displayed after refreshing the page

    Examples: 
      | ColorMatchingType        | Season                  | SubType          | Material              |
      | Contrast,Tone-Tone,Dummy | Theme Color Rule Season | TM-Single Season | Linen,Cotton,Polyster |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario: Verify Generate Color Rule
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When Add above created two Material placements
    And Set Main Material for both Material Placements
    And Set a Color Specification common value for 1 placement
    And Set a Colored Material common value for 1 placement
    Then Now Click Generate Color Rule verify > It will Generate two Theme Color rule – Check the Status message status with condition
    And Navigate to Theme Placement Change the Colored Material value and Check again Generate Color Rule

  #-----------------------------------------------------------------------------------------------------------------
  Scenario: Verify Apply Color Rules
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When Navigate to same Theme used above scenario
    And Change the Main Material Set to True for 1st placements and Set false for 2nd placements
    And Add Material Family from the Custom view in Theme – Placement table
    And Set Colored Material common value for both Material Placements
    And Set Theme Main Material Group value for both placements “Set – Group”
    And Set Material Family for 2nd placements
    And Click Action – Generate Color Rule
    And Navigate to Season – Theme – Color Rule, Click Action > Apply Color for Theme value and set option is displayed window and click save > Verify it is applied color rule theme correctly
    And Navigate to Theme – Placements tab >> Add “Applied Color Rule” in Custom view Color Matrix and check values are updated correctly
    And Change the Color, Material Family Color Rule name, State in season level and verify it updated on theme level

  #-----------------------------------------------------------------------------------------------------------------
  Scenario: Verify Generate Color Rules from Availability
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then Delete Existing ColorRule in ThemeRuleSeason
    And Approve Red Fmaily and Blule Family
    Then Navigate to Material and Set Main Material = True for 3 Materials i.e. created above scenario
    And Navigate to Style – Season, Create a Season Color Rule – Availability
    And Navigate to Season – Specification, Add 3 Materials
    Then Go to Season – Theme – Color Rule and Click Action - Generate Color rules from Availability
    Then Verify Color Rule generate from availability
    

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: User creates Business Object
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates Enumeration value in Config_Setup "<EnumValue1>","<EnumValue2>","<EnumValue3>"
    Then User select Style from Business Object "Style"
    And User create New Attribute for Enum values "<AttributeName>","<AttributeType>","<DisplayName>"
    Then User Navigates to formDefinition
    And Select the Business Object Attributes
    Then User click on update cnfiguration
   # Then User click on update cnfiguration
    Then Logout from the Application

    Examples: 
      | EnumValue1             | EnumValue2             | EnumValue3     | AttributeName                              | AttributeType | DisplayName          |
      | Enum A,Enum A1,Enum A2 | Enum B,Enum B1,Enum B2 | Enum C,Enum C1 | Auto_String,Auto_Test,Enum_A,Enum_B,Enum_C | enum          | Tested by Automation |

  #-----------------------------------------------------------------------------------------------------------------
 
  
  Scenario Outline: User Creates Style-Apparel BO
    Given User launches centric application
    Then User click on update cnfiguration
    Then Go to homepage
    And verify user screen
    Then User Create New Style in Season "<season>","<stylename>","<Enumvalue>"
    Then User Clicks NewStyle and verify created values in BusinessObject
    And User Clicks ApparelBO and manage Views
    Then User Verify that AutoString "<AutoString>"

    Examples: 
      | season        | stylename  | Enumvalue | AutoString           |
      | winter season | Apparel-BO | Enum A1   | Tested by Automation |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Conversation with season hierarchy
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And Navigate to season create conversation
    When Edit and Delete the created conversation
    And Verify the conversation by sort order
    And Navigate to Material create conversation

    Examples: 
      | conversation1                                                                 | conversation2                           | conversation3 |
      | Planning the style,Planning the Material,Designing the Style,Plan for Seasons | Test Running,Design Style,Plan Material | Tested Runner |

  #---------------------------------------------------------------------------------------------------
  
  Scenario Outline: User Create New style with wizard
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And Navigate to style tab and create new style with name as wizard "<StyleName>"
    When Navigate to new from style
    And Create Move Style from within the style tab
    And Navigate to apparel color and size style add image
    And Navigate to new apparel wizard colorway verify data visible

    Examples: 
      | Style Name           |
      | New Apparel - Wizard |
 
   #---------------------------------------------------------------------------------------------------
      
  Scenario Outline: Create Secondary type
  #  Given User launches centric application
    And User Click on setup icon
		And Navigate to Secondary Type tab create data "<SecondaryType>"
		And Navigate to Option Type and Product type create data "<OptionType>","<ProductType>"
		And Navigate to Collection type and create data "<CollectionType>"
		When Navigate to Folder type "<FolderType>"
		And Create plan type data "<PlanType>"
		And Enumeration creation
		And Navigate to Business Object
	  Then Create style attribute for merchandise product version
		And Navigate to style push template and add mapping expression 
		And Create style copy templates
		And User select Style from Business Object "Style"
		And Navigate to style create atrributes
		And Again navigate to copy template and create new style copy template
		And User click on update cnfiguration
		And Create Merchandise copy template
		
    Examples: 
      | SecondaryType   | OptionType | ProductType  |CollectionType| FolderType 							|PlanType   |
      | Segment,Monthly |  Option		 |  Product     |Product Group | Department,Gender,Region |Merch Plan |
      
   #---------------------------------------------------------------------------------------------------
      
  @set72
  Scenario Outline: Setup for hierarchy creation
    #Given User launches centric application
    And User Click on setup icon
    And Navigate to Folder type to check Brand
    Then Go to homepage
    And Navigate to Home Page and setup template for hierarchy "<SeasonName1>"
    Then Go to homepage
    And Create new season choose existing hierarchy value "<SeasonName2>"

    Examples: 
      | SeasonName1 | SeasonName2 |
      | Summer 2021 | Summer 2022 |

  @set73
  Scenario Outline: Create Plan in Merchandise
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates new Plan "<PlanName>","<seasonname>"
    Then user creates season under version "<seasonname>"
    And under secondarysetup created monthly and segment setup "<month>","<segment>"
    Then user selects monthly and segment value under Secondary
    Then user click PlanTab, adds created monthly
    Then user moves to created season
    And user selects monthly and segment value under Secondary for summer2022

    Examples: 
      | PlanName | seasonname              | month             | segment           |
      | Plan 1   | Summer 2021,Summer 2022 | monthly1,monthly2 | segment1,segment2 |

  @set74
  Scenario Outline: Folder creation and validation in merchandise
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user navigates into created season "<season>"
    And create newfolder under Plan "<foldername>"
    Then create NewProducts and verify the attribute value of quantity created "<productvalue>","<optionNamevalue>"
    Then user copy, delete and edit the created product "<copygreenvalue>"
    Then Navigate to Product tab and validate Tops available or not
    Then Logout from the Application

    Examples: 
      | season      | foldername                        | productvalue            | optionNamevalue   | copygreenvalue |
      | Summer 2021 | Americas,Childrens wear,Boys,Tops | Tops-01,Tops-02,Tops-03 | Option,Blue,Green | Greenshade     |

    @set75
  Scenario Outline: Brand Creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates brand under Heirarchy Template "<BrandValue>"
    Then Click New Brand
    And create Brand for merchandise "<BrandValue>"
    

    Examples: 
      | BrandValue      |
      | Brand X,Brand Y,Childrenswear,Tops |
      
	@set76
	Scenario Outline: Product Creation
		#Given User launches centric application
		Then Go to homepage
		And verify user screen
		Then user navigate to merch collection create product"<Product>""<Season>""<Brand>"
		Then create product with candidate"<Product1>""<Season>""<Brand>" 
		Then Logout from the Application
		
		
    Examples:
    |Product  						|Season  			|Brand    |Product1		|
    |Round Neck T-Shirt   |spring 2020  |Brand X  |RNT1				|  
