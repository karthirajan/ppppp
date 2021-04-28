#Author: karthick@kripya.com
@Selenium @UpdateConfiguration @Browser1
Feature: Browser - 1

  @BOMSetup
  Scenario Outline: BOM creation
    Given User launches centric application
    And User Click on setup icon
    And User creates BOM type "<StyleBOM>","<MaterialBOM>"

    Examples: 
      | StyleBOM    | MaterialBOM  |
      | Apparel BOM | Material BOM |

  #-----------------------------------------------------------------------------------------------------------------
  @SizeSetup
  Scenario Outline: Size Chart creation
    #  Given User launches centric application
    And User Click on setup icon
    And User creates size chart type "<All>","<List>","<Values>","<Tolerance>"

    Examples: 
      | All         | List              | Values         | Tolerance         |
      | SC-Lock All | SC-Lock Dimension | SC-Lock Values | SC-Lock Tolerance |

  #-----------------------------------------------------------------------------------------------------------------
  @SpecSetup
  Scenario Outline: Spec type creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates spec type "<SpecTypeA>","<SpecTypeB>"
    And User navigates to type config
    When user creates the size spec data for size label module "<SizeSpec>"

    Examples: 
      | SpecTypeA    | SpecTypeB    | SizeSpec                              |
      | Spec Type-01 | Spec Type-02 |Characteristic,Construction,Packaging  |

  #-----------------------------------------------------------------------------------------------------------------
  @TestSetup
  Scenario Outline: Test type creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates test type "<TestTypeA>","<TestTypeB>","<TestTypeC>"
    And User performing delete action

    Examples: 
      | TestTypeA | TestTypeB     | TestTypeC    |
      | Wash Test | Chemical Test | Ironing Test |

  #-----------------------------------------------------------------------------------------------------------------
  @InspectionSetup
  Scenario Outline: Inspection type creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates inspection type "<InspnoLink>","<BOM>","<SizeChart>","<SpecDS>","<StyleReview>"

    Examples: 
      | InspnoLink          | BOM             | SizeChart              | SpecDS                      | StyleReview              |
      | Ins Section-No Link | Ins Section-BOM | Ins Section-Size Chart | Ins Section-Spec Data Sheet | Ins Section-Style Review |

  #-----------------------------------------------------------------------------------------------------------------
    @FoodSetup @UC
  Scenario Outline: FoodTypes and DataSheet creation
    #Given User launches centric application
    And User Click on setup icon
    And User Creates FoodTypes and FoodlabelDatasheetvalues "<FoodType>","<FoodLabel>"

    Examples: 
      | FoodType           | FoodLabel                |
      | Bird Food,Dog Food | All Sections,Ingredients|
      
     #-----------------------------------------------------------------------------------------------------------------
      
   Scenario Outline: User creates enumeration and currency
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates currencies in general setup "<CurrencyA>","<CurrencyB>","<CurrencyC>"
    And user performing delete action

    Examples: 
      | CurrencyA | CurrencyB | CurrencyC |
      | Rupee,R   | Dollar,$  | Euro,E    |

  #-------------------------------------------------------------------------------------------------------------
  Scenario: User creates curreny table
    # Given User launches centric application
    # Then Go to homepage
    # And verify user screen
    When user creates currency table in general setup "CT - 01"
    And user updating currency exchange rates

  #-------------------------------------------------------------------------------------------------------------
 
   Scenario Outline: User creates sales market
    # Given User launches centric application
    # Then Go to homepage
    # And verify user screen
    When user creates Sales market in general setup "<SalesMarketA>","<SalesMarketB>"

    Examples: 
      | SalesMarketA        | SalesMarketB     |
      | Indian Market,Rupee | US Market,Dollar |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: User creates sales division
    # Given User launches centric application
    # Then Go to homepage
    # And verify user screen
    When user creates Sales division in general setup "<SalesDivA>","<SalesDivB>","<SalesDivC>","<SalesDivD>"
    And user updating contact inside sales division
    Then Logout from the Application

    Examples: 
      | SalesDivA  | SalesDivB  | SalesDivC     | SalesDivD     |
      | US - North | US - South | India - South | India - North |

  #------------------------------------------------------------------------------------------------------------- 
  @Specification
  Scenario: Specification Classifier creation
     Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates Classifier "Classifier"
    Then Logout from the Application

  #-------------------------------------------------------------------------------------------------------------
  @ColorSpec @Specification
  Scenario Outline: Colour specification Creation and validation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then Click on specification tab and create color specification "<ColorSpecificationName1>","<Code>","<Description>","<ColorSpecificationName2>","<CCode>","<CDescription>","<ColorSpecificationName3>","<ColorSpecificationName4>","<ColorSpecificationName5>"
    Then User creates the Custom view and add the options to the table of Color spec "<AvailableAttributes>","<SelectedAttributes>"
    And Merge the color specification and validate the status after merging "<ColorSpecificationName2>"
    Then Validate the options like copy and delete "Reg_colorCopy","<ColorSpecificationName1>"
    When User delete the merged colour spec and verify the error message "<ColorSpecificationName1>"
    And User enters the RBG value and verify the colour in the table "<ColorSpecificationName2>","<RGB Hex>"
    Then User enters the RBG value and colour in the table "<ColorSpecificationName1>","<ColorSpecificationName3>","<ColorSpecificationName4>","<ColorSpecificationName5>"
   # Then Logout from the Application

    Examples: 
      | ColorSpecificationName1 | Code | Description          | ColorSpecificationName2 | CCode | CDescription         | AvailableAttributes | SelectedAttributes                | ColorName  | RGB Hex | ColorSpecificationName3 | ColorSpecificationName4 | ColorSpecificationName5 |
      | 11-0103 EGRET           |  022 | RegressionValidation | 11-0104 VANILLA ICE     |   023 | RegressionValidation | RGB Hex             | Pantone,Pantone TC,Libraries,Tags | Reg_color2 | #323232 | 11-0105 ANTIQUE WHITE   | 11-0107 PAPYRUS         | 11-0205 GLASS GREEN     |

  #-----------------------------------------------------------------------------------------------------------------------------------------------
 
  
 @Enumeration
  Scenario Outline: Update ColorRole in Enumeration
    # Given User launches centric application
    And User Creates ColorROle in Enumeration "<materialname>","<Themename>","<familyname1>","<familyname2>","<Bluecolor>","<Redcolor>","<Themevalue1>","<Themevalue2>",

    Examples: 
      | materialname   | Themename              | familyname1 | familyname2 | Bluecolor | Redcolor  | Themevalue1 | Themevalue2 |
      | MaterialFamily | ThemeMainMaterialGroup | Family-01   | Family-02   | Family-01 | Family-02 | Group-01    | Group-02    |

  #-----------------------------------------------------------------------------------------------------------------
  @en
  Scenario Outline: Enum Setup
    Given User launches centric application
    And User Click on setup icon
    When Setup Enum for size dimensions in setup page "<Enumeration>"
    Then Create the Enum value for the sizes "<Enumeration Value>","<Description>","<EnumerationValue2>","<Description2>"
    And User setup enumeration configurtion for Sample "Style - Proto","Material - Proto"
    When user creates enumeration "Segment - 01","Segment - 02"
    And User navigates to type config
    Then User creates Enumeration "<DefectsCategory>"
    And update configuration for inspection
    Then Logout from the Application

    Examples: 
      | DefectsCategory | Enumeration       | Enumeration Value | Description | EnumerationValue2 | Description2 |
      | High,Medium,Low | DimensionType (1) | Length            | 2DSizeModul | Waist             | 2DSize       | 

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


 
  @2DSizes @Specification
  Scenario Outline: User create 2d sizes and validation
    Given User launches centric application
    And User Click on setup icon
    When User creates multiple sizes with different type for TwoDSizes "<Size>","<Size1>","<Size2>","<Size3>","<Size4>","<Size5>","<SortOrder>","<SortOrder1>","<SortOrder2>","<SortOrder3>","<SortOrder4>","<SortOrder5>"
    Then Create duplicate Sizes and verify the error message "<DuplicateSize>","<DupSortOrder>"
    And Create twoD sizes with different type of dimension "<CompSize>","<CompSize2>","<CompSize3>","<CompSize4>","<CompSize5>","<CompSize6>","<DimensionType>","<DimensionType2>","<DimensionType3>","<DimensionType4>","<DimensionType5>","<DimensionType6>","<CompSizeSO1>","<CompSizeSO2>","<CompSizeSO3>","<CompSizeSO4>","<CompSizeSO5>","<CompSizeSO6>"
    When User selects the created sizes for TwoD sizes "<2DimensionSize1>","<2DimensionSize2>","<2DimensionSize3>","<2DimensionSize4>","<2DimensionSize5>","<2DimensionSize6>","<2DimensionSize7>","<2DimensionSize8>","<2DimensionSize9>","<CompSize>","<CompSize2>","<CompSize3>","<CompSize4>","<CompSize5>","<CompSize6>"
    And Create size range for the sizes "<SizeRange>","<Description>","<EnumerationValue2>","<Enumeration Value>"
    Then User selects the sizes for the created size range "<2DimensionSize1>","<2DimensionSize2>","<2DimensionSize3>","<2DimensionSize4>","<2DimensionSize5>","<2DimensionSize6>","<2DimensionSize7>","<2DimensionSize8>","<2DimensionSize9>","<SizeRange>"
    And User creates simple size range for validation "<SimpleSizeName1>","<SimpleSizeName2>","<CompSizeName>"
    Then Merging of composite size type "<Size>","<Size1>","<Size2>","<Size3>","<Size4>","<Size5>","<SimpleSizeName1>","<SimpleSizeName2>"
    And Selecting the sub ranges for composite sizes "<SimpleSizeName1>","<SimpleSizeName2>"
    Then Validate the options like copy and delete for size Range "<CopySizeName>","<CompSizeName>"
    And Create a Size Map and validate the status "<SizeRange>","<CompSizeName>","<SizeMapName>","<Size>"

    # Then Logout from the Application
    Examples: 
      | Enumeration       | Enumeration Value | Description | EnumerationValue2 | Description2 | Size  | SortOrder | Size1  | SortOrder1 | Size2 | SortOrder2 | Size3 | SortOrder3 | Size4 | SortOrder4 | Size5 | SortOrder5 | DuplicateSize | DupSortOrder | CompSize | DimensionType | CompSize2 | DimensionType2 | CompSize3 | DimensionType3 | CompSize4 | DimensionType4 | CompSize5 | DimensionType5 | CompSize6 | DimensionType6 | CompSizeSO1 | CompSizeSO2 | CompSizeSO3 | CompSizeSO4 | CompSizeSO5 | CompSizeSO6 | 2DimensionSize1 | 2DimensionSize2 | 2DimensionSize3 | 2DimensionSize4 | 2DimensionSize5 | 2DimensionSize6 | 2DimensionSize7 | 2DimensionSize8 | 2DimensionSize9 | SizeRange   | SimpleSizeName1 | SimpleSizeName2 | CompSizeName  | CopySizeName | SizeMapName | SizeSpec                              |
      | DimensionType (1) | Length            | 2DSizeModul | Waist             | 2DSize       | small |        10 | medium |         11 | large |         12 | SMALL |         13 | XL    |         14 | XXL   |         15 | SMALL         |           16 | W1       | Waist         | W2        | Waist          | W3        | Waist          | L1        | Length         | L2        | Length         | L3        | Length         |           1 |           2 |           3 |           4 |           5 |           6 | W1/L1           | W1/L2           | W1/L3           | W2/L1           | W2/L2           | W2/L3           | W3/L1           | W3/L2           | W3/L3           | MensRegular | MensPants       | MensJeans       | Childrenswear | 2DSizesCopy  | Elastic     | Characteristic,Construction,Packaging |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @Specification
  Scenario Outline: Specification Hierarchy creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User Click on specification and creates hierarchy "<Brand>","<Collection>","<Department>","<Code>","<Description>"
    And User creates style template "<Style>","<StyleType>"

    Examples: 
      | Brand         | Collection        | Department        | Code             | Description | Style              | StyleType                |
      | Denim - Brand | Mens - collection | Mens - Department | 123 - Automation | Automation  | Apparel - Template | Apparel - Color and Size |

  #-------------------------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Scenario Outline: Size validation & Colour validation
    # Given User launches centric application
    #And User Click on setup icon
    #When User creates style type in setup page "<StyleTypeA>","<StyleTypeB>","<StyleTypeC>","<StyleTypeD>"
    #And User deselects the colour specification option "<StyleTypeB>"
    #And User fills all the style type attributes fields
    #Then User click on update cnfiguration
    #And validate and accept the alert
    Then Go to homepage
    And verify user screen
    And Click style tab and get the listed season name in the style tab
    When User create New season with mandatory deatails for season creation "<season>","<scode>","<sdescription>"
    Then Click New Brand
    Then Save the New Brand which was created
    Then Click New department by providing valid data "<dept>"
    Then Save the New department which was created
    Then Click New collection
    And Create collection by providing valida and mandatory details "<collection>"
    Then Save the collection which was created
    Then Click New style
    And Create Style followed by its style Type "<StyleTypeA>","<StyleTypeA>","<StyleTypeA>","<StyleTypeA>","<StyleName1>","<StyleName2>","<StyleName3>","<StyleName4>"
    Then Click New style
    And Create Style followed by its style Type "<StyleTypeB>","<StyleTypeB1>"
    And Create Style followed by its style Type "<StyleTypeC>","<StyleTypeC1>"
    And Create Style followed by its style Type "<StyleTypeD>","<StyleTypeD1>"
    When User creates the Custom view and add the options to the table "Colorway","Color Specification"
    And User deletes the unwanted attributes from custom views column for styles "<SelectedAttributes1>","<SelectedAttributes2>","<SelectedAttributes3>","<SelectedAttributes4>","<SelectedAttributes5>"
    Then User selects the size range for the styles "<StyleName1>","<StyleName2>","<StyleName3>","<StyleName4>","<SizeRange>","<SimpleSizeName1>","<SimpleSizeName2>","<CompSizeName>"
    When User selects the colorway through option from the styles page itself "<StyleName4>"
    And user selects the colorway for the styles "<StyleName1>","<NavignSearchtype>"
    Then User creates the colorway for the style and maps it "<ColorSpecificationName2>","<ColorSpecificationName3>"
    And user selects the colorway for the styles "<StyleName2>","<NavignSearchtype>"
    Then User creates the colorway for the style and maps it "<ColorSpecificationName4>","<ColorSpecificationName5>"
    And user selects the colorway for the styles "<StyleName3>","<NavignSearchtype>"
    Then User creates the colorway for the style and maps it "<ColorSpecificationName4>","<ColorSpecificationName1>"

    # Then Logout from the Application
    Examples: 
      | StyleTypeA               | StyleTypeB               | StyleTypeC          | StyleTypeD                      | season           | scode | sdescription                   | brand   | bcode | bdescription   | dept        | dcode | ddescription | collection | ccode | cdesription | SelectedAttributes1 | SelectedAttributes2        | SelectedAttributes3 | SelectedAttributes4 | StyleName1 | StyleName2 | StyleName3 | StyleName4 | SizeRange   | SimpleSizeName1 | SimpleSizeName2 | CompSizeName  | NavignSearchtype | ColorSpecificationName2 | ColorSpecificationName3 | ColorSpecificationName4 | ColorSpecificationName5 | ColorSpecificationName1 | SelectedAttributes5 | StyleTypeB1       | StyleTypeC1  | StyleTypeD1    |
      | Apparel - Color and Size | Accessories - Only Color | Apparel - Only Size | Accessories - No color and Size | 01 - Spring 2020 | SP20  | Spring 2020 Development Season | Brand X | B03   | SizeValidation | Accessories |   105 | pant         | Belts      |   110 | cotton      | Description         | Tool (Style Specification) | Development Type    | Theme               | HC&S1      | HC&S2      | HC&S3      | HC&S4      | MensRegular | MensPants       | MensJeans       | Childrenswear | Style            | 11-0104 VANILLA ICE     | 11-0105 ANTIQUE WHITE   | 11-0107 PAPYRUS         | 11-0205 GLASS GREEN     | 11-0103 EGRET           | Code                | HomeAssortmentOC2 | HardgoodsOS1 | FootwearNC&NS1 |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Scenario Outline: Quality setup creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates test spec under quality "<TestSpecA>","<TestSpecB>","<Code>","<Description>"
    And User creates test group "<TestSpecA>","<TestSpecC>","<Code>","<Description>"
    And User creates test templates "<TestSpecA>","<TestSpecB>","<TestSpecC>","<User>","<Supplier>"
    Then Logout from the Application

    Examples: 
      | TestSpecA     | TestSpecB    | TestSpecC | Code             | Description | User          | Supplier |
      | Chemical Test | Ironing Test | Wash Test | 123 - Automation | Automation  | Administrator | Supplier |

  #-------------------------------------------------------------------------------------------------------------------------------
  Scenario Outline: Style ColorSpec creation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User update property table with "<Code>","<Description>","<SizeRange>"
    And User creates colorway "<ColorSpec>","<ColorwayA>","<ColorwayB>","<Description>"

    Examples: 
      | Code | Description | SizeRange | ColorSpec   | ColorwayA        | ColorwayB         |
      |  123 | Automation  | MensJeans | GLASS GREEN | Blue Color faded | Green Color faded |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Style Sample Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates style sample combination "<StyleSample>","<Style>","<DimensionA>","<DimensionB>"

    Examples: 
      | StyleSample          | DimensionA | DimensionB       | Style         |
      | Jeans Sample - Style | Colors     | Colors and Sizes | Style - Proto |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Style Quality Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User update quality types
    Then Go to homepage
    And User creates Style quality "<TestrunA>","<TestRunB>","<TestGrpA>","<TestGrpB>","<SampleA>","<SampleB>","<User>","<Supplier>"
    And User Creates test run templates
    And User approve test run "<Code>","<Description>","<Comment>"

    Examples: 
      | TestrunA          | TestRunB          | TestGrpA            | TestGrpB        | SampleA | SampleB | User          | Supplier | Code | Description | Comment  |
      | Acid Test - Style | Wash Test - Style | Chemical Test Group | Wash Test Group | small   | EGRET   | Administrator | Supplier |  123 | Automation  | Test Run |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Supplier Quote Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates Style sourcing price list
    And User Creates Style Supplier Quotes "<Supplier>","<SQ-Template>","<Set>"
    And User creates Style product blended cost "<Product>"

    Examples: 
      | Supplier | SQ-Template               | Set           | Product            |
      | Supplier | Supplier Quote - Template | SS - Supplier | Product Blend Cost |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Supplier Request Creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates Supplier Requests "<RequestTemplate>","<RequestName>"
    And User creates copy templates "<CopyTemp>"
    Then Go to homepage
    And User add new inspiration products "<InspA>","<InspB>"

    Examples: 
      | RequestTemplate | RequestName  | InspA            | InspB           | CopyTemp                    |
      | SRT - Style     | Apparel - SR | Auto Inspiration | New Inspiration | Copy Template - Inspiration |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Style Sample Update
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user update delete style samples "<Sample>","<Quantity>"
    And User modify the sample names

    Examples: 
      | Sample | Quantity |
      | Sample |        5 |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Delete Supplier Quotes & Samples
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates delete supplier quotes "<Delete>"
    And user creates supplier request "<Template>","<Request>"
    And User Selects quotes and modifying states
    And User select Supplier request samples

    Examples: 
      | Delete    | Template    | Request                             |
      | Delete SQ | SRT - Style | SR - Delete Quotes & Samples - True |

  #---------------------------------------------------------------------------------------------------
  Scenario: Validating quotes & samples
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user removing supplier under supplier request setup
    And user validating supplier request and samples displayed datas are correct or not
    Then Go to homepage
    And user validating supplier quotes displayed datas are correct or not
    Then Go to homepage
    And User validating style sample displayed datas are correct or not

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Copy Supplier Request
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creating new inspiration "<Inspiration>"
    And User copy supplier request "<SR>"

    Examples: 
      | Inspiration | SR                       |
      | Ins - 01    | Apparel SR - Inspiration |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Issuing Supplier Request
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User issuing apparel SR
    Then Go to homepage
    And user creates issue supplier request "<Template>","<Request>"

    Examples: 
      | Template    | Request                |
      | SRT - Style | SR - with two products |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Supplier Quotes Update
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user enters designated supplier "Supplier" and samples details
    Then Go to homepage
    And User Creates supplier request template without style "<Template>","<value>"
    Then Go to homepage
    And validating copy and delete action "<value>"
    And User Creates supplier request template with style "<Template>","<Stylevalue>","<Style>"
    Then Go to homepage
    And user validating style template updated correctly or not
    Then Go to homepage
    And User issuing without style template

    # Then Logout from the Application
    Examples: 
      | Template    | value    | Stylevalue         | Style                    |
      | SRT - Style | Style SR | Style Home - Jeans | Apparel - Color and Size |

  #---------------------------------------------------------------------------------------------------
  @BomSection
  Scenario Outline: Inspection Creation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates NewBOMSection "<Bomstylesection>","<Stylesortvalue>","<filterName>"
    Then user Creates NewMaterialBomSection "<BomMaterialSection>","<Materialsortvalue>"

    Examples: 
      | Bomstylesection                                           | Stylesortvalue  | filterName | BomMaterialSection                        | Materialsortvalue |
      | Apparel section,fabric section,All section,Delete section | 10,12,100,50,15 | Material   | fabric section,All section,Delete section |          23,24,25 |

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

  Scenario Outline: Theme creation
    #  Given User launches centric application
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
    Then Logout from the Application

    Examples: 
      | StyleSubType                | StyleTM            | MaterialSubType    | MaterialTM            | SecurityGrp |
      | TM-Allow material variation | Style Theme Master | TM-Multiple Season | Material Theme Master | TSG -All    |

  #-----------------------------------------------------------------------------------------------------------------
  @ThemeMaterial
  Scenario Outline: Theme BOM creation and validation
    Given User launches centric application
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
    Then Logout from the Application
    
    Examples: 
      | BOMSubType | PlacementA           | PlacementB       | ColorA | ColorB | BOM_Value                | Adhoc               |
      | Theme Lock | Shoulder - placement | Neck - placement | Blue   | Red    | Apparel BOM - Theme Lock | Theme Adhoc Section |

  #-------------------------------------------------------------------------------------------------------------


  Scenario Outline: User creates BusinessCategory for  Style and market
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Business category for Style  "<stylecategory>","<style>","<currency>"
    Then User creates Business category for Material "<materialcategory>","<material>"
    And User Edit and copy Business category "<copymaterial>","<editmaterial>"
    Then create BusinessMarket for Style and Material "<Businessmarketvalue1>","<BusinessCode1>","<Businessmarketvalue2>","<BusinessCode2>"
    Then Logout from the Application

    Examples: 
      | stylecategory     | style | currency | materialcategory     | material | copymaterial                | editmaterial                         | Businessmarketvalue1 | BusinessCode1 | Businessmarketvalue2 | BusinessCode2  |  |
      | BC-Style Category | style | dollar   | BC-Material category | Material | BC-Material Category Copied | BC-Material Category EditedUS Market | US Market            | US Automation | Indian Market        | IND Automation |  |

  #-------------------------------------------------------------------------------------------------------------
 
  
  Scenario Outline: User creates BusinessPlan for  Style and market
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Business Plan for Style "<BPValue1>","<BPCategory1>","<currency>","<supplier>","<season>","<Brand>","<Dpmt>","<Collection>"
    And verify the datas in marketplan
    Then User creates Business Plan for Material "<BPValue2>","<BPCategory2>","<currency>","<supplier>"

    Examples: 
      | BPValue1       | BPCategory1       | currency | supplier | season | Brand | Dpmt | Collection | BPValue2          | BPCategory2          |
      | Plan for style | BC-Style Category | CT       | supplier | winter | Denim | Mens | Jeans      | Plan for material | BC-Material Category |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: User creates NewStyleBOM-Set1
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates NeStyleBOM  under Apparelcolorandsize "<BOMName>"
    And user creates BOM validation in manage-views
    And user validates Color under NewStyleBOM-placements
    And user creates NewOfMaterial
    And user select season availability for cotton jersey-copy
    Then Go to homepage
    When user creates NewFromMaterial "<BOMValue>"
    And user select Materialsection also draganddrop the created material
    And user select Apparel and fabric section
    And user creates Newofstyle and newfromstyle apparel section "<Style>","<Color>"
    Then user creates NewSpecial in fabric section "<MaterialNew>"
    And user creates and verify the common color in material section "<Commoncolor>"
    And user verfies copy color for Material section
    And user update unit cost "<unitcost>"
    And update unitcost for all in apparel section
    Then Logout from the Application

    Examples: 
      | BOMName                | BOMValue         | Style        | Color      | MaterialNew     | Commoncolor   | unitcost |
      | Apparel BOM Validation | Material section | New of style | Only Color | SpecialMaterial | BOM RED,EGRET |     3400 |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: User creates NewStyleBOM-Set2
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user edit color by selecting placements and colorways
    And user edit variation by color in material section
    Then user match color in material section
    And user edit Variation by size "<size>"
    Then user edit Variation by quantity for small and medium "<quantity>"
    Then user Reset variation by size
    And user validate BOM
    Then user Approves the ApparelBOMValidation and verify Action button is disabled
    Then user copy ApparelBOMValidation	"<BOMName>"
    And user Freezes the ApparelBOMValidation-Copy and verify Action button is disabled
    Then user Reopen the copied BOM
    And user created NewFromStyle in Apparelsection
    Then user verify the values refelected in multi level placements
    Then user add tracking changea and comments in manageviews

    Examples: 
      | placement                                     | colorways                   | common qty      | common size | size         | quantity    | spec  | BOMName                     |
      | Sholuder - placement 100% Cotton/Rayon Jersey | Egret,Vanilla,Antique,Green | 150,200,300,350 |       14,16 | medium,large | 400 200 100 | 14,12 | Apparel BOM Validation copy |

   #-------------------------------------------------------------------------------------------------------------
      
 Scenario Outline: calendar setup for season
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User moves into Calendar Template setup
    And User create Calendar Type for season "<calendartype>","<templatecalendar>","<calendardescription>"
    Then user create season Template activity under Calendar Type "<Templateactivity>","<ActivityType>","<ActivityLevel>","<TrackingType>","<TrackingPhase>","<Trackingstate>"

    Examples: 
      | calendartype | templatecalendar | calendardescription      | Templateactivity                         | ActivityType                   | ActivityLevel          | TrackingType             | TrackingPhase     | Trackingstate |
      | Season       | Calendar_Season  | Season calendar Template | Manual,Milestone,Artwork Track,IDS Track | Manual Activity,Track Activity | Brand,Collection,Style | Artwork,Image Data Sheet | Production,sample | APPROVED      |

  #-------------------------------------------------------------------------------------------------------------

@Calendar_Setup
  Scenario Outline: calendar setup for material
  #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User moves into Calendar Template setup
    And User create Calendar Type for material "<calendartype>","<templatecalendar>","<calendardescription>"
    Then user create material Template activity under Calendar Type "<Templateactivity>","<ActivityType>","<ActivityLevel>","<TrackingType>","<Trackingstate>"
    
    Examples: 
      | calendartype            | templatecalendar | calendardescription   | Templateactivity                                                 | ActivityType                             | ActivityLevel                        | TrackingType                                    | Trackingstate    |
      | Material Security Group | Calendar_MSG     | MSG Calendar Template | Manual,BOM Track,Color Data Sheet Track,Test Run Track,Milestone | Manual Activity,Track Activity,Milestone | Material Security Group,Material BOM | Material BOM,Material Color Data Sheet,Test Run | APPROVED,PENDING |

  #-------------------------------------------------------------------------------------------------------------
  
   @Calendar_master
  Scenario Outline: master calendar creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User moves into Calendar Template setup
    And User create Calendar Type for PO "<calendartype>","<templatecalendar>","<calendardescription>"
    Then user create PO Template activity under Calendar Type "<Templateactivity>","<ActivityType>","<ActivityLevel>","<TrackingType>","<Trackingstate>"
    And Go to homepage and create master calendar

    Examples: 
      | calendartype | templatecalendar | calendardescription  | Templateactivity                                 | ActivityType                             | ActivityLevel                            | TrackingType                   | Trackingstate |
      | PO Group     | Calendar_PO      | PO Calendar Template | Manual,Style Review Track,Size Chart Review,Mile | Manual Activity,Track Activity,Milestone | PO Group,PO Color,PO Product,Supplier PO | Style Review,Size Chart Review | APPROVED      |

  #-------------------------------------------------------------------------------------------------------------

  @Calendar_date
  Scenario Outline: calendar date selection and validation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And user enter date for calendar season
    And user modify the manual date and approves it
    And user navigates into Artwork tab and creates "<Artworkname>"
    And user navigates into Image tab and creates "<IDSName>"
    Then user select calendar season under style denim and verify the screen

    Examples: 
      | Artworkname      | IDSName      |
      | Calendar Artwork | Calendar IDS |

  #-------------------------------------------------------------------------------------------------------------

  @Calendar_material
  Scenario Outline: calendar date selection in material
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And user create material sku under material "<materailsku>"
    And user select calendar enter date for the calendar season
    And user freeze and apply calendar
    And user edit manual date under material activities
    And user navigates MSGSTANDALONE creates BOM and approves it "<Bomvalue>"
    And user approves created MDS and MCDS "<mdsvalue>","<colorvalue>"

    Examples: 
      | materailsku | Bomvalue     | mdsvalue     | colorvalue    |
      | MT SKU      | Calendar BOM | Calendar MDS | 11-0103 EGRET |

  #-------------------------------------------------------------------------------------------------------------

  @Calendar_sourcing
  Scenario Outline: calendar sourcing and po order validation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And create calendar po template for order po group
    And Navigate to calendarpo and enter date for the calendar
    And user freeze and apply calendar for the data
    And Navigate to style create review "<Review>"
    Then Logout from the Application

    Examples: 
      | Review                |
      | Calendar Style Review |
 
 
   #-------------------------------------------------------------------------------------------------------------     