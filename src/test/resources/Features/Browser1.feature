#Author: karthick@kripya.com
@Selenium @UpdateConfiguration @Browser1
Feature: Configuration and Setup

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

    Examples: 
      | SpecTypeA    | SpecTypeB    |
      | Spec Type-01 | Spec Type-02 |

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
  @ContractualSetup
  Scenario Outline: Contractual documents creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates contractual documents "<ContrctAll>","<Simple>","<RA>","<HED>","<HRD>"

    Examples: 
      | ContrctAll | Simple      | RA      | HED      | HRD      |
      | CDOC-ALL   | CDOC-simple | CDOC-RA | CDOC-HED | CDOC-HRD |

  #-----------------------------------------------------------------------------------------------------------------
  @LookUpSetup
  Scenario Outline: Look up items creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates LookUp items "<LookUpA>","<LookUpB>","<LookUpC>"

    Examples: 
      | LookUpA      | LookUpB          | LookUpC              |
      | Cost Factors | Holiday Calendar | User Task Lead Times |

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
    

    Examples: 
      | SalesDivA  | SalesDivB  | SalesDivC     | SalesDivD     |
      | US - North | US - South | India - South | India - North |

  #-------------------------------------------------------------------------------------------------------------
  
  @Specification
  Scenario: Specification Classifier creation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User creates Classifier "Classifier"
    Then Logout from the Application
  #-------------------------------------------------------------------------------------------------------------
    @2DSizes @Specification
  Scenario Outline: User create 2d sizes and validation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
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
      | DimensionType (1) | Length            | 2DSizeModul | Waist             | 2DSize       | small |        10 | medium |         11 | large |         12 | SMALL |         13 | XL    |         14 | XXL   |         15 | SMALL         |           16 | W1       | Waist         | W2        | Waist          | W3        | Waist          | L1        | Length         | L2        | Length         | L3        | Length         |          11 |          12 |          13 |          14 |          15 |          16 | W1/L1           | W1/L2           | W1/L3           | W2/L1           | W2/L2           | W2/L3           | W3/L1           | W3/L2           | W3/L3           | MensRegular | MensPants       | MensJeans       | Childrenswear | 2DSizesCopy  | Elastic     | Characteristic,Construction,Packaging |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
  @ColorSpec @Specification
  Scenario Outline: Colour specification Creation and validation
    # Given User launches centric application
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

    # Then Logout from the Application
    Examples: 
      | TestSpecA     | TestSpecB    | TestSpecC | Code             | Description | User          | Supplier |
      | Chemical Test | Ironing Test | Wash Test | 123 - Automation | Automation  | Administrator | Supplier |

  #-------------------------------------------------------------------------------------------------------------------------------
   Scenario Outline: Style ColorSpec creation
   # Given User launches centric application
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
  
   Scenario Outline: Supplier PO
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When Create PO Group and Supplier PO "<PoGroup>","<supplierpovalue1>","<supplierpovalue2>","<quotevalueBlue>","<quotevaluegreen>","<EditValue>","<dispoint>","<disvalue>","<allowancepoint>","<allowancevalue>"
    Then user creates shipment qc and set "<unitvalueb1>","<unitvalueg1>","<bshipvalue>","<qshipvalue>","<qcissue>","<selectset>","<gshipqty>","<bshipqty>"

    Examples: 
      | PoGroup        | supplierpovalue1    | supplierpovalue2     | EditValue  | quotevalueBlue         | quotevaluegreen         | dispoint | disvalue | allowancepoint | allowancevalue | unitvalueb1 | unitvalueg1 | bshipvalue | qshipvalue | qcissue  | selectset   | gshipqty | bshipqty |
      | order po group | PO-AP1321-Not color | PO-AP1123-colorbased | Automation | blue color faded-large | green color faded-large |        1 |       10 |              2 |             20 |           3 |           5 |         50 |        100 | qc issue | SS-Shipment |       60 |       30 |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Customer PO
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates customerpo and issue "<povalue>","<B_baseprice>","<G_baseprice>","<B_orderqty>","<G_orderqty>","<dispnt>","<disvalue>","<allowanpct>","<allowvalue>","<commission>","<payment>"

    Examples: 
      | povalue             | B_baseprice | G_baseprice | B_orderqty | G_orderqty | dispnt | disvalue | allowanpct | allowvalue | commission | payment |
      | Target PO123#-color |         200 |         350 |         30 |         40 |      1 |      100 |          2 |         50 |          3 | cheque  |

  #---------------------------------------------------------------------------------------------------
  
  