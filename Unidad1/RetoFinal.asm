```
(START)    
@16384 
D=A    
@65
M=D    
@80
D=A
@24576 
D=D-M  
@buclePint
D;JEQ
@65
D=A
@24576
D=D-M
@bucleDespint
D;JEQ

@?
0;JMP



(bucleDespint)

@16
D=M
@20603
D=A-D
@?
D;JEQ
@16
AM=M+1
M=0

@bucleDespint
0;JMP


(buclePint)

@19540
M=-1
@19572
M=-1
@19604
M=-1
@19636
M=-1
@19668
M=-1
@19700
M=-1
@19732
M=-1
@19764
M=-1
@19796
M=-1
@19828
M=-1
@19860
M=-1
@19892
M=-1
@19924
M=-1
@19956
M=-1
@19988
M=-1
@20020
M=-1
@20052
M=-1
@20084
M=-1
@20116
M=-1
@20148
M=-1
@20180
M=-1
@20212
M=-1
@20244
M=-1
@20276
M=-1
@20308
M=-1
@20340
M=-1
@20372
M=-1
@20404
M=-1
@20436
M=-1
@20468
M=-1
@20500
M=-1
@20532
M=-1
@20564
M=-1
@20596
M=-1
@20628
M=-1
@20660
M=-1
@20692
M=-1
@20724
M=-1
@20756
M=-1
@20788
M=-1
@20820
M=-1
@20852
M=-1
@20884
M=-1
@20916
M=-1
@20948
M=-1
@19541
M=-1
@19573
M=-1
@19605
M=-1
@19637
M=-1
@19669
M=-1
@19701
M=-1
@19733
M=-1
@19765
M=-1
@19797
M=-1
@19829
M=-1
@19861
M=-1
@19893
M=-1
@19925
M=-1
@19957
M=-1
@19989
M=-1
@20021
M=-1
@20053
M=-1
@20085
M=-1
@20117
M=-1
@20149
M=-1
@20181
M=-1
@20213
M=-1
@20245
M=-1
@20277
M=-1
@20309
M=-1
@20341
M=-1
@20373
M=-1
@20405
M=-1
@20437
M=-1
@20469
M=-1
@20501
M=-1
@20533
M=-1
@20565
M=-1
@20597
M=-1
@20629
M=-1
@20661
M=-1
@20693
M=-1
@20725
M=-1
@20757
M=-1
@20789
M=-1
@20821
M=-1
@20853
M=-1
@20885
M=-1
@20917
M=-1
@20949
M=-1

@?
0;JMP
```
