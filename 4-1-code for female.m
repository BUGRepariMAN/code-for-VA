clear all
% % [data, title]=xlsread('3080_1.xlsx');
load('title_.mat')
load('data.mat')

%% 
Sex = data(:,1);%1代表男性，0代表女性

%% 分离出所有男性的数据，并测试
data0= data(find(Sex==0),:);
% plot(data1(:,2),data1(:,19),'ro')
%检验所选的变量，与时间年龄是否相关
% Rx1=corrcoef  (data1 )

%RbaPWV0(i)>1520&RbaPWV0(i)>1520&RbSYS0(i)>140&RbDIA0(i)>90
yichang0_1=find(data0(:,3)>=1520);
yichang0_2=find(data0(:,4)>=1520);
yichang0_3=find(data0(:,5)>=1400);
yichang0_4=find(data0(:,7)>=900);
yichang0 = unique([yichang0_1;yichang0_2;yichang0_3;yichang0_4]);

uhage0=data0(yichang0,2);
uhdata0=data0(yichang0,3:end);%%%%%%%%%
uhVAge0=uhdata0(:,37);
uhVAgeNomo0=uhdata0(:,38);
uhRbaPWV0      =uhdata0(:,1);   uhLbaPWV0       =uhdata0(:,2);
uhRbSYS0          =uhdata0(:,3);   uhRbMAP0        =uhdata0(:,4);    uhRbDIA0          =uhdata0(:,5);
uhLbSYS0          =uhdata0(:,6);   uhLbMAP0        =uhdata0(:,7);     uhLbDIA0          =uhdata0(:,8);
uhRaSYS0          =uhdata0(:,9);   uhRaMAP0        =uhdata0(:,10);   uhRaDIA0          =uhdata0(:,11);
uhLaSYS0          =uhdata0(:,12);  uhLaMAP0        =uhdata0(:,13);   uhLaDIA0           =uhdata0(:,14);
uhHeight0         =uhdata0(:,15);  uhWeight0        =uhdata0(:,16);   uhPR0                =uhdata0(:,17);
uhRbPMap0      =uhdata0(:,22);  uhLbPMap0       =uhdata0(:,23);   uhRaPMap0        =uhdata0(:,24);   uhLaPMap0        =uhdata0(:,25);
uhRbUT0           =uhdata0(:,26);  uhLbUT0            =uhdata0(:,27);   uhRaUT0            =uhdata0(:,28);   uhLaUT0             =uhdata0(:,29);
uhRbAmpLevel0 =uhdata0(:,30);  uhLbAmpLevel0 =uhdata0(:,31);   uhRaAmpLevel0 =uhdata0(:,32);   uhLaAmpLevel0   =uhdata0(:,33);
uhRabi0             =uhdata0(:,34);  uhLabi0             =uhdata0(:,35);   uhBMI0              =uhdata0(:,36);   uhRisk0                =uhdata0(:,39);
uhRbPR0           =uhdata0(:,40);  uhLbPR0             =uhdata0(:,41);   uhRaPR0            =uhdata0(:,42);   uhLaPR0              =uhdata0(:,43);
uhX0=uhdata0(:,[1,2,22,23]);

Title_0=title_(3:end);

hdata0=data0(:,3:end);
hage0=data0(:,2);
hdata0(yichang0,:)=[];
hage0(yichang0,:)=[];

hVAge0=hdata0(:,37);
hVAgeNomo0=hdata0(:,38);
hRbaPWV0      =hdata0(:,1);   hLbaPWV0       =hdata0(:,2);
hRbSYS0          =hdata0(:,3);   hRbMAP0        =hdata0(:,4);    hRbDIA0          =hdata0(:,5);
hLbSYS0          =hdata0(:,6);   hLbMAP0        =hdata0(:,7);     hLbDIA0          =hdata0(:,8);
hRaSYS0          =hdata0(:,9);   hRaMAP0        =hdata0(:,10);   hRaDIA0          =hdata0(:,11);
hLaSYS0          =hdata0(:,12);  hLaMAP0        =hdata0(:,13);   hLaDIA0           =hdata0(:,14);
hHeight0         =hdata0(:,15);  hWeight0        =hdata0(:,16);   hPR0                =hdata0(:,17);
hRbPMap0      =hdata0(:,22);  hLbPMap0       =hdata0(:,23);   hRaPMap0        =hdata0(:,24);   hLaPMap0        =hdata0(:,25);
hRbUT0           =hdata0(:,26);  hLbUT0            =hdata0(:,27);   hRaUT0            =hdata0(:,28);   hLaUT0             =hdata0(:,29);
hRbAmpLevel0 =hdata0(:,30);  hLbAmpLevel0 =hdata0(:,31);   hRaAmpLevel0 =hdata0(:,32);   hLaAmpLevel0   =hdata0(:,33);
hRabi0             =hdata0(:,34);  hLabi0             =hdata0(:,35);   hBMI0              =hdata0(:,36);   hRisk0                =hdata0(:,39);
hRbPR0           =hdata0(:,40);  hLbPR0             =hdata0(:,41);   hRaPR0            =hdata0(:,42);   hLaPR0              =hdata0(:,43);
hX0=hdata0(:,[1,2,22,23]);

%% 从37个变量中，筛选变量
      Fenxi_data0(:,1) = [hage0;uhage0];% 所有样本时间年龄

      Fenxi_data0(:,5) = [hRbaPWV0;uhRbaPWV0 ];
      Fenxi_data0(:,6) =[hLbaPWV0;uhLbaPWV0];%
      Fenxi_data0(:,7)=[hRbPMap0;uhRbPMap0];% 所有样本
      Fenxi_data0(:,8)=[hLbPMap0;uhLbPMap0];% 所有样本
      
      Fenxi_data0(:,9) =[hRbSYS0;uhRbSYS0];% 
      Fenxi_data0(:,10) =[hRbMAP0;uhRbMAP0]; % 所有样本
      Fenxi_data0(:,11) = [hRbDIA0;uhRbDIA0];% 所有样本
      
      Fenxi_data0(:,12)=[hLbSYS0;uhLbSYS0];% 所有样本
      Fenxi_data0(:,13)=[hLbMAP0;uhLbMAP0];% 所有样本
      Fenxi_data0(:,14)=[hLbDIA0;uhLbDIA0]; % 所有样本
      
      Fenxi_data0(:,15)=[hRaSYS0;uhRaSYS0];% 所有样本
      Fenxi_data0(:,16)=[hRaMAP0;uhRaMAP0];% 所有样本
      Fenxi_data0(:,17)=[hRaDIA0;uhRaDIA0]; % 所有样本
      
      Fenxi_data0(:,18)=[hLaSYS0;uhLaSYS0];% 所有样本
      Fenxi_data0(:,19)=[hLaMAP0;uhLaMAP0];% 所有样本
      Fenxi_data0(:,20)=[hLaDIA0;uhLaDIA0]; % 所有样本
      
      Fenxi_data0(:,21)=[hHeight0;uhHeight0];% 所有样本
      Fenxi_data0(:,22)=[hWeight0;uhWeight0];% 所有样本
      Fenxi_data0(:,23)=[hPR0;uhPR0]; % 所有样本

      Fenxi_data0(:,24)=[hRaPMap0;uhRaPMap0]; % 所有样本
      Fenxi_data0(:,25)=[hLaPMap0;uhLaPMap0]; % 所有样本
      
      Fenxi_data0(:,26)=[hRbUT0;uhRbUT0];% 所有样本
      Fenxi_data0(:,27)=[hLbUT0;uhLbUT0];% 所有样本
      Fenxi_data0(:,28)=[hRaUT0;uhRaUT0]; % 所有样本
      Fenxi_data0(:,29)=[hLaUT0;uhLaUT0]; % 所有样本
      
      Fenxi_data0(:,30)=[hRbAmpLevel0;uhRbAmpLevel0];% 所有样本
      Fenxi_data0(:,31)=[hLbAmpLevel0;uhLbAmpLevel0];% 所有样本
      Fenxi_data0(:,32)=[hRaAmpLevel0;uhRaAmpLevel0]; % 所有样本
      Fenxi_data0(:,33)=[hLaAmpLevel0;uhLaAmpLevel0]; % 所有样本
      
      Fenxi_data0(:,34)=[hRabi0;uhRabi0];% 所有样本
      Fenxi_data0(:,35)=[hLabi0;uhLabi0];% 所有样本
      Fenxi_data0(:,36)=[hBMI0;uhBMI0]; % 所有样本
      Fenxi_data0(:,37)=[hRisk0;uhRisk0]; % 所有样本
      
      Fenxi_data0(:,38)=[hRbPR0;uhRbPR0];% 所有样本
      Fenxi_data0(:,39)=[hLbPR0;uhLbPR0];% 所有样本
      Fenxi_data0(:,40)=[hRaPR0;uhRaPR0]; % 所有样本
      Fenxi_data0(:,41)=[hLaPR0;uhLaPR0]; % 所有样本

% % % % % % % % %检查女性所有样本，所有指标与Age的相关性，是否显著
     xx=Fenxi_data0(:,1);
for i=5:41
%     i=41;
     yy= Fenxi_data0(:,i);
     [rho,pval] = corr(xx,yy,'type','spearman');
     rp0(i,1:2)=   [rho,pval];
end
      
%       plot(Fenxi_data0(:,1),Fenxi_data0(:,26),'ro')
      
hRx0=corrcoef  (   Fenxi_data0(:,5:end)) ;
hVIF0=diag(pinv(hRx0) );%inv改成pinv

test_data0=Fenxi_data0(1:8736,5:end);
for i=1:43
    i
     hRx0=corrcoef  ( test_data0 ) ;
     hVIF0=diag(pinv(hRx0) );%inv改成pinv
     
     if max(hVIF0)>=3
            qvchu=find(hVIF0==max(hVIF0));
%             title_(qvchu+2)=[];---------------------------------------
            test_data0(:,qvchu)=[];
     end
end
% hdata0(1:3,:);


% hVIF0_rang=[ 15 12  10   9     8   7     6   5   4.5  4.4  4.3  4.2  4.1  4  3.95 3.9  3.8     3.5    3    2.5   2   ]
% num0=  [       31  31  30  28  26  26   25 22   21   20   20  19  18  18  18   18   18     18     16   15   13 ]
%%
%risk不要
for i =1:15
    r0=corr(hage0,test_data0(:,i),'type','spearman');
    R0(i,1)=r0;
    
end
figure(666)
plot( sort(abs(R0(1:end-1))),'ro'),hold on

sort(abs(R0))


%% 多重线性回归建模
X0=[hLbaPWV0,hLbPMap0];

mod0=LinearModel.fit(X0,hage0);
f=figure(8989)
f.Position=[180,180,1000,400]
subplot(1,2,1)
l1=plot(hage0,mod0.Fitted,'ro'),hold on

mean(mod0.Fitted),mean(hage0)

for i =30:80
     M0(i-29)= mean(mod0.Fitted( find(hage0==i)));
end
l2=plot([30:80],M0,'ks','LineWidth',1.5),hold on
% plot([30:80],[30:80],'b:'),hold on
xlabel('Chronological age','FontSize',15);ylabel('Predicted age','FontSize',15);
set(gca, 'FontSize', 15)
axis([25,80,25,80])
XX=[30:80];%%%%fitM0时的自变量，别忘了
YY=(-0.003825*XX.^2  +0.7317*XX + 20.81);
% PA的计算公式：y=  -0.003825x^2             +0.7317x + 20.81
l3=plot(XX,YY,'b','LineWidth',1.5)
title('HVA Female(N=8376)')
aaa=[25 80];bbb=[25 80];
l4=plot( aaa,bbb,'k--','LineWidth',2),hold on
legend([l1,l2,l3,l4],{'Predicted age','Discrete MPA','Continuous MPA','PA=CA'})
text(30,30,'y = -0.003825x^2 + 0.7317x + 20.81','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
grid on


f=figure(9898)
f.Position=[180,180,1000,400]
subplot(1,2,1)
hpa0=mod0.Fitted;
hva0=mod0.Fitted-(-0.003825*hage0.^2  +0.7317*hage0 + 20.81)+hage0;
l1=plot(hage0,hva0,'ro'),hold on
mean(hage0),mean(hva0)

uX0=[uhLbaPWV0,uhLbPMap0];
uhpa0=mod0.predict(uX0);
uhva0=mod0.predict(uX0)-(-0.003825*uhage0.^2  +0.7317*uhage0 + 20.81)+uhage0;
l2=plot(uhage0,uhva0,'b*'),hold on
plot([30:80],[30:80],'k:','LineWidth',3),hold on

xlabel('Chronological age','FontSize',15);ylabel('Vascular age','FontSize',15);
set(gca, 'FontSize', 15)
axis([25,85,25,100])
title('Female(N=13264)')
legend([l1,l2],{'HVA group','Non-HVA group'})
grid on



%% 验证一：所有样本，时间年龄，血管年龄，Vage，VageNOM，与所有的间接指标的相关性比较。。。

      Fenxi_data0(:,2) =[hva0;uhva0];% 所有样本血管年龄 
      Fenxi_data0(:,3) =[hVAge0;uhVAge0];% 所有样本Vage 
      Fenxi_data0(:,4) =[hVAgeNomo0;uhVAgeNomo0]; % 所有样本VAgeNomo;
      
      FENXI_DATA0(:,1)= Fenxi_data0(:,1);
      FENXI_DATA0(:,2)= [hpa0;uhpa0];% 所有样本预测年龄
      FENXI_DATA0(:,3:42)=Fenxi_data0(:,2:end);
      
         for i=1:5
           for j=1:37
            [rho,pval] = corr(FENXI_DATA0(:,i),FENXI_DATA0(:,j+5),'type','spearman'); 
            CCC0(j,i)= rho;
            CCC0_P(j,i)= round(pval*1000)/1000;
           end
        end    
      
       CCC0(:,6:7)   =[( abs(CCC0(:,3))- abs(CCC0(:,1))),( abs(CCC0(:,3))- abs(CCC0(:,1)))./ abs(CCC0(:,1))];
       CCC0(:,8:9)  =[( abs(CCC0(:,3))- abs(CCC0(:,2))),( abs(CCC0(:,3))- abs(CCC0(:,2)))./ abs(CCC0(:,2))];
       CCC0(:,10:11)  =[( abs(CCC0(:,3))- abs(CCC0(:,4))),( abs(CCC0(:,3))- abs(CCC0(:,4)))./ abs(CCC0(:,4))];
       CCC0(:,12:13)  =[( abs(CCC0(:,3))- abs(CCC0(:,5))),( abs(CCC0(:,3))- abs(CCC0(:,5)))./ abs(CCC0(:,5))];
       
%        xlswrite('CCC0.xlsx',CCC0);
        ex0=[17,18,19,22,23,32,34,35,36,37];
        d1=abs(CCC0(:,1)); d1(ex0,:)=[];
        d2=abs(CCC0(:,2)); d2(ex0)=[];
        d3=abs(CCC0(:,3)); d3(ex0)=[];
        d4=abs(CCC0(:,4)); d4(ex0)=[];
        d5=abs(CCC0(:,5)); d5(ex0)=[];
        
        life0=[d1;d2;d3;d4;d5];
%        h = lillietest(d1)
        group0=[[repmat({'CA'},[27,1])];[repmat({'PA'},[27,1])];[repmat({'VA'},[27,1])];[repmat({'VAge'},[27,1])];[repmat({'VAgeN'},[27,1])]];
 %调用kruskalwallis函数作Kruskal-Wallis检验
       [p1,table1,stats1]=kruskalwallis(life0,group0);
       ylabel('Degree of correlation','FontSize',15);
       set(gca, 'FontSize', 15)
      set(gca,'YTick',[0:0.1:1])
      text(4.5,0.9,'p=0.031','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
      title('Kruskal-Wallis Test for Female(N=13264)','FontWeight','bold')
      grid on


    %调用multcompare函数对不同配料方案下灯泡的寿命进行多重比较
       [c1,m1,h1,gnames1]=multcompare(stats1);
        title('Multi-compare for Female(N=13264)')
        xlabel('','FontSize',15);
       set(gca, 'FontSize', 15)
       set(gca,'XTick',[30:10:100])
%        prctile(d1,[50,25,75])
       text(48,5.25,'0.417(0.304,0.554)','FontSize',14)
%        prctile(d2,[50,25,75])
       text(67,4.25,'0.628(0.286,0.721)','FontSize',14)      
%          prctile(d3,[50,25,75])
       text(65,3.25,'0.569(0.317,0.691)','FontSize',14)
%         prctile(d4,[50,25,75])
       text(62,2.25,'0.554(0.275,0.701)','FontSize',14)
%         prctile(d5,[50,25,75])
       text(40,1.25,'0.395(0.191,0.475)','FontSize',14)
%        grid on

 %% 验证二：比较健康群体，CA，PA, VA，Vage，VageNOM的差异
%        cy0 = Fenxi_data0(1:8736,1:4);
       cy0 =  FENXI_DATA0(1:8736,1:5);
       mean(cy0);
      
        life0=[cy0(:,1);cy0(:,2);cy0(:,3);cy0(:,4);cy0(:,5)];
%     g4=repmat({'A4'},size(A4));
        group0=[[repmat({'CA'},size(cy0(:,1)))];[repmat({'PA'},size(cy0(:,2)))];[repmat({'VA'},size(cy0(:,3)))];[repmat({'VAge'},size(cy0(:,4)))];[repmat({'VAgeN'},size(cy0(:,5)))]];
%        h = lillietest(cy0(:,4))
       %调用kruskalwallis函数作Kruskal-Wallis检验%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       [p0,table0,stats0]=kruskalwallis(life0,group0);
       ylabel('Age (years)','FontSize',15);
       set(gca, 'FontSize', 15)
      set(gca,'YTick',[0:10:90])
      text(4.5,82,'p=0.000','FontSize',14, 'Background', [1,1,1],'EdgeColor',[0,0,0])
      title('Kruskal-Wallis Test for HVA group of Female(N=8376)','FontWeight','bold','FontSize',13)
      grid on
       
       %调用multcompare函数对不同配料方案下灯泡的寿命进行多重比较
       [c0,m0,h0,gnames0]=multcompare(stats0);
       
        xlabel('','FontSize',15);
       set(gca, 'FontSize', 15)
%        set(gca,'XTick',[18000:2000:28000]);
%        set(gca,'XTickLabel',{'18000','20000','22000','24000','26000','28000'}) 
%        prctile(cy0(:,1),[50,25,75])
       text(19500,5.25,'46(38,53)','FontSize',14)
%        prctile(cy0(:,2),[50,25,75])
       text(19000,4.25,'45.83(41.67,50.15)','FontSize',14)  
%          prctile(cy0(:,3),[50,25,75])
       text(19000,3.25,'45.58(37.57,53.76)','FontSize',14)
%         prctile(cy0(:,4),[50,25,75])
       text(24400,2.25,'50(44,57)','FontSize',14)
       %         prctile(cy0(:,5),[50,25,75])
       text(24430,1.25,'51(44,57)','FontSize',14)
        title('Multi-compare for HVA group of Female(N=8376)','FontWeight','bold','FontSize',13)
%        grid on

%% 验证三：比较high_risk(VA>CA)和low_risk(VA<CA)在其他各指标上的差异
       for i=1:41
%            i=5;
            risk0= Fenxi_data0(:,2) - Fenxi_data0(:,1);
         
            high_risk_age0= Fenxi_data0(find(risk0>=0), 1 );
            high_risk_data0= Fenxi_data0(find(risk0>=0), i ); 
            mean(high_risk_data0);
            mod_high=LinearModel.fit(high_risk_age0,high_risk_data0);
            P0(i,1:3) =prctile(high_risk_data0,[50,25,75]);
             
            low_risk_age0= Fenxi_data0(find(risk0<=0),   1);  
            low_risk_data0= Fenxi_data0(find(risk0<=0),i);       
            mean(low_risk_data0);
            mod_low=LinearModel.fit(low_risk_age0,low_risk_data0);
            P0(i,4:6) =prctile(low_risk_data0,[50,25,75]);
%%%%%%%    [p0,h0,stats0]=signrank(high_risk_data0,low_risk_data0);  %调用signrank检验
%          [p0,h0,stats0]=ranksum(high_risk_data0,low_risk_data0);%独立样本，非正太分布
              
             high_risk_data0_=mod_high.predict(low_risk_age0);
             low_risk_data0_ =mod_low.predict(high_risk_age0);
             
             P0(i,7:9)    =prctile([high_risk_data0;high_risk_data0_],[50,25,75]);
             P0(i,10:12) =prctile([low_risk_data0;low_risk_data0_],[50,25,75]);
             
             [p,h,stats]=ranksum([high_risk_data0;high_risk_data0_],[low_risk_data0;low_risk_data0_]);%独立样本，非正太分布
             P0(i,13)=p;
       end
%        length(high_risk_age0),  length(low_risk_age0)
       %        xlswrite('P0.xlsx',P0);
 
%%  验证四：比较原始方法，的高风险判定。。。和本研究方法的方风险判定
or0=[zeros(8736,1);ones(4528,1)];
risk0= Fenxi_data0(:,2) - Fenxi_data0(:,1);
for i=1:length(risk0)
     if risk0(i)>0
        test0(i,1)=1;
     else
        test0(i,1)=0;
     end
end
confusion_matrix = confusionmat(or0,test0);

risk00= FENXI_DATA0(:,2) - FENXI_DATA0(:,1);
for i=1:length(risk00)
     if risk00(i)>=0
        test00(i,1)=1;
     else
        test00(i,1)=0;
     end
end
confusion_matrix = confusionmat(or0,test00);



% % % plotconfusion(test0,or0)
% % % confusionchart(test0,or0)
% % % plotconfusion(test0,or0)
% % % num_classes = 2;
% % % [confusion_matrix, accuracy] = compute_confusion_matrix(or0,test0, num_classes);
% % % disp(confusion_matrix);
% % % disp(accuracy);

       
% R=0.397//RMSE=7.58

% % X=X0(:,1:4);
% % y=hage0(:,1);
% % X_train=X(1:6000,1:4);
% % X_test=X(6000:6200,1:4);
% % y_trian=y(1:6000,1);
% % y_test=y(6000:6200,1);

% % % % % % % % % % % % % model0=fitrsvm(X0,hage0);
% % % % % % % % % % % % % 
% % % % % % % % % % % % % y_pred0=predict(model0,X0);
% % % % % % % % % % % % % 
% % % % % % % % % % % % % plot(hage0,y_pred0,'ro'),hold on
% % % % % % % % % % % % % 
% % % % % % % % % % % % % for i =30:80
% % % % % % % % % % % % %      M0(i-29)= mean(y_pred0( find(hage0==i)));
% % % % % % % % % % % % %     
% % % % % % % % % % % % %     
% % % % % % % % % % % % % end
% % % % % % % % % % % % % 
% % % % % % % % % % % % % plot([30:80],M0,'ks'),hold on
% % % % % % % % % % % % % grid on
% % % % % % % % % % % % % 
% % % % % % % % % % % % % rmse =sqrt(mean((hage0-y_pred0).^2))
% % % % % % % % % % % % % 
% % % % % % % % % % % % % test_error=y_test-y_pred;
% % % % % % % % % % % % % MSE=mse(test_error)




% % % % % [bestmse,bestc,bestg] = SVMcgForRegress(hage0,X0);
% % % % % 
% % % % % model0=svmtrain1(X0,hage0,'-s 3');
% % % % % [predict_y,mse,dec_value]=svmpredict1(hage0(1:20),X0(1:20,:),model0);
 
 
% % % % %  [bestmse,bestc,bestg] = SVMcgForRegress(y,x);
% % % % % 
% % % % %  figure(51)
% % % % %  subplot(122)
% % % % %  l1=plot([3.2],[1],'ro','LineWidth',1,'markersize',8,'MarkerFaceColor','r');
% % % % %  legend([l1],{'最优点'})
% % % % %  set(gca,'FontSize',16)
% % % % % xlabel('log2^c','FontSize',18,'FontWeight','bold')
% % % % % ylabel('log2^g','FontSize',18,'FontWeight','bold')
% % % % % set(gca,'XTick',[-4:1:12]) 
% % % % % set(gca,'YTick',[-8:1:8]) 
% % % % %  title('等高线图','FontSize',20,'Fontweight','bold')
% % % % %  
% % % % %  figure(51)
% % % % %  subplot(121)
% % % % %  
% % % % %  [xx,yy,zz]=sphere; 
% % % % %  l2=surf(0.3*xx+3.2,0.3*yy+1,0.05*zz);
% % % % %  
% % % % %  l3=plot3([3.2],[1],[0],'ro','LineWidth',1,'markersize',8,'MarkerFaceColor','r');
% % % % %  legend([l3],{'最优点'})
% % % % %  set(gca,'FontSize',16)
% % % % % xlabel('log2^c','FontSize',18,'FontWeight','bold')
% % % % % ylabel('log2^g','FontSize',18,'FontWeight','bold')
% % % % % zlabel('标准化MSE','FontSize',18,'FontWeight','bold')
% % % % % 
% % % % % set(gca,'XTick',[-4:1:12]) 
% % % % % set(gca,'YTick',[-8:1:8]) 
% % % % % set(gca,'ZTick',[0:0.2:1]) 
% % % % %  title('3D网格图','FontSize',20,'Fontweight','bold')
% % % % %  
% % % % %  
% % % % % model=svmtrain(y,x,'-s 3 -c 9.1896 -g 1.7411 -p 0.1');
% % % % % % % % % % 
% % % % % [predict_y,mse,dec_value]=svmpredict(y,x,model);



