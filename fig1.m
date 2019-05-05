

clear; clc;

load('fig1_results.mat')

% plot Figure 1b
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
semilogy(fig1b.event1time,fig1b.event1energy,'r.','MarkerSize',12); hold on;
semilogy(fig1b.event2time,fig1b.event2energy,'ko','MarkerSize',6);
xlabel('Time ({\mu}s)')
ylabel('Photon energy (eV)')
set(gca,'XLim',[0 800e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 200e-6 400e-6 600e-6 800e-6]);
set(gca,'XTickLabel', [0 200 400 600 800]);
set(gca,'YLim',[10^4 10^8]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [10^4 10^5 10^6 10^7 10^8]);

% plot Figure 1c
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
loglog(fig1c.ebins,fig1c.dis15first,'r--',fig1c.ebins,fig1c.dis15third,'r',...
      fig1c.ebins,fig1c.dis30first,'b--',fig1c.ebins,fig1c.dis30third,'b',...
      fig1c.ebins,fig1c.dis45first,'k--',fig1c.ebins,fig1c.dis45third,'k')
xlabel('Photon energy (eV)')
ylabel('Energy distribution (eV^{-1})')
set(gca,'XLim',[10^4 10^8]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [10^4 10^5 10^6 10^7 10^8]);
set(gca,'YLim',[10^-13 10^-4]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [10^-12 10^-10 10^-8 10^-6 10^-4]);

% plot Figure 1d
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
plot(fig1d.tbins,fig1d.lc15first,'r--',fig1d.tbins,fig1d.lc15third,'r',...
    fig1d.tbins,fig1d.lc30first,'b--',fig1d.tbins,fig1d.lc30third,'b',...
    fig1d.tbins,fig1d.lc45first,'k--',fig1d.tbins,fig1d.lc45third,'k')
xlabel('Time (s)')
ylabel('Normalized light curve (s^{-1})')
set(gca,'XLim',[0 500e-6]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [0 100e-6 200e-6 300e-6 400e-6 500e-6]);
set(gca,'YLim',[0 12000]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0 3000 6000 9000 12000]);

% plot Figure 1e
fig=figure;
set(fig,'color',[1 1 1]);
set(fig,'position',[680 1000 600 480]);
set(fig,'defaultAxesFontSize',18);
plot(fig1e.x,fig1e.t50rise(1,:),'r.-',fig1e.x,fig1e.t50fall(1,:),'r.-',...
    fig1e.x,fig1e.t50rise(2,:),'b.-',fig1e.x,fig1e.t50fall(2,:),'b.-',...
    fig1e.x,fig1e.t50rise(3,:),'k.-',fig1e.x,fig1e.t50fall(3,:),'k.-','MarkerSize',12)
xlabel('x, y (km)')
ylabel('t_{50} ({\mu}s)')
set(gca,'XLim',[-420 420]);
set(gca,'XMinorTick','on');
set(gca,'XTick', [-400:100:400]);
set(gca,'YLim',[0 12e-5]);
set(gca,'YMinorTick','on');
set(gca,'YTick', [0:2e-5:12e-5]);
set(gca,'YTickLabel', [0 20 40 60 80 100 120]);


