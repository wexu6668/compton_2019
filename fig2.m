

clear; clc;

load('fig2_results.mat')

% plot Figure 2a
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
plot(fig2a.tbins,fig2a.lc225,'r',fig2a.tbins,fig2a.lc625,'b','lineWidth',1); hold on;
xlabel('Time (s)')
ylabel('Normalized light curve (s^{-1})')
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 12000]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 3000 6000 9000 12000]);

% plot Figure 2a top inset
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
plot(fig2a.tbins,fig2a.lc225low,'r-.',fig2a.tbins,fig2a.lc225high,'r--','lineWidth',1)
xlabel('Time (s)')
ylabel('Normalized light curve (s^{-1})')
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 9000]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 3000 6000 9000]);

% plot Figure 2a bottom inset
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
plot(fig2a.tbins,fig2a.lc625low,'b-.',fig2a.tbins,fig2a.lc625high,'b--','lineWidth',1)
xlabel('Time (s)')
ylabel('Normalized light curve (s^{-1})')
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 5000]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 2000 4000]);

% plot Figure 2b
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
stairs(fig2b.tbins,fig2b.lc225,'r');hold on;
plot(fig2b.fitbins,fig2b.fit225,'k--');hold on;
stairs(fig2b.tbins,fig2b.lc625,'b');hold on;
plot(fig2b.fitbins,fig2b.fit625,'k--');
xlabel('Time (s)')
ylabel('Counts per 20 {\mu}s bins')
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 40]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 10 20 30 40 50 60]);

