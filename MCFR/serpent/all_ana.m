input_name = "infinite";
run(input_name + "_det0.m")
run(input_name + "_his0.m");

path_images = "./Flux_Images/";
path_images = "./Convergance_Images/";



% ----------------------------------------------------------------
%       Plotting Total and Material Specific Flux
% ----------------------------------------------------------------
% Scale the energy integrated flux to a maximum of 1.0
DETEnergyDetector(:,11) = DETEnergyDetector(:,11)/max(DETEnergyDetector(:,11));
%DETspectrum(:,11) = DETspectrum(:,11)/max(DETspectrum(:,11));

figure('visible','off');
errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), 2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12), 'k.');
%plot(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11));
legend({'U-235 Infinite System'}, 'Location', 'southwest')
set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');
set(gca, 'XTick', [1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
set(gca, 'FontSize', 16);
xlim([1e-4 1e1])
xlabel('Energy (MeV)')
ylabel('Energy integrated neutron flux (a.u.)')
grid on
box on
ylim([0,1.1]);
print(gcf, (path_images + "Flux_Log"), '-dpng', '-r300')

set(gca,'YScale','linear');
print(gcf, (path_images + "Flux_Linear"), '-dpng', '-r300')



% ----------------------------------------------------------------
%       Plotting K-eff values per cycle and relative error
% ----------------------------------------------------------------
figure('visible','off');
hold on
errorbar(HIS_ANA_KEFF(:, 1), HIS_ANA_KEFF(:,2), ...
    2*HIS_ANA_KEFF(:,2).*HIS_ANA_KEFF(:,4), 'K.');
set(gca, 'FontSize', 16);
title('Total K-eff (Analog)')
xlabel('Cycle Number')
ylabel('K-eff')
grid on
box on
hold off
print(gcf,(path_images + "total_keff_ana"),'-dpng','-r300')
clf

figure('visible','off');
hold on
errorbar(HIS_ANA_KEFF(:, 1), HIS_ANA_KEFF(:,5), ...
    2*HIS_ANA_KEFF(:,5).*HIS_ANA_KEFF(:,7), 'K.');
set(gca,'FontSize',16);
title('Total Prompt')
xlabel('Cycle Number')
ylabel('K-eff')
grid on
box on
hold off
print(gcf,(path_images + "prompt_keff"),'-dpng','-r300')
clf

figure('visible','off');
hold on
errorbar(HIS_ANA_KEFF(:, 1), HIS_ANA_KEFF(:,8), ...
    2*HIS_ANA_KEFF(:,8).*HIS_ANA_KEFF(:,10), 'K.');
set(gca,'FontSize',16);
title('Total Delayed')
xlabel('Cycle Number')
ylabel('K-eff')
grid on
box on
hold off
print(gcf,(path_images + "delayed_keff"),'-dpng','-r300')
clf

figure('visible','off');
hold on
errorbar(HIS_IMP_KEFF(:, 1), HIS_IMP_KEFF(:,2), ...
    2*HIS_IMP_KEFF(:,2).*HIS_IMP_KEFF(:,4), 'K.');
set(gca,'FontSize',16);
title('Total K-eff (Implicit)')
xlabel('Cycle Number')
ylabel('K-eff')
grid on
box on
hold off
print(gcf,(path_images + "total_keff_imp"),'-dpng','-r300')
clf