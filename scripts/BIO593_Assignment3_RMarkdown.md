BIO593 Assignment 3
================
Kevin Wong, Danielle Jordan, Roxy Roja
2018-03-26

Introduction of the data
------------------------

This document uses data with life-history, population, and ecological examples. This data can be cited here: <http://dx.doi.org/10.6084/m9.figshare.1314459>. We will provide an indepth analysis containing plots that visually represent trends in the data and statistical analyses to accurately describe the trends. We will outline the major questions with this dataset.

Introduction of the problem
---------------------------

Our analyses investigate how differential plot types can influences rodent species weight, sex ratios, hindfoot length, and abundances. The following markdown will couple illustrative figures with statistical analyses to determine if plot types affect rodent species.

Question 1 (Roxy)
-----------------

Does plot type affect the relationship between hindfoot length and sex of rodent species?

Question 2a
-----------

What is the relationship between hindfoot length and species?? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q2a-1.png) \#\# Question 2b What is the relationship between hindfoot length and weight? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/2b-1.png)

Question 2c
-----------

Does plot type affect the relationship between weight and sex of rodent species? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q2c-1.png)

Question 3a (Plot)(Kevin)
-------------------------

How does rodent species abundance change in each plot type? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q3a-1.png)

Question 3b (Statistics) (Kevin)
--------------------------------

A Pearsons Chi-squared test was used to determine relationship between rodent species abundance and plot type. The residuals are plotted from the Chi-squared analysis to determine postivie and negative associations. Blue means positive association and red means negative association.

    ## package 'git2r' successfully unpacked and MD5 sums checked
    ## package 'devtools' successfully unpacked and MD5 sums checked
    ## 
    ## The downloaded binary packages are in
    ##  C:\Users\Danielle\AppData\Local\Temp\RtmpGqc2lP\downloaded_packages

    ## package 'corrplot' successfully unpacked and MD5 sums checked
    ## 
    ## The downloaded binary packages are in
    ##  C:\Users\Danielle\AppData\Local\Temp\RtmpGqc2lP\downloaded_packages

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  tbl
    ## X-squared = 12747, df = 156, p-value < 2.2e-16

    ##                            
    ##                             albigula audubonii baileyi bilineata
    ##   Control                      2.031    -0.803 -14.115    -5.143
    ##   Long-term Krat Exclosure    -1.341     1.796  30.142    -0.536
    ##   Rodent Exclosure            -0.434     4.923 -15.344     7.432
    ##   Short-term Krat Exclosure    2.705    -3.008  16.573     5.097
    ##   Spectab exclosure           -5.391    -1.874 -10.674    -3.103
    ##                            
    ##                             brunneicapillus chlorurus  clarki eremicus
    ##   Control                            -1.993    -2.271  -0.670   -9.938
    ##   Long-term Krat Exclosure           -0.500     0.944   2.223    1.655
    ##   Rodent Exclosure                    2.398     1.035  -0.349   25.208
    ##   Short-term Krat Exclosure           3.264     2.479  -0.412    0.973
    ##   Spectab exclosure                  -1.952    -0.664  -0.336   -9.450
    ##                            
    ##                              flavus fulvescens fulviventer  fuscus
    ##   Control                   -10.933     -3.905      -0.068  -1.498
    ##   Long-term Krat Exclosure   22.379     -0.311       5.039  -0.858
    ##   Rodent Exclosure           -9.995      6.247      -1.850   1.784
    ##   Short-term Krat Exclosure  12.198      3.718      -1.592   2.335
    ##   Spectab exclosure          -8.341     -2.906      -1.746  -0.750
    ##                            
    ##                             gramineus harrisi hispidus intermedius
    ##   Control                      -0.311  -5.078   -2.157       0.478
    ##   Long-term Krat Exclosure      0.759   6.947   10.457       2.325
    ##   Rodent Exclosure              0.027   3.678   -2.524      -1.047
    ##   Short-term Krat Exclosure     0.551   1.719   -1.341      -1.236
    ##   Spectab exclosure            -0.949  -3.737   -3.377      -1.007
    ##                            
    ##                             leucogaster leucophrys leucopus maniculatus
    ##   Control                         0.919     -0.947   -3.771     -14.112
    ##   Long-term Krat Exclosure       -3.289     -0.542    0.306       9.280
    ##   Rodent Exclosure               -0.942      1.534   10.807      24.151
    ##   Short-term Krat Exclosure       1.775      1.133   -2.472      -0.051
    ##   Spectab exclosure               0.723     -0.475   -1.020      -7.479
    ##                            
    ##                             megalotis melanocorys merriami montanus
    ##   Control                     -22.440      -1.587   29.073   -1.367
    ##   Long-term Krat Exclosure     17.361       2.955  -33.279   -0.163
    ##   Rodent Exclosure             40.831       1.127  -12.209    4.081
    ##   Short-term Krat Exclosure    -2.659      -0.813  -15.160   -1.165
    ##   Spectab exclosure           -14.225      -0.384   11.305    0.104
    ##                            
    ##                             ochrognathus   ordii penicillatus savannarum
    ##   Control                         -2.344   8.481       -7.840      0.108
    ##   Long-term Krat Exclosure         6.231 -17.076       19.571      1.301
    ##   Rodent Exclosure                -0.976  -8.355       -7.132     -0.493
    ##   Short-term Krat Exclosure        0.629  -6.349        1.858     -0.583
    ##   Spectab exclosure               -2.201  19.067       -1.586     -0.475
    ##                            
    ##                             scutalatus     sp. spectabilis spilosoma
    ##   Control                        0.823   1.192       7.913    -0.786
    ##   Long-term Krat Exclosure      -0.384  -1.027     -17.839    -0.081
    ##   Rodent Exclosure              -0.349   0.165     -11.498     0.150
    ##   Short-term Krat Exclosure     -0.412  -1.728       1.934     0.138
    ##   Spectab exclosure             -0.336   0.743      14.170     1.337
    ##                            
    ##                             squamata taylori tereticaudus  tigris torridus
    ##   Control                     -1.933  -4.323       -0.670  -0.670   -0.166
    ##   Long-term Krat Exclosure    -0.231  11.621       -0.384  -0.384    2.535
    ##   Rodent Exclosure             4.338  -0.675       -0.349  -0.349   -2.761
    ##   Short-term Krat Exclosure    0.779  -1.721        2.015   2.015    3.591
    ##   Spectab exclosure           -1.342  -1.837       -0.336  -0.336   -4.103
    ##                            
    ##                             undulatus uniparens viridis
    ##   Control                      -0.163    -0.670  -0.670
    ##   Long-term Krat Exclosure      0.308    -0.384   2.223
    ##   Rodent Exclosure             -0.780     2.518  -0.349
    ##   Short-term Krat Exclosure     1.249    -0.412  -0.412
    ##   Spectab exclosure            -0.750    -0.336  -0.336

![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q3b-1.png)

Question 4 (Plot)(Kevin)
------------------------

How does genus abundance differ between plot types? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q4-1.png)

Question 4b (Statistics)(Kevin)
-------------------------------

A Pearsons Chi-squared test was used to determine relationship between rodent genus abundance and plot type. The residuals are plotted from the Chi-squared analysis to determine postivie and negative associations. Blue means positive association and red means negative association.

    ##                            
    ##                             Ammodramus Ammospermophilus Amphispiza Baiomys
    ##   Control                            1              125         76       1
    ##   Long-term Krat Exclosure           1              120         41      37
    ##   Rodent Exclosure                   0               80         82       4
    ##   Short-term Krat Exclosure          0               89         88       3
    ##   Spectab exclosure                  0               23         16       1
    ##                            
    ##                             Calamospiza Callipepla Campylorhynchus
    ##   Control                             2          2              13
    ##   Long-term Krat Exclosure            6          2               6
    ##   Rodent Exclosure                    3          8              12
    ##   Short-term Krat Exclosure           1          4              18
    ##   Spectab exclosure                   1          0               1
    ##                            
    ##                             Chaetodipus Cnemidophorus Crotalus Dipodomys
    ##   Control                          1902             0        1      9847
    ##   Long-term Krat Exclosure         1931             0        1       358
    ##   Rodent Exclosure                  308             1        0      1165
    ##   Short-term Krat Exclosure        1433             1        0      1993
    ##   Spectab exclosure                 455             0        0      2804
    ##                            
    ##                             Lizard Neotoma Onychomys Perognathus
    ##   Control                        3     610      1481         435
    ##   Long-term Krat Exclosure       0     166       490         589
    ##   Rodent Exclosure               0     147       341          56
    ##   Short-term Krat Exclosure      1     252       646         478
    ##   Spectab exclosure              0      77       309          71
    ##                            
    ##                             Peromyscus Pipilo Pooecetes Reithrodontomys
    ##   Control                          464     11         3             415
    ##   Long-term Krat Exclosure         459      8         2             735
    ##   Rodent Exclosure                 864     11         1            1079
    ##   Short-term Krat Exclosure        387     16         2             413
    ##   Spectab exclosure                 60      6         0              52
    ##                            
    ##                             Rodent Sceloporus Sigmodon Sparrow
    ##   Control                        5          2       78       2
    ##   Long-term Krat Exclosure       0          2      110       1
    ##   Rodent Exclosure               2          0       13       0
    ##   Short-term Krat Exclosure      2          2       29       1
    ##   Spectab exclosure              1          0        3       0
    ##                            
    ##                             Spermophilus Sylvilagus Zonotrichia
    ##   Control                            103         29           0
    ##   Long-term Krat Exclosure            36         17           0
    ##   Rodent Exclosure                    31         24           1
    ##   Short-term Krat Exclosure           44          2           1
    ##   Spectab exclosure                   35          3           0

    ##                            
    ##                             Ammodramus Ammospermophilus Amphispiza Baiomys
    ##   Control                        0.108           -5.078     -5.143  -4.323
    ##   Long-term Krat Exclosure       1.301            6.947     -0.536  11.621
    ##   Rodent Exclosure              -0.493            3.678      7.432  -0.675
    ##   Short-term Krat Exclosure     -0.583            1.719      5.097  -1.721
    ##   Spectab exclosure             -0.475           -3.737     -3.103  -1.837
    ##                            
    ##                             Calamospiza Callipepla Campylorhynchus
    ##   Control                        -1.587     -1.933          -1.993
    ##   Long-term Krat Exclosure        2.955     -0.231          -0.500
    ##   Rodent Exclosure                1.127      4.338           2.398
    ##   Short-term Krat Exclosure      -0.813      0.779           3.264
    ##   Spectab exclosure              -0.384     -1.342          -1.952
    ##                            
    ##                             Chaetodipus Cnemidophorus Crotalus Dipodomys
    ##   Control                       -15.450        -0.947    0.108    30.427
    ##   Long-term Krat Exclosure       35.052        -0.542    1.301   -41.431
    ##   Rodent Exclosure              -15.715         1.534   -0.493   -18.089
    ##   Short-term Krat Exclosure      12.796         1.133   -0.583   -14.351
    ##   Spectab exclosure              -8.598        -0.475   -0.475    23.038
    ##                            
    ##                              Lizard Neotoma Onychomys Perognathus
    ##   Control                     0.899   2.031     0.388     -10.949
    ##   Long-term Krat Exclosure   -0.767  -1.341     0.426      22.564
    ##   Rodent Exclosure           -0.698  -0.434    -2.836     -10.102
    ##   Short-term Krat Exclosure   0.389   2.705     3.878      12.112
    ##   Spectab exclosure          -0.671  -5.391    -3.074      -8.304
    ##                            
    ##                             Peromyscus  Pipilo Pooecetes Reithrodontomys
    ##   Control                      -17.009  -2.554    -0.311         -22.835
    ##   Long-term Krat Exclosure       7.188   0.126     0.759          17.009
    ##   Rodent Exclosure              35.914   1.857     0.027          41.488
    ##   Short-term Krat Exclosure      0.396   2.414     0.551          -2.076
    ##   Spectab exclosure            -12.080   0.059    -0.949         -14.434
    ##                            
    ##                              Rodent Sceloporus Sigmodon Sparrow
    ##   Control                     0.242     -0.422   -2.598   0.153
    ##   Long-term Krat Exclosure   -1.213      1.189   12.932   0.536
    ##   Rodent Exclosure            0.710     -0.854   -2.883  -0.698
    ##   Short-term Krat Exclosure   0.232      0.972   -1.679   0.389
    ##   Spectab exclosure          -0.119     -0.822   -4.537  -0.671
    ##                            
    ##                             Spermophilus Sylvilagus Zonotrichia
    ##   Control                         -0.827     -0.803      -0.947
    ##   Long-term Krat Exclosure        -0.105      1.796      -0.542
    ##   Rodent Exclosure                 0.127      4.923       1.534
    ##   Short-term Krat Exclosure        0.265     -3.008       1.133
    ##   Spectab exclosure                1.313     -1.874      -0.475

![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q4b-1.png)

Question 5 (Plot)(Kevin)
------------------------

How does the total number of rodents change in each plot type over time? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q5-1.png)

Question 5b (Statistics)(Kevin)
-------------------------------

Using a Generalized Lease Square model to determine the effects of plot type over year.

    ## Installing package into 'C:/Users/Danielle/R/win-library/3.4'
    ## (as 'lib' is unspecified)

    ## package 'nlme' successfully unpacked and MD5 sums checked
    ## 
    ## The downloaded binary packages are in
    ##  C:\Users\Danielle\AppData\Local\Temp\RtmpGqc2lP\downloaded_packages

    ## 
    ## Attaching package: 'nlme'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     collapse

![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q5b-1.png)

    ## Generalized least squares fit by REML
    ##   Model: n ~ year * plot_type 
    ##   Data: surveys_timeplot 
    ##        AIC      BIC    logLik
    ##   1533.586 1564.249 -755.7932
    ## 
    ## Coefficients:
    ##                                              Value Std.Error   t-value
    ## (Intercept)                             -22771.746  5493.517 -4.145203
    ## year                                        11.745     2.761  4.253515
    ## plot_typeLong-term Krat Exclosure         3783.746  7769.006  0.487031
    ## plot_typeRodent Exclosure                26340.791  7769.006  3.390497
    ## plot_typeShort-term Krat Exclosure       17491.728  7769.006  2.251476
    ## plot_typeSpectab exclosure               18827.451  7769.006  2.423405
    ## year:plot_typeLong-term Krat Exclosure      -2.104     3.905 -0.538695
    ## year:plot_typeRodent Exclosure             -13.460     3.905 -3.446840
    ## year:plot_typeShort-term Krat Exclosure     -8.979     3.905 -2.299498
    ## year:plot_typeSpectab exclosure             -9.687     3.905 -2.480727
    ##                                         p-value
    ## (Intercept)                              0.0001
    ## year                                     0.0000
    ## plot_typeLong-term Krat Exclosure        0.6271
    ## plot_typeRodent Exclosure                0.0009
    ## plot_typeShort-term Krat Exclosure       0.0262
    ## plot_typeSpectab exclosure               0.0169
    ## year:plot_typeLong-term Krat Exclosure   0.5911
    ## year:plot_typeRodent Exclosure           0.0008
    ## year:plot_typeShort-term Krat Exclosure  0.0232
    ## year:plot_typeSpectab exclosure          0.0145
    ## 
    ##  Correlation: 
    ##                                         (Intr) year   p_L-KE plt_RE p_S-KE
    ## year                                    -1.000                            
    ## plot_typeLong-term Krat Exclosure       -0.707  0.707                     
    ## plot_typeRodent Exclosure               -0.707  0.707  0.500              
    ## plot_typeShort-term Krat Exclosure      -0.707  0.707  0.500  0.500       
    ## plot_typeSpectab exclosure              -0.707  0.707  0.500  0.500  0.500
    ## year:plot_typeLong-term Krat Exclosure   0.707 -0.707 -1.000 -0.500 -0.500
    ## year:plot_typeRodent Exclosure           0.707 -0.707 -0.500 -1.000 -0.500
    ## year:plot_typeShort-term Krat Exclosure  0.707 -0.707 -0.500 -0.500 -1.000
    ## year:plot_typeSpectab exclosure          0.707 -0.707 -0.500 -0.500 -0.500
    ##                                         plt_Se y:_LKE yr:_RE y:_SKE
    ## year                                                               
    ## plot_typeLong-term Krat Exclosure                                  
    ## plot_typeRodent Exclosure                                          
    ## plot_typeShort-term Krat Exclosure                                 
    ## plot_typeSpectab exclosure                                         
    ## year:plot_typeLong-term Krat Exclosure  -0.500                     
    ## year:plot_typeRodent Exclosure          -0.500  0.500              
    ## year:plot_typeShort-term Krat Exclosure -0.500  0.500  0.500       
    ## year:plot_typeSpectab exclosure         -1.000  0.500  0.500  0.500
    ## 
    ## Standardized residuals:
    ##         Min          Q1         Med          Q3         Max 
    ## -3.17905440 -0.57804698 -0.04042463  0.48212023  3.96854881 
    ## 
    ## Residual standard error: 105.597 
    ## Degrees of freedom: 130 total; 120 residual

Question 6 (Danielle)
---------------------

How does hindfoot length change with weight? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q6-1.png)

Question 7 (Danielle)
---------------------

How does hindfoot length change with species ID? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github/Q7-1.png)
