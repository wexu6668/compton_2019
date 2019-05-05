

clear; clc;

load('fig3_results.mat')

% plot Figure 3a
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
stairs(fig3a.foleybins,fig3a.foleyrise,'k');hold on;
stairs(fig3a.foleybins,fig3a.presentrise,'r');hold on;
plot([fig3a.foleybins(1) fig3a.foleybins(1)],[0 fig3a.foleyrise(1)],'k');
plot([fig3a.foleybins(1) fig3a.foleybins(1)],[0 fig3a.presentrise(1)],'r')
xlabel('Rise time (s)');
ylabel('Number of events');
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 50]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 10 20 30 40 50]);

% plot Figure 3b
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
stairs(fig3b.foleybins,fig3b.foleyfall,'k');hold on;
stairs(fig3b.foleybins,fig3b.presentfall);hold on;
xlabel('Fall time (s)');
ylabel('Number of events');
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 40]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 10 20 30 40]);

% plot Figure 3c
cbar=-6:0.05:-2;
[xx,yy]=meshgrid(fig3c.tbins/1e-6,fig3c.tbins/1e-6);
log10d=log10(fig3c.presentrisefall);
log10d(isinf(log10d)==1)=min(cbar);
log10d(log10d<min(cbar))=min(cbar);
f1=figure;
set(f1,'color',[1 1 1]);
set(f1,'defaultAxesFontSize',18);
set(f1,'position',[680 1000 700 420]);
[c1 h1]=contourf(xx,yy,log10d,cbar); set(h1,'LineColor','none'); hold on;
caxis([min(cbar) max(cbar)]); colormap('cool'); colorbar;
set(gca,'XLim',[1 1e3]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [1 10 100 1000]);
set(gca,'XTickLabel', {'10^0' '10^1' '10^2' '10^3'});
set(gca,'YLim',[10 1e3]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [10 100 1000]);
set(gca,'YTickLabel', {'10^1' '10^2' '10^3'});
loglog(fig3c.foleyblue(:,1),fig3c.foleyblue(:,2),'k^',...
       fig3c.foleyred(:,1),fig3c.foleyred(:,2),'k^',...
       fig3c.foleygreen(:,1),fig3c.foleygreen(:,2),'k^','MarkerSize',8);
hold on;
loglog([1 1e3],[1 1e3],'k')
set(gca,'XScale','log')
set(gca,'YScale','log')
xlabel('Rise time ({\mu}s)');
ylabel('Fall time ({\mu}s)');



