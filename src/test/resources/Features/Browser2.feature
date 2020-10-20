#Author: karthick@kripya.com
@Selenium @Browser2
Feature: Material setup

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
  @MaterialSetup
  Scenario Outline: Material type creation
    #  Given User launches centric application
    And User Click on setup icon
    And User creates material type "<Standalone>","<Structurecomponent>","<Tool>"


    Examples: 
      | Standalone          | Structurecomponent           | Tool          |
      | Fabric - Stanadlone | Fabric - Structure Component | Fabric - Tool |

  #-----------------------------------------------------------------------------------------------------------------
  Scenario Outline: Enum Setup
 #  Given User launches centric application
 #   And User Click on setup icon
    When Setup Enum for size dimensions in setup page "<Enumeration>"
    Then Create the Enum value for the sizes "<Enumeration Value>","<Description>","<EnumerationValue2>","<Description2>"
    And User navigates to type config
    When user creates the size spec data for size label module "<SizeSpec>"
    And User setup enumeration configurtion for Sample "Style - Proto","Material - Proto"
    When user creates enumeration "Segment - 01","Segment - 02"
    And User Click on setup icon
    Then User click on update cnfiguration

    Examples: 
      | Enumeration       | Enumeration Value | Description | EnumerationValue2 | Description2 | SizeSpec |
      | DimensionType (1) | Length            | 2DSizeModul | Waist             | 2DSize       |   Characteristic,Construction,Packaging        |
  #---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 

  Scenario Outline: User creates New season for a product
    #Given User launches centric application
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

  Scenario Outline: User creates New material for a product
    #Given User launches centric application
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
  Scenario Outline: Material Sample validation
    # Given User launches centric application
    Then Go to homepage
    And verify user screen
    And User validates and edit material samples "<material-Sample>","<ChooseSupplier>"

    Examples: 
      | material-Sample    | ChooseSupplier |
      | 100% Cotton Jersey | Supplier       |

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

  #-------------------------------------------------------------------------------------------------------------
  Scenario Outline: Material Care Label validation
    #  Given User launches centric application
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

    #Then Logout from the Application
    Examples: 
      | StrComponent-material |
      | shoe structure        |

  #-------------------------------------------------------------------------------------------------------------
   @PrintDesign
  Scenario Outline: Print design Creation and validation
    #  Given User launches centric application
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
  Scenario Outline: Inspection Creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Enumeration "<DefectsCategory>"
    When user creates setup in Inspection "<Defects>","<AccLimit>","<sortOrder>","<TestSpecification>","<SamplingValue>","<ErrorType>","<TemplateName>","<BOMName>","<SizeChart>","<DimensioName>","<InspectionGrpName>"

    Examples: 
      | Defects                                              | AccLimit                | sortOrder | TestSpecification                                   | SamplingValue         | ErrorType                 | TemplateName    | BOMName        | SizeChart   | DimensioName  | InspectionGrpName    | DefectsCategory |
      | Size Defect,Sewing Defect,Fabric Defect,Color Defect | 2.5%AQL,4.5%AQL,ACL 3.0 |     0,1,2 | No Link,BOM,Size Chart,Spec Data Sheet,Style Review | Single SP,Multiple SP | Critical,High,Check Error | auto-inspection | Inspection BOM | Ins Special | New Dimension | New Inspection Group | High,Medium,Low |

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
 
  @InspectionStyleCreation
  Scenario Outline: Inspection style creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Style for inspection "<BOMName>"
    And User creates ImageDatasheet "<ImageName>","<Description>"
    Then User creates Review and sizechart "<ReviewName>","<ReviewDesc>","<canvasNote>","<InsSize>"
    Then User creates spec "<specvalue>","<datasheet>","<specdesc>","<customspecvalue>","<specialvalue>","<Bomcopy1>","<Bomcopy2>"
    Then User creates Inspection and verify the created items in Style Specification "<InspectionName>","<Samplingvalue>","<SupplierValue>"

    Examples: 
      | BOMName | ImageName | Description              | ReviewName       | ReviewDesc               | canvasNote         | InsSize       | specvalue | datasheet          | specdesc           | customspecvalue     | specialvalue   | Bomcopy1     | Bomcopy2      | InspectionName     | Samplingvalue | SupplierValue |
      | Ins-BOM | INS-IDS   | Image Inspection Testing | Ins-Style Review | Style Inspection testing | Automation Testing | Ins-SizeChart | character | Ins-spec datasheet | Inspection Testing | Custom spec section | Characteristic | Ins-BOM COPY | Ins-BOM COPY2 | Apparel-Inspection | Single        | Supplier      |

  #---------------------------------------------------------------------------------------------------

  @InspectionContinuation
  Scenario Outline: Inspection style creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then create NewInspectionSecurityGroup "<ErrorType>","<AccLimit>","<SampleQtyMethod>","<InsBatchName>","<Attribute>","<Batchcolorway>","<BatchSize>","<Defectvalue>","<DefectCounter>"
		And User verify the PDF and InspectionBatch status
    
    
    Examples: 
      | ErrorType     | AccLimit | SampleQtyMethod   | InsBatchName     | Attribute                                            | Batchcolorway | BatchSize | Defectvalue | DefectCounter |
      | High,Critical | 2.5,4.5  | Static,Percentage | Size chart batch | Inspection Size Chart Dimension,Size Chart Dimension | Vanilla       | small     | size        |             5 |

  #---------------------------------------------------------------------------------------------------

@InspectionShipment
  Scenario Outline: Inspection shipment
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then create Inspection shipment "<ErrorType>","<ProductionQuote>","<styleInspValue>","<TemplateValue>","<ShipmentInspValue>","<Level>","<BatchShipment>","<OrderInspection>","<TemplateName>","<DefectCounter>","<DefectValue>","<BatchSize>","<Samplecount>","<OrderBatchName>"

    Examples: 
      | ErrorType     | ProductionQuote | styleInspValue   | TemplateValue | ShipmentInspValue   | Level          | BatchShipment  | OrderInspection  | TemplateName              | DefectCounter | DefectValue  | BatchSize | Samplecount | OrderBatchName  |
      | High,Critical | Supplier        | Style-Inspection | inspection    | Shipment-Inspection | Shipment,Order | Batch-shipment | Order-Inspection | order-inspection template |           1,2 | fabric,color | small     |          50 | Batch for Order |
 
   #---------------------------------------------------------------------------------------------------
 
  