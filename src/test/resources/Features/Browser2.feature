#Author: karthick@kripya.com
@Selenium @Browser2
Feature: Browser - 2

  @StyleSetup
  Scenario Outline: Style type  creation
    Given User launches centric application
    And User Click on setup icon
    When User creates style type "<StyleTypeA>","<StyleTypeB>","<StyleTypeC>","<StyleTypeD>"
    And User fill the style type attributes fields

    Examples: 
      | StyleTypeA               | StyleTypeB               | StyleTypeC          | StyleTypeD                      |
      | Apparel - Color and Size | Accessories - Only Color | Apparel - Only Size | Accessories - No color and Size |

  #-----------------------------------------------------------------------------------------------------------------
  
  @LookUpSetup
  Scenario Outline: Look up items creation
  #  Given User launches centric application
    And User Click on setup icon
    And User creates LookUp items "<LookUpA>","<LookUpB>","<LookUpC>"

    Examples: 
      | LookUpA      | LookUpB          | LookUpC              |
      | Cost Factors | Holiday Calendar | User Task Lead Times |
      
        #-----------------------------------------------------------------------------------------------------------------
      
  @MaterialSetup
  Scenario Outline: Material type creation
    #  Given User launches centric application
    And User Click on setup icon
    And User creates material type "<Standalone>","<Structurecomponent>","<Tool>"
    And User Click on setup icon
    Then User click on update cnfiguration
    Then Logout from the Application

    Examples: 
      | Standalone          | Structurecomponent           | Tool          |
      | Fabric - Stanadlone | Fabric - Structure Component | Fabric - Tool |

  #-----------------------------------------------------------------------------------------------------------------
 
 @StyleSeason
 Scenario Outline: User creates New season for a product
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    And Click style tab and get the listed season name in the style tab
    When User create New season with mandatory deatails for season creation "<StyleA>","<ScodeA>","<SdescriptionA>","<StyleB>","<ScodeB>","<SdescriptionB>"
    And User performing delete action
    And User performing edit action on season
    Then Click New Brand
    And Create Brand by providing valid and mandatory data "<Brand>","<Bcode>","<Bdescription>"
    Then Save the New Brand which was created
    Then Click New department by providing valid data  "<Dept>","<Dcode>","<Ddescription>"
    Then Save the New department which was created
    Then Click New collection
    And Create collection by providing valida and mandatory details "<Collection>","<Ccode>","<Cdesription>"
    Then Save the collection which was created
    Then Click New style
    And Create Style followed by its style Type "<StyleTypeA>","<StyleTypeB>","<StyleTypeC>","<StyleTypeD>"

    # Then Logout from the Application
    Examples: 
      | StyleA        | ScodeA     | SdescriptionA | StyleB        | ScodeB     | SdescriptionB | Brand | Bcode      | Bdescription | Dept | Dcode    | Ddescription | Collection | Ccode     | Cdesription | StyleTypeA               | StyleTypeB               | StyleTypeC          | StyleTypeD                      |
      | summer season | 123 summer | Automation    | winter season | 123 winter | Automation    | Denim | Denim Code | Automation   | Mens | 123 Mens | Automation   | Jeans      | 123 jeans | Automation  | Apparel - Color and Size | Accessories - Only Color | Apparel - Only Size | Accessories - No color and Size |

  #-----------------------------------------------------------------------------------------------------------------


  Scenario Outline: User creates New material for a product
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And Click Libraries tab under specification
    When User create New material with mandatory deatails for material creation "<Standalone-value>","<Standalone-material>","<Standalone-code>"
    And User create material for Structure Component "<StrComponent-value>","<StrComponent-material>","<StrComponent-code>","<Tool-value>","<Tool-material>","<Tool-code>"
    And User performing copy and delete action on material
    And User creates color and size
    Then Go to homepage
    And User creating suppliers,samples and sku and validates "<SupplierA>","<SupplierB>","<SupplierC>","<material-Sample>","<colors/sizes>","<SKU>","<ChooseSupplier>"

    Examples: 
      | SupplierA | SupplierB | SupplierC | material-Sample    | colors/sizes       | SKU          | Standalone-value    | Standalone-material      | Standalone-code  | StrComponent-value           | StrComponent-material  | StrComponent-code | Tool-value    | Tool-material                    | Tool-code        | ChooseSupplier |
      | Changshu  | Frontline | Supplier  | 100% Cotton Jersey | colors and sizes=1 | Material SKU | Fabric - Stanadlone | 100% Cotton/Rayon Jersey | 123 - Automation | Fabric - Structure Component | 100% Polyester Chiffon | 123 - Automation  | Fabric - Tool | 100% Polyester Chiffon (Striped) | 123 - Automation | Supplier       |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Gallery validation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates material gallery "<Test>","<MG-Filter>"

    Examples: 
      | Test          | MG-Filter |
      | QA Automation | Active    |

  #-------------------------------------------------------------------------------------------------------------
 
   Scenario Outline: Material Sample validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates and edit material samples "<material-Sample>","<ChooseSupplier>"

    Examples: 
      | material-Sample    | ChooseSupplier |
      | 100% Cotton Jersey | Supplier       |

  #-------------------------------------------------------------------------------------------------------------
 
  Scenario Outline: Material Security Group validation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates material security group "<Test>","<MSG-Standalone>","<MSG-All>","<MSG-A>","<MSG-B>"

    Examples: 
      | Test          | MSG-Standalone | MSG-All | MSG-A              | MSG-B            |
      | QA Automation | MSG-Standalone | MSG-All | Changshu Materials | Vendor Materials |

  #-------------------------------------------------------------------------------------------------------------
  Scenario: Material color validation
    #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates colored material

  #-------------------------------------------------------------------------------------------------------------
 Scenario: Material SKU validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates material SKU's

  #-------------------------------------------------------------------------------------------------------------
  Scenario: Material Sourcing validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates sourcing
    Then Logout from the Application

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Care Label validation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates care label "<CL-Wash>","<CL-Iron>","<CL-Special>"

    Examples: 
      | CL-Wash     | CL-Iron       | CL-Special            |
      | Do Not Wash | Iron Low Heat | Wash With Like Colors |

  #-------------------------------------------------------------------------------------------------------------
 
  Scenario Outline: Material Composition Placement validation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates composition placements "<CompPlacement-A>","<CompPlacement-B>"

    Examples: 
      | CompPlacement-A          | CompPlacement-B          |
      | Inner Lining - Placement | Outer Lining - placement |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Composite Material validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates composition material "<compMaterial-A>","<compMaterial-B>","<compMaterial-C>"

    Examples: 
      | compMaterial-A | compMaterial-B | compMaterial-C |
      | BRASS          | COTTON         | LEATHER        |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Placement validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates placement "<Placement-A>","<Placement-B>"

    Examples: 
      | Placement-A          | Placement-B      |
      | Shoulder - placement | Neck - placement |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Product Symbols validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates product symbols "<PS-Brand>","<PS-Feature>","<PS-Function>"

    Examples: 
      | PS-Brand | PS-Feature | PS-Function |
      | Heat     | Vibration  | Waterproof  |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Language validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates language "<Language-A>","<Language-B>","<Language-C>"

    Examples: 
      | Language-A   | Language-B | Language-C |
      | English - US | French     | Japanese   |

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Structure Component validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates product structure "<StrComponent-material>"

   # Then Logout from the Application
    Examples: 
      | StrComponent-material |
      | shoe structure        |

  #-------------------------------------------------------------------------------------------------------------
  
  @PrintDesign
  Scenario Outline: Print design Creation and validation
     # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to print design tab
    Then user creates print design data "<PrintDesign>","<PrintType>","<NoOfPrintPosition>","<RepeatHeight>","<RepeatWidth>"
    And user creates the new print color "<NewPrintColor>","<PrintDesign1>","<NewPrintColor1>","<code>"
    Then user navigates to position tab and create data "<PrintPositionName>","<PrintTech>"

    Examples: 
      | PrintDesign                             | PrintType               | NoOfPrintPosition | RepeatHeight | RepeatWidth | NewPrintColor        | PrintDesign1    | NewPrintColor1       | code    | PrintPositionName  | PrintTech    |
      | Abstract Floral,Batik Print,Lilac Print | All Over,Placement,Logo |             3,4,6 |     12,12,12 |    12,12,24 | Blue Abstract Floral | Abstract Floral | Grey Abstract Floral | PDC 100 | ground,leaf,swoosh | Screen Print |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 
 
  @SizeChart
  Scenario Outline: Data creation for the size chart and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to size chart tab
    Then create the size charts "<SizeChart>","<SizeChartDec>","<SizeChartDecAlt>"

    Examples: 
      | SizeChart                                | SizeChartDec                                                                                                                                                                            | SizeChartDecAlt                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
      | A15E,A16S,A25FE,A26FS,A29,C122,C123,U550 | NECK WIDTH_EDGE TO EDGE,NECK WIDTH_SEAM TO SEAM,FRONT NECK DROP_EDGE TO EDGE,FRONT NECK DROP_SEAM TO SEAM,HPS DROP TO CLOSURE_LOW,WAIST_RIGID WAISTBAND,WAIST_ELASTIC BAND RELAXED,KNEE | Measure neck opening straight across from inside edge to inside edge,Measure neck opening straight across from seam to seam,Measure from high point shoulder to center front neck edge,Measure from high point shoulder seam to center front neck seam,Measure from high point shoulder to center of first button,Align top edge of waistband Measure straight across from inside edge to inside edge (waist closure must be fastened),Measure with elastic relaxed and top edge of waistband aligned straight across top edge from inside edge to inside edge (waist closure must be fastened),Measure straight across leg grain at point indicated on specification |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeChart @Increment
  Scenario Outline: SizeChart increment creation and validation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then creates the increment for the size chart "<SizeIncrement>"

    Examples: 
      | SizeIncrement                      |
      | Womens alpha tops,Pants Grade Rule |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeChart @Increment
  Scenario Outline: Mapping of values increment Tab and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to sizeRange tab for twoDsize validation "MensRegular"
    And user navigates to increment tab and create custom view "<RemoveAttributes>"
    Then user maps the size range for the increments "<SizeIncrement>","<SizeRange>"
    And user maps the dimensions inside the increments values "<Increment1>","<Increment2>","<dim1>","<dim2>","<dim3>","<dim4>","<dim5>","<dim6>","<dim7>"

    # When user selects the base sizes for the increments "<Increment1>","<Increment2>","<baseSize1>","<baseSize2>"
    #  And user creation of tags in the dimension "<dim3>"
    # Then user will create the product group
    Examples: 
      | SizeRange                 | SizeIncrement                      | Increment1        | Increment2       | dim1 | dim2 | dim3 | dim4 | dim5  | dim6 | dim7  | baseSize1 | baseSize2 | RemoveAttributes |
      | Childrenswear,MensRegular | Womens alpha tops,Pants Grade Rule | Womens alpha tops | Pants Grade Rule | C122 | C123 | A15E | A16S | A25FE | A29  | A26FS | small     | large     | Description,Tags |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeLabel
  Scenario Outline: User creates sizeLabel and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to size label tab
    And user creates the size label "<SizeLabel>"
    Then Validate the options like copy and delete for size label "Horizontal Size Label-COPY","<SizeLabelCopy>"

    Examples: 
      | SizeLabel                                 | SizeLabelCopy         |
      | Horizontal Size Label,Vertical Size Label | Horizontal Size Label |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @SizeSpecs
  Scenario Outline: User creates SizeSpecs and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to size spec tab
    And user creates the size spec "<SizeSpec>"
    Then Validate the options like copy and delete for size spec "<SizeSpecCopy>"

    Examples: 
      | SizeSpec          | SizeSpecCopy |
      | 12,14,16,4*6,8x11 |           12 |

  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @LookUp
  Scenario Outline: Lookup creation and validation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to lookup tab
    And user creates the lookup "<LookUp>","<LookUpTypes>","<Code>","<desc>"
    And user creates the lookup "<LookUp1>","<LookUpTypes2>","<Code>","<desc>"
    And user creates the lookup "<LookUp2>","<LookUpTypes3>","<Code>","<desc>"
    Then Validate the options like copy and delete for lookup "Reg_colorCopy","<LookUpCopy>"

    Examples: 
      | LookUp                                                                                                         | LookUpCopy                               | LookUpTypes  | LookUpTypes2     | LookUpTypes3         | LookUp1                                                                                | LookUp2                                                                                                                                                                                                                | Code      | desc       |
      | 01_Low Cost Factor,02_Mid Cost Factor,03_High Cost Factor,04_Very High Cost Factor,05_Speciality Products Only | 005a_Create Design BOM_Apparel_Carryover | Cost Factors | Holiday Calendar | User Task Lead Times | IND-Dussehra-2020,IND-Dussehra-2019,IND-Diwali-2020,IND-Diwali-2019,IND-Christmas-2020 | 001_Fill Set-up details_Apparel_Carryover,002_Review and Approve Style Targets_Apparel_Carryover,003_Create Colorways_Apparel_Carryover,004_Upload Sketches_Apparel_Carryover,005a_Create Design BOM_Apparel_Carryover | 1,2,3,4,5 | LookupData |

  #----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @ProductAlternative
  Scenario Outline: Product alternative and validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user navigates to product alternative tab
    Then user creates the product alternative data "<ProductAlternative>"
    Then Validate the options like copy and delete for size label "China-COPY","<ProductAlternativeCopy>"

    Examples: 
      | ProductAlternative             | ProductAlternativeCopy |
      | China,Italy,Vietnam (no qoute) | China                  |

  #-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  @InspectionCreation
  Scenario Outline: Inspection Setup
    #   Given User launches centric application
    Then Go to homepage
    And verify user screen
    #  Then User creates Enumeration "<DefectsCategory>"
    #  And update configuration for inspection
    Then user creates Defects in Inspection "<Defects>"
    Then user creates AccLimit in Inspection "<AccLimit>","<sortOrder>"
    Then user creates TestSpecification and sampling in Inspection "<TestSpecification>","<SamplingValue>"
    Then User creates ErrorType in Inspection "<ErrorType>"
    And user creates TemplateName BomName sizechart and Dimension "<TemplateName>","<BOMName>","<SizeChart>","<DimensioName>","<TestSpecification>","<SamplingValue>","<ErrorType>","<InspectionGrpName>"

    Examples: 
      | Defects                                              | AccLimit                | sortOrder | TestSpecification                                   | SamplingValue         | ErrorType                 | TemplateName    | BOMName        | SizeChart   | DimensioName  | InspectionGrpName    | DefectsCategory |
      | Size Defect,Sewing Defect,Fabric Defect,Color Defect | 2.5%AQL,4.5%AQL,ACL 3.0 |     0,1,2 | No Link,BOM,Size Chart,Spec Data Sheet,Style Review | Single SP,Multiple SP | Critical,High,Check Error | auto-inspection | Inspection BOM | Ins Special | New Dimension | New Inspection Group | High,Medium,Low |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Inspection Groupname
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates Inspection group name"<InspectionGrpName>"

    Examples: 
      | InspectionGrpName    |
      | New Inspection Group |

  #---------------------------------------------------------------------------------------------------

  Scenario Outline: Material Supplier Quotes & Samples
    #Given User launches centric application
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
    #  Given User launches centric application
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

    #  Then Logout from the Application
    Examples: 
      | ProductGrp | Description | Increments       | SecurityGrp            | Sample              |
      | PG - 01    | Automation  | Pants Grade Rule | Security Group - Shape | Circle Shape Sample |

  #---------------------------------------------------------------------------------------------------
  
   
  
  Scenario Outline: User Conversation Categories creation
    # Given User launches centric application
    And User Click on setup icon
    Then User creates converstion value in config_setup "<conversation1>"
    And Edit and delete the existing conversation data "<conversation2>","<conversation3>"
    And User select Style from Business Object "Style"
    When Navigate to to conversation cateogries within style

    #And User click on update cnfiguration
    Examples: 
      | conversation1                                                                 | conversation2                           | conversation3 |
      | Planning the style,Planning the Material,Designing the Style,Plan for Seasons | Test Running,Design Style,Plan Material | Tested Runner |

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
    Then Logout from the Application

    Examples: 
      | povalue             | B_baseprice | G_baseprice | B_orderqty | G_orderqty | dispnt | disvalue | allowanpct | allowvalue | commission | payment |
      | Target PO123#-color |         200 |         350 |         30 |         40 |      1 |      100 |          2 |         50 |          3 | cheque  |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: User creates collection management
     Given User launches centric application
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

  #---------------------------------------------------------------------------------------------------
  
  Scenario Outline: User creates collection management with SKU
  #  Given User launches centric application
    Then Go to homepage
    And verify user screen
    When user creates collection management with SKU "<CollectionValue>","<Currency>","123 Automation","CT - 01","Stripped Jeans - SKU"
    And user creates styles marketing products "Apparel - Jeans","123 Automation","smoke"
    And verify material SKU values
    And user creates marketing material and update values in marketing product "<MaterialA>","<MaterialB>","<Color>"
    And user creates SKU sales market in collection management "<Customer>"
    And User creates promotion and sales order "New Promo","Indian Sales Order","US - North","<Customer>"
    And user creates marketing tools and update sales order
    And user creates sales order group and update catalog configuration
    Then Logout from the Application

    Examples: 
      | CollectionValue | Currency | MaterialA                | MaterialB                       | Color | Customer |
      | Jeans           | Rupee    | 100% Cotton/Rayon Jersey | 100% Cotton/Rayon Jersey - Copy | Blue  | H&M      |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Sizechart creation setup
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates setup page in Increment "<Incrementvalue>"
    And User sets grainline in ProductGroup

    Examples: 
      | Incrementvalue                |
      | 34,30,45,55,67,45,34,32,56,66 |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Sizechart creation setup
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User Navigates to apparelColorandsize under season
    Then User creates NewSizeChart "<sizechartvalue>"
    And User manageviews for Dimension and TDS
    And Select the Warp, weave, grainlinevalues "<warpShrinkagevalue>","<weaveShrinkagevalue>","<gralinevalue">
    Then user fills the pattern value for large, medium and small "<small>","<medium>","<large>"
    And User restore increments and restore tolerance
    And user enter Shrinkagevalue "<Shrinkagevalue>"
    Then user restoreshrinkage
    Then user Resetpattern

    Examples: 
      | sizechartvalue  | small       | medium      | large       | Shrinkagevalue | warpShrinkagevalue | weaveShrinkagevalue | gralinevalue                             |
      | Apparel SC - 01 | 45,46,32,45 | 45,56,70,56 | 34,34,24,34 |          15,20 |                  5 |                  10 | Cut With Grainline,Cut Against Grainline |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Sizechart setup for changeproductgroup
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User create New Increment value
    And select Dimension from list "<Incrementvalue>"
    Then User create New product group value
    Then User enters value in newfromdimension "<Tolerancevalue>"

    Examples: 
      | Incrementvalue | Tolerancevalue |
      |  8,3,9,2,10,11 |          1,2,3 |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: changeproductgroup in Sizechart
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User Navigates to apparelColorandsize under season
    And user changeproductgroup under sizechart "<newProdgrp>"
    And user changeincrement under sizechart "<newProdgrp>"
    Then user change sizerange

    Examples: 
      | newProdgrp  |
      | NEW PG - 01 |

  #---------------------------------------------------------------------------------------------------
  Scenario Outline: Evaluate Sizechart for Apparel SC - 01
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User Navigates to apparelColorandsize under season
    And user selects the created sizechart uncheck size medium
    Then Evalaute the Sizechart "<supplierrequest>","<sampledimension>"
    And verify values under Evaluation tab
    Then User pass the Evaluation as Expected value refelcted in page

    Examples: 
      | supplierrequest | sampledimension  |
      | Apparel - SR    | Colors and Sizes |
      
   #---------------------------------------------------------------------------------------------------
      
     Scenario Outline: Creation for Food
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    And Navigate to Food Setup and create food config "<Allergens>"
    And Navigate to food claims and Create claims "<Claims>"
    And Navigate to food ingredient create ingredients "<Ingredients>"
    Then Create food nutrients "<Nutrients>"
    Then Logout from the Application

    Examples: 
      | Allergens            | Claims                     | Ingredients           | Nutrients                         |
      | Eggs,Fish,Milk,Wheat | Sodium,Sugar,Fibre,Calcium | Pepper,Oil,Salt,Flour | Proteins,Vitamins,Minerals,Lipids |
      
