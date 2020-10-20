#Author: karthick@kripya.com
@Selenium @Sourcing @Browser3
Feature: Configuration and Setup

  Scenario Outline: capability and operation group validation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates capability "<Shipping Port>","<Factory>","<Supplier>" and Operation group "<OperationGroup>"
    And User creates sub routing "<SubRoutingA>","<SubRoutingB>"

    Examples: 
      | Shipping Port       | Factory        | Supplier        | OperationGroup | SubRoutingA     | SubRoutingB     |
      | Cut - Shipping Port | Pack - Factory | Ship - Supplier | MAKE           | MAKE Subrouting | SHIP Subrouting |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Sales Region and country creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates Country "<CountryA>","<CountryB>","<CountryC>"
    And User creates sales region "<SalesRegionA>","<SalesRegionB>"

    Examples: 
      | CountryA       | CountryB       | CountryC                        | SalesRegionA | SalesRegionB |
      | India-IND-Asia | China-CHN-Asia | United States-USA-North America | CAD SR       | USA SR       |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: HTS code creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates HTS code "<HTS_A>","<HTS_B>","<Description>","<From>","<To>","<Duty>"

    Examples: 
      | HTS_A          | HTS_B        | Description | From                | To                  | Duty  |
      | India HTS Code | USA HTS Code | Automation  | India/United States | United States/India | 15/20 |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Container creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates container "<container>","<Volume>","<Weight>","<Efficiency>"

    Examples: 
      | container | Volume | Weight | Efficiency |
      | Container | 30/40  | 15/10  | 70/80      |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Shipping Port creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates shipping port "<portA>","<portB>","<portC>","<portD>"

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

    # Then Logout from the Application
    Examples: 
      | Shipment | PortFrom    | PortTo   |
      | Fedex    | Mumbai Port | SFS port |

  #   -----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Review creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates and validates Questions subsection"<Percentage>"
    And User validates review templates "<Review>"

    Examples: 
      | Review                                | Percentage |
      | Sourcing Review Template - Automation | 25/55      |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Template creation
    #  Given User launches centric application
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

    Examples: 
      | SizeChartName             | Dimensions |
      | Bra,Womens Basic Knit Tee | A15E       |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeItems
  Scenario Outline: User creates size items and validation
    # Given User launches centric application
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
  Scenario Outline: Material Supplier Quotes & Samples
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates material supplier quotes
    And user creates material supplier request "<Template>","<Request>"
    When user removing supplier under supplier request setup
    And user validating supplier quotes & samples
    Then Go to homepage
    And user validating material supplier quotes
    And user issuing material supplier request

    Examples: 
      | Template       | Request              |
      | SRT - Material | SR - Material Cotton |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Supplier Quotes Update
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user enters designated supplier "Supplier" and template details
    And User creates material product blended cost "<Product>"

    # Then Logout from the Application
    Examples: 
      | Product        |
      | Material - PBC |

  #---------------------------------------------------------------------------------------------------

  Scenario Outline: Shape creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates product group in size chart "<ProductGrp>","<Description>"
    And User update dimension,increments "<Increments>" and tolerance
    Then Go to homepage
    And User creates shape "Circle Shape","winter season" and update shape master "Object Shape Master"
    And User is performing copy,edit and delete action
    And User creates Security group "<SecurityGrp>" and update values under shape "MensJeans"
    And User creates shape sample "<Sample>","Supplier"
    And User is performing sample copy,edit and delete action
    And User Creates shape size chart for "Circle SC-Lock All","Circle SC-Lock Dimension","Circle SC-Lock Tolerance","Circle SC-Lock Values"

    # Then Logout from the Application
    Examples: 
      | ProductGrp | Description | Increments       | SecurityGrp            | Sample              |
      | PG - 01    | Automation  | Pants Grade Rule | Security Group - Shape | Circle Shape Sample |

  #---------------------------------------------------------------------------------------------------
  @BomSection
  Scenario Outline: Inspection Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates NewBOMSection "<Bomstylesection>","<Stylesortvalue>","<filterName>"
    Then user Creates NewMaterialBomSection "<BomMaterialSection>","<Materialsortvalue>"

    Examples: 
      | Bomstylesection                                           | Stylesortvalue  | filterName | BomMaterialSection                        | Materialsortvalue |
      | Apparel section,fabric section,All section,Delete section | 10,12,100,50,15 | Material   | fabric section,All section,Delete section |          23,24,25 |

  #---------------------------------------------------------------------------------------------------
  @BomTemplate
  Scenario Outline: Inspection Creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user created NewBOMTemplate "<Subtype>","<TemplateName>","<createsection>","<EditComment>"

    # Then Logout from the Application
    Examples: 
      | Subtype     | TemplateName         | createsection                     | EditComment     |
      | Apparel BOM | Apparel BOM Template | auto adhoc section,Delete section | automation test |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Theme creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates theme for single season "TM-Single Season","Wild Theme Master","Wild Theme","winter season"
    And User creates new theme from style "<StyleSubType>","<StyleTM>"
    And User creates new theme from material "<MaterialSubType>","<MaterialTM>"
    And User creates theme for All season "TM-All Season","All season TM","All season - Theme"
    And User is performing theme copy,edit and delete action
    And User creates Security group "<SecurityGrp>" and update values under Theme "TSG"
    And User creates color inside theme "Blue Theme","White Theme","Glass Theme"
    And User creates product alternative "Italy"

    #Then Logout from the Application
    Examples: 
      | StyleSubType                | StyleTM            | MaterialSubType    | MaterialTM            | SecurityGrp |
      | TM-Allow material variation | Style Theme Master | TM-Multiple Season | Material Theme Master | TSG -All    |

  #-----------------------------------------------------------------------------------------------------------------
  @ThemeMaterial
  Scenario Outline: Theme BOM creation and validation
    #Given User launches centric application
    Then Go to homepage
    When User creates new theme placement "<PlacementA>","Theme BOM Value"
    When User creates new theme placement from material
    When User creates new from theme placement
    When User creates select section and update color value "<PlacementB>","<ColorA>"
    When User creates adhoc section "<Adhoc>"
    And User is performing select,create,arrange and delete section activities under sections
    When User creates style BOM "<BOMSubType>","<BOM_Value>"
    And User creates and update style BOM placements "<BOMSubType>","<PlacementB>"
    And Validating under style placements
    Then Go to homepage
    When user updates existing style BOM "<ColorB>","<BOMSubType>" and validate style placements
    Then Go to homepage
    And User performing delete style BOM placements and validate style
    And User performing unlink and synch from theme validation

    # Then Logout from the Application
    Examples: 
      | BOMSubType | PlacementA           | PlacementB       | ColorA | ColorB | BOM_Value                | Adhoc               |
      | Theme Lock | Shoulder - placement | Neck - placement | Blue   | Red    | Apparel BOM - Theme Lock | Theme Adhoc Section |
  #-----------------------------------------------------------------------------------------------------------------

      
   Scenario Outline: User creates collection management
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates marketing looks "Avengers"
    And user creates marketing tools "<ToolA>","<ToolB>"
    And performing delete action
    And user creates collection management "<CollectionValue>","<Currency>"
    And user creates style marketing products "TShirts Style","123 Avengers","smoke"
    And user creates new marketing product "MP - TShirt","123 - Marketing","Apparel - Color and Size"
    And user creates colorway inside marketing product "<ColorA>","<ColorB>"
    And user creates marketing material and looks "<LookA>","<LookB>"
    And user update material value in material product and segments
    Then user click on release to markets and release to customers
    And user creates sales market in collection management
    Then Go to homepage
    And creates sales order "TShirt Sales Order","Indian Market"

    Examples: 
      | ToolA  | ToolB   | CollectionValue                  | Currency | ColorA | ColorB | LookA      | LookA    |
      | Banner | Canoply | TShirts Collection - without SKU | Dollar   | Blue   | Green  | Spider Man | Iron Man |
      