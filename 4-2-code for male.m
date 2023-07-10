clear all
% % [data, title_]=xlsread('3080_1.xlsx');
load('title_.mat')
load('data.mat')

%% 
Sex = data(:,1);%1代表男性，0代表女性

%% 分离出所有男性的数据，并测试
data1= data(find(Sex==1),:);
% plot(data1(:,2),data1(:,19),'ro')
%检验所选的变量，与时间年龄是否相关
% Rx1=corrcoef  (data1 )

%RbaPWV0(i)>1520&RbaPWV0(i)>1520&RbSYS0(i)>140&RbDIA0(i)>90
yichang1_1=find(data1(:,3)>=1520);
yichang1_2=find(data1(:,4)>=1520);
yichang1_3=find(data1(:,5)>=1400);
yichang1_4=find(data1(:,7)>=900);
yichang1 = unique([yichang1_1;yichang1_2;yichang1_3;yichang1_4]);

uhage1=data1(yichang1,2);
uhdata1=data1(yichang1,3:end);
uhVAge1=uhdata1(:,37);
uhVAgeNomo1=uhdata1(:,38);
uhRbaPWV1      =uhdata1(:,1);   uhLbaPWV1       =uhdata1(:,2);
uhRbSYS1          =uhdata1(:,3);   uhRbMAP1        =uhdata1(:,4);    uhRbDIA1          =uhdata1(:,5);
uhLbSYS1          =uhdata1(:,6);   uhLbMAP1        =uhdata1(:,7);     uhLbDIA1          =uhdata1(:,8);
uhRaSYS1          =uhdata1(:,9);   uhRaMAP1        =uhdata1(:,10);   uhRaDIA1          =uhdata1(:,11);
uhLaSYS1          =uhdata1(:,12);  uhLaMAP1        =uhdata1(:,13);   uhLaDIA1           =uhdata1(:,14);
uhHeight1         =uhdata1(:,15);  uhWeight1        =uhdata1(:,16);   uhPR1                =uhdata1(:,17);
uhRbPMap1      =uhdata1(:,22);  uhLbPMap1       =uhdata1(:,23);   uhRaPMap1        =uhdata1(:,24);   uhLaPMap1        =uhdata1(:,25);
uhRbUT1           =uhdata1(:,26);  uhLbUT1            =uhdata1(:,27);   uhRaUT1            =uhdata1(:,28);   uhLaUT1             =uhdata1(:,29);
uhRbAmpLevel1 =uhdata1(:,30);  uhLbAmpLevel1 =uhdata1(:,31);   uhRaAmpLevel1 =uhdata1(:,32);   uhLaAmpLevel1   =uhdata1(:,33);
uhRabi1             =uhdata1(:,34);  uhLabi1             =uhdata1(:,35);   uhBMI1              =uhdata1(:,36);   uhRisk1                =uhdata1(:,39);
uhRbPR1           =uhdata1(:,40);  uhLbPR1             =uhdata1(:,41);   uhRaPR1            =uhdata1(:,42);   uhLaPR1              =uhdata1(:,43);
% uhX1=uhdata1(:,[1,2,22,23]);

Title_1=title_(3:end);

hdata1=data1(:,3:end);
hage1=data1(:,2);
hdata1(yichang1,:)=[];
hage1(yichang1,:)=[];

hVAge1=hdata1(:,37);
hVAgeNomo1=hdata1(:,38);
hRbaPWV1      =hdata1(:,1);   hLbaPWV1       =hdata1(:,2);
hRbSYS1          =hdata1(:,3);   hRbMAP1        =hdata1(:,4);    hRbDIA1          =hdata1(:,5);
hLbSYS1          =hdata1(:,6);   hLbMAP1        =hdata1(:,7);     hLbDIA1          =hdata1(:,8);
hRaSYS1          =hdata1(:,9);   hRaMAP1        =hdata1(:,10);   hRaDIA1          =hdata1(:,11);
hLaSYS1          =hdata1(:,12);  hLaMAP1        =hdata1(:,13);   hLaDIA1           =hdata1(:,14);
hHeight1         =hdata1(:,15);  hWeight1        =hdata1(:,16);   hPR1                =hdata1(:,17);
hRbPMap1      =hdata1(:,22);  hLbPMap1       =hdata1(:,23);   hRaPMap1        =hdata1(:,24);   hLaPMap1        =hdata1(:,25);
hRbUT1           =hdata1(:,26);  hLbUT1            =hdata1(:,27);   hRaUT1            =hdata1(:,28);   hLaUT1             =hdata1(:,29);
hRbAmpLevel1 =hdata1(:,30);  hLbAmpLevel1 =hdata1(:,31);   hRaAmpLevel1 =hdata1(:,32);   hLaAmpLevel1   =hdata1(:,33);
hRabi1             =hdata1(:,34);  hLabi1             =hdata1(:,35);   hBMI1              =hdata1(:,36);   hRisk1                =hdata1(:,39);
hRbPR1           =hdata1(:,40);  hLbPR1             =hdata1(:,41);   hRaPR1            =hdata1(:,42);   hLaPR1              =hdata1(:,43);
% hX1=hdata1(:,[1,2,22,23]);

%% 从37个变量中，筛选变量
      Fenxi_data1(:,1) = [hage1;uhage1];% 所有样本时间年龄

      Fenxi_data1(:,5) = [hRbaPWV1;uhRbaPWV1 ];
      Fenxi_data1(:,6) =[hLbaPWV1;uhLbaPWV1];%
      Fenxi_data1(:,7)=[hRbPMap1;uhRbPMap1];% 所有样本
      Fenxi_data1(:,8)=[hLbPMap1;uhLbPMap1];% 所有样本
      
      Fenxi_data1(:,9) =[hRbSYS1;uhRbSYS1];% 
      Fenxi_data1(:,10) =[hRbMAP1;uhRbMAP1]; % 所有样本
      Fenxi_data1(:,11) = [hRbDIA1;uhRbDIA1];% 所有样本
      
      Fenxi_data1(:,12)=[hLbSYS1;uhLbSYS1];% 所有样本
      Fenxi_data1(:,13)=[hLbMAP1;uhLbMAP1];% 所有样本
      Fenxi_data1(:,14)=[hLbDIA1;uhLbDIA1]; % 所有样本
      
      Fenxi_data1(:,15)=[hRaSYS1;uhRaSYS1];% 所有样本
      Fenxi_data1(:,16)=[hRaMAP1;uhRaMAP1];% 所有样本
      Fenxi_data1(:,17)=[hRaDIA1;uhRaDIA1]; % 所有样本
      
      Fenxi_data1(:,18)=[hLaSYS1;uhLaSYS1];% 所有样本
      Fenxi_data1(:,19)=[hLaMAP1;uhLaMAP1];% 所有样本
      Fenxi_data1(:,20)=[hLaDIA1;uhLaDIA1]; % 所有样本
      
      Fenxi_data1(:,21)=[hHeight1;uhHeight1];% 所有样本
      Fenxi_data1(:,22)=[hWeight1;uhWeight1];% 所有样本
      Fenxi_data1(:,23)=[hPR1;uhPR1]; % 所有样本

      Fenxi_data1(:,24)=[hRaPMap1;uhRaPMap1]; % 所有样本
      Fenxi_data1(:,25)=[hLaPMap1;uhLaPMap1]; % 所有样本
      
      Fenxi_data1(:,26)=[hRbUT1;uhRbUT1];% 所有样本
      Fenxi_data1(:,27)=[hLbUT1;uhLbUT1];% 所有样本
      Fenxi_data1(:,28)=[hRaUT1;uhRaUT1]; % 所有样本
      Fenxi_data1(:,29)=[hLaUT1;uhLaUT1]; % 所有样本
      
      Fenxi_data1(:,30)=[hRbAmpLevel1;uhRbAmpLevel1];% 所有样本
      Fenxi_data1(:,31)=[hLbAmpLevel1;uhLbAmpLevel1];% 所有样本
      Fenxi_data1(:,32)=[hRaAmpLevel1;uhRaAmpLevel1]; % 所有样本
      Fenxi_data1(:,33)=[hLaAmpLevel1;uhLaAmpLevel1]; % 所有样本
      
      Fenxi_data1(:,34)=[hRabi1;uhRabi1];% 所有样本
      Fenxi_data1(:,35)=[hLabi1;uhLabi1];% 所有样本
      Fenxi_data1(:,36)=[hBMI1;uhBMI1]; % 所有样本
      Fenxi_data1(:,37)=[hRisk1;uhRisk1]; % 所有样本
      
      Fenxi_data1(:,38)=[hRbPR1;uhRbPR1];% 所有样本
      Fenxi_data1(:,39)=[hLbPR1;uhLbPR1];% 所有样本
      Fenxi_data1(:,40)=[hRaPR1;uhRaPR1]; % 所有样本
      Fenxi_data1(:,41)=[hLaPR1;uhLaPR1]; % 所有样本

 %检查男性所有样本，所有指标与Age的相关性，是否显著
     xx1=Fenxi_data1(:,1);
for i=5:41
%     i=23;
     yy1= Fenxi_data1(:,i);
%      plot(xx1,yy1,'ro')
     [rho,pval] = corr(xx1,yy1,'type','spearman');
     rp1(i,1:2)=   [rho,pval];
end
        
%       plot(Fenxi_data1(1:12120,1),Fenxi_data1(1:12120,25),'ro')
%       corr(Fenxi_data1(1:12120,1),Fenxi_data1(1:12120,25))
hRx1=corrcoef  (   Fenxi_data1(:,5:end)) ;
hVIF1=diag(pinv(hRx1) );%inv改成pinv

test_data1=Fenxi_data1(1:12120,5:end);
for i=1:43
    i
     hRx1=corrcoef  ( test_data1 ) ;
     hVIF1=diag(pinv(hRx1) );%inv改成pinv
     
     if max(hVIF1)>=3
            qvchu=find(hVIF1==max(hVIF1));
%             title_(qvchu+2)=[];---------------------------------------
            test_data1(:,qvchu)=[];
     end
end

% hdata1(1:3,:);

% hVIF1_rang=[ 15 12 10    9     8   7     6   5   4.5 4.4 4.3  4.2  4.1    4   3.95 3.9  3.8    3.5    3    2.5   2   ]
% num1  =  [    31  31 31   30  28  28   26  24  23  22   21  21   21    20  20    18   18     18    16   16   15 ]


% 查看剩下来的变量与age的相关系数，斯皮尔曼等级相关%
% risk不要
for i =1:15
    r1=corr(hage1,test_data1(:,i),'type','spearman');
    R1(i,1)=r1;
    
end

% plot( sort(abs(R1(1:end-1))),'bo'),hold on
sort(abs(R1))


%% 多重线性回归建模
hX1=[hLbaPWV1,hLbPMap1];
uhX1=[uhLbaPWV1,uhLbPMap1];

mod1=LinearModel.fit(hX1,hage1);
figure(8989)
subplot(1,2,2)
l1=plot(hage1,mod1.Fitted,'ro'),hold on

for i =30:80
     M1(i-29)= mean(mod1.Fitted( find(hage1==i)));
end
l2=plot([30:80],M1,'ks','LineWidth',1.5),hold on
% plot([30:80],[30:80],'b:'),hold on
xlabel('Chronological age','FontSize',15);ylabel('Predicted age','FontSize',15);
set(gca, 'FontSize', 15)
axis([25,80,25,80])
XX=[30:80];
% PA1的计算公式：y=  -0.001209x^2             +0.3368x + 33.25
YY=-0.001209*XX.^2             +0.3368*XX + 33.25;
l3=plot(XX,YY,'b','LineWidth',1.5)
title('HVA Male(N=12120)')
aaa=[25 80];bbb=[25 80];
l4=plot( aaa,bbb,'k--','LineWidth',2),hold on
legend([l1,l2,l3,l4],{'Predicted age','Discrete MPA','Continuous MPA','PA=CA'})
text(30,30,'y = -0.001209x^2 + 0.3368x + 33.25','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(9898)
subplot(1,2,2)
hpa1=mod1.Fitted;
hva1=mod1.Fitted-(-0.001209*hage1.^2  +0.3368*hage1 + 33.25)+hage1;
l1=plot(hage1,hva1,'ro'),hold on
mean(hage1),mean(hva1)

uhpa1=mod1.predict(uhX1)
uhva1=mod1.predict(uhX1)-(-0.001209*uhage1.^2  +0.3368*uhage1 + 33.25)+uhage1;
l2=plot(uhage1,uhva1,'b*'),hold on
plot([30:80],[30:80],'k:','LineWidth',2),hold on

xlabel('Chronological age','FontSize',15);ylabel('Vascular age','FontSize',15);
set(gca, 'FontSize', 15)
axis([25,85,25,100])
title('Male(N=22959)')
legend([l1,l2],{'HVA group','Non-HVA group'})
grid on

%% 验证一：所有样本，时间年龄，血管年龄，Vage，VageNOM，与所有的间接指标的相关性比较。。。

      Fenxi_data1(:,2) =[hva1;uhva1];% 所有样本血管年龄 
      Fenxi_data1(:,3) =[hVAge1;uhVAge1];% 所有样本Vage 
      Fenxi_data1(:,4) =[hVAgeNomo1;uhVAgeNomo1]; % 所有样本VAgeNomo;
 
      FENXI_DATA1(:,1)= Fenxi_data1(:,1);
      FENXI_DATA1(:,2)= [hpa1;uhpa1];% 所有样本预测年龄
      FENXI_DATA1(:,3:42)=Fenxi_data1(:,2:end);
      
        for i=1:5
           for j=1:37
            [rho,pval] = corr(FENXI_DATA1(:,i),FENXI_DATA1(:,j+5),'type','spearman'); 
            CCC1(j,i)= rho;
             CCC1_P(j,i)= round(pval*1000)/1000;
           end
        end
        
       CCC1(:,6:7)   =[( abs(CCC1(:,3))- abs(CCC1(:,1))),( abs(CCC1(:,3))- abs(CCC1(:,1)))./ abs(CCC1(:,1))];
       CCC1(:,8:9)  =[( abs(CCC1(:,3))- abs(CCC1(:,2))),( abs(CCC1(:,3))- abs(CCC1(:,2)))./ abs(CCC1(:,2))];
       CCC1(:,10:11)  =[( abs(CCC1(:,3))- abs(CCC1(:,4))),( abs(CCC1(:,3))- abs(CCC1(:,4)))./ abs(CCC1(:,4))];
       CCC1(:,12:13)  =[( abs(CCC1(:,3))- abs(CCC1(:,5))),( abs(CCC1(:,3))- abs(CCC1(:,5)))./ abs(CCC1(:,5))];
       
%        xlswrite('CCC1.xlsx',CCC1);
        ex1=[17,18,19,22,23,32,34,35,36,37];
        d1=abs(CCC1(:,1));d1(ex1)=[];
        d2=abs(CCC1(:,2));d2(ex1)=[];
        d3=abs(CCC1(:,3));d3(ex1)=[];
        d4=abs(CCC1(:,4));d4(ex1)=[];
        d5=abs(CCC1(:,5));d5(ex1)=[];
        
        life1=[d1;d2;d3;d4;d5];
%        h = lillietest(d4)
        group1=[[repmat({'CA'},[27,1])];[repmat({'PA'},[27,1])];[repmat({'VA'},[27,1])];[repmat({'VAge'},[27,1])];[repmat({'VAgeN'},[27,1])]];
       %调用kruskalwallis函数作Kruskal-Wallis检验
       [p1,table1,stats1]=kruskalwallis(life1,group1);
       title('Kruskal-Wallis Test for Male(N=22959)','FontWeight','bold')
       ylabel('Degree of correlation','FontSize',15);
       set(gca, 'FontSize', 15)
      set(gca,'YTick',[0:0.1:1])
      text(4.5,0.9,'p=0.004','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
      grid on

%       [p1,table1,stats1]=anova1(life1,group1);
       %调用multcompare函数对不同配料方案下灯泡的寿命进行多重比较
       [c1,m1,h1,gnames1]=multcompare(stats1);
        title('Multi-compare for Male(N=22959)')
        xlabel('','FontSize',15);
       set(gca, 'FontSize', 15)
       set(gca,'XTick',[30:10:100])
%        prctile(d1,[50,25,75])
       text(42,5.25,'0.298(0.211,0.386)','FontSize',14)
%          prctile(d2,[50,25,75])
        text(70,4.25,'0.498(0.254,0.600)','FontSize',14)
%          prctile(d3,[50,25,75])
       text(63,3.25,'0.438(0.255,0.503)','FontSize',14)
%         prctile(d4,[50,25,75])
       text(70,2.25,'0.502(0.265,0.586)','FontSize',14)
       %         prctile(d5,[50,25,75])
       text(40,1.25,'0.270(0.206,0.343)','FontSize',14)
%        grid on

 %% 验证二：比较健康群体，CA，VA，Vage，VageNOM的差异
%        cy1 = Fenxi_data1(1:12120,1:4);
       cy1 = FENXI_DATA1(1:12120,1:5);
       mean(cy1);
      
        life1=[cy1(:,1);cy1(:,2);cy1(:,3);cy1(:,4);cy1(:,5)];
%     g4=repmat({'A4'},size(A4));
        group1=[[repmat({'CA'},size(cy1(:,1)))];[repmat({'PA'},size(cy1(:,2)))];[repmat({'VA'},size(cy1(:,3)))];[repmat({'VAge'},size(cy1(:,4)))];[repmat({'VAgeN'},size(cy1(:,5)))]];
       
       %调用kruskalwallis函数作Kruskal-Wallis检验
       [p1,table1,stats1]=kruskalwallis(life1,group1);
       ylabel('Age (years)','FontSize',15);
       set(gca, 'FontSize', 15)
      set(gca,'YTick',[0:10:90])
      text(4.5,84,'p=0.000','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
      title('Kruskal-Wallis Test for HVA group of Male(N=12120)','FontWeight','bold','FontSize',13)
      grid on
       
       %调用multcompare函数对不同配料方案下灯泡的寿命进行多重比较
       [c1,m1,h1,gnames1]=multcompare(stats1);
     
        xlabel('','FontSize',15);
       set(gca, 'FontSize', 15)
%        set(gca,'XTick',[24000:2000:38000]);
%        set(gca,'XTickLabel',{'28000','30000','32000','34000'}) 
%        prctile(cy1(:,1),[50,25,75])
       text(27800,5.25,'46(37,53)','FontSize',14)
%          prctile(cy1(:,2),[50,25,75]) 
       text(27800,4.25,'45.79(42.74,49.13)','FontSize',14)
%          prctile(cy1(:,3),[50,25,75])
       text(27800,3.25,'45.24(37.42,53.58)','FontSize',14)
%         prctile(cy1(:,3),[50,25,75])
       text(33000,2.25,'50(42,56)','FontSize',14)
       %         prctile(cy1(:,4),[50,25,75])
       text(33000,1.25,'49(42,56)','FontSize',14)
          title('Multi-compare for HVA group of Male(N=12120)','FontWeight','bold','FontSize',13)
%            title('Multi-compare for HVA group of Male','FontWeight','bold','FontSize',13)
%        grid on

%% 验证三：比较high_risk(VA>CA)和low_risk(VA<CA)在其他各指标上的差异
       for i=1:41
%            i=5;
            risk1= Fenxi_data1(:,2) - Fenxi_data1(:,1);
            
            high_risk_age1= Fenxi_data1(find(risk1>=0), 1 );
            high_risk_data1= Fenxi_data1(find(risk1>=0),i); 
            mean(high_risk_data1);
            mod_high=LinearModel.fit(high_risk_age1,high_risk_data1);
            P1(i,1:3) =prctile(high_risk_data1,[50,25,75]);
            
            low_risk_age1= Fenxi_data1(find(risk1<=0),   1);  
            low_risk_data1= Fenxi_data1(find(risk1<=0),i);       
            mean(low_risk_data1)
            mod_low=LinearModel.fit(low_risk_age1,low_risk_data1);
            P1(i,4:6) =prctile(low_risk_data1,[50,25,75]);
                    
%          [p0,h0,stats0]=signrank(high_risk_data0,low_risk_data0);  %调用signrank检验
%              [p1,h1,stats1]=ranksum(high_risk_data1,low_risk_data1);
            high_risk_data1_=mod_high.predict(low_risk_age1);
            low_risk_data1_ =mod_low.predict(high_risk_age1);
             
             P1(i,7:9)    =prctile([high_risk_data1;high_risk_data1_],[50,25,75]);
             P1(i,10:12) =prctile([low_risk_data1;low_risk_data1_],[50,25,75]);
             
             [p,h,stats]=ranksum([high_risk_data1;high_risk_data1_],[low_risk_data1;low_risk_data1_]);%独立样本，非正太分布
             P1(i,13)=p;
       end
       %        length(high_risk_age1),  length(low_risk_age1)
       %        xlswrite('P1.xlsx',P1);
 
%%  验证四：比较原始方法，的高风险判定。。。和本研究方法的方风险判定
or1=[zeros(12120,1);ones(22959-12120,1)];

risk1= Fenxi_data1(:,2) - Fenxi_data1(:,1);
for i=1:length(risk1)
     if risk1(i)>=0
        test1(i,1)=1;
     else
        test1(i,1)=0;
     end
end

confusion_matrix = confusionmat(or1,test1);


risk11= FENXI_DATA1(:,2) - FENXI_DATA1(:,1);
for i=1:length(risk11)
     if risk11(i)>=0
        test11(i,1)=1;
     else
        test11(i,1)=0;
     end
end
confusion_matrix = confusionmat(or1,test11);

