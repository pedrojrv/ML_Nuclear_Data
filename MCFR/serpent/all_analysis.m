% How to Use:
% It assumes you have an Image directory to save PNG files. 
% The general detector must be called: EnergyDetector
% The fuel detector must be called: flux_fuel
% The graphite detector must be called: flux_graphite



% Run the necessary detector files.
run("MCFR_unit_cell_det0.m")
save("MCFR_detector.mat")

% Name for the log and linear Flux Spectrum
% Defining directory to save the images.
name_log = "Flux_Log";
name_linear = "Flux_Linear";
path_images = "./";

% Possible Options
% all, fuel, graphite, pin, all individual
all = "all individual";
%DONT FORGET TO MODIFY POWER DISTRIBUTION PINS IF NOT 25


%## Scale the energy integrated flux to a maximum of 1.0
% DETflux_fuel(:,11) = DETflux_fuel(:,11)/max(DETflux_fuel(:,11));
% DETflux_fuel(:,11) = DETflux_fuel(:,11)/max(DETflux_fuel(:,11));
% DETflux_graphite(:,11) = DETflux_graphite(:,11)/max(DETflux_graphite(:,11));
DETEnergyDetector(:,11) = DETEnergyDetector(:,11)/max(DETEnergyDetector(:,11));


if all == "all individual"
    name_log = "Flux_Log";
    name_linear = "Flux_Linear";
    name_log = name_log + "_Mixture.png";
    name_linear = name_linear + "_Mixtures.png";
    %## Plot
    figure('visible','off');
    hold on
%     errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
%         2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'g.');
%     
%     errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
%         2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'y.');
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    % legend({'Salt', 'Graphite', 'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    % set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'XTick',[1e-6,1e-4,1e-2,1e0,1e2]); 
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    xlim([1e-6, 1e2]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'g.');
    
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'y.');
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    
    legend({'Salt', 'Graphite', 'Assembly'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf

    name_log = "Flux_Log";
    name_linear = "Flux_Linear";
    name_log = name_log + "_Fuel.png";
    name_linear = name_linear + "_Fuel.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'k.');
    
    legend({'Salt'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'k.');
    
    legend({'Salt'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
 
    name_log = "Flux_Log";
    name_linear = "Flux_Linear";
    name_log = name_log + "_Graphite.png";
    name_linear = name_linear + "_Graphite.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'k.');
    
    legend({'Graphite'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'k.');
    
    legend({'Graphite'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
     
    
    name_log = "Flux_Log";
    name_linear = "Flux_Linear";
    name_log = name_log + "_Pin.png";
    name_linear = name_linear + "_Pin.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    legend({'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    legend({'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
    
elseif all == "all" 
    name_log = name_log + "_Mixture.png";
    name_linear = name_linear + "_Mixtures.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'g.');
    
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'y.');
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    legend({'Salt', 'Graphite', 'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'g.');
    
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'y.');
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    
    legend({'Salt', 'Graphite', 'Assembly'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
    clear
    
elseif all == "fuel"
    name_log = name_log + "_Fuel.png";
    name_linear = name_linear + "_Fuel.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'k.');
    
    legend({'Salt'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_fuelE(:,3), DETflux_fuel(:,11), ...
        2*DETflux_fuel(:,11).*DETflux_fuel(:,12),'k.');
    
    legend({'Salt'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
    clear
 
elseif all == "graphite"
    name_log = name_log + "_Graphite.png";
    name_linear = name_linear + "_Graphite.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'k.');
    
    legend({'Graphite'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETflux_graphiteE(:,3), DETflux_graphite(:,11), ...
        2*DETflux_graphite(:,11).*DETflux_graphite(:,12),'k.');
    
    legend({'Graphite'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
    clear
    
elseif all == "pin"
    name_log = name_log + "_Pin.png";
    name_linear = name_linear + "_Pin.png";
    %## Plot
    figure('visible','off');
    hold on
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    legend({'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','log');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_log),'-dpng','-r300')
    clf
    
    % ---------------------------------------------------------------------------------------------------
    % ------------------------------  Linear Plot  ------------------------------------------------------
    % ---------------------------------------------------------------------------------------------------
    %## Plot
    figure('visible','off');
    hold on
    
    errorbar(DETEnergyDetectorE(:,3), DETEnergyDetector(:,11), ...
        2*DETEnergyDetector(:,11).*DETEnergyDetector(:,12),'k.');
    
    legend({'Pin'}, 'Location', 'southeast');
    
    %## Set axes
    set(gca,'XScale','log');
    set(gca,'YScale','Linear');
    set(gca,'XTick',[1e-12,1e-10,1e-8,1e-6,1e-4,1e-2,1e0,1e2]);
    set(gca,'FontSize',16);
    
    %## Make the plot a bit nicer
    xlabel('Energy (MeV)')
    ylabel('Energy integrated neutron flux (a.u.)')
    ylim([0,1.1]);
    grid on
    box on
    hold off
    print(gcf,(path_images + name_linear),'-dpng','-r300')
    clf
    clear
     
end
clear

% ------------------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------------------
% --------------------Radial Capture and Fission Distribution-------------------------------------
% ------------------------------------------------------------------------------------------------
path_images = "./Images/";
run("Fuelpin_inf_det0.m");

%  Plot the radial fission rate distribution 
% Get values for radial bins
val = DETRadialFission(:,11);
% Get relative errors
relerr = DETRadialFission(:,12);
% Get minimum radius of each bin
r0 = DETRadialFissionR(:,1);
% Get maximum radius of each bin
r1 = DETRadialFissionR(:,2);
% Calculate area of each bin
A = pi*(r1.^2-r0.^2);
% Divide values by area to get average fission density from fission
val = val./A;
% Calculate absolute errors for the fission density
abserr = val.*relerr;

% ## open figure and plot 
figure('visible','off');
% Draw each bin separately
hold on;

for i=1:1:size(val,1)

  % Draw horizontal line for the mean fission density of the bin
  plot([r0(i) r1(i)], [val(i) val(i)], 'k-', 'LineWidth', 2)

  % Draw error estimates:
  % Mean - 2*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) - abserr(i)*2), 'r-')
  % Mean - 3*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) - abserr(i)*3), 'g-')
  % Mean + 2*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) + abserr(i)*2), 'r-')
  % Mean + 3*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) + abserr(i)*3), 'g-')

  % Draw some vertical lines to make the plot nicer
  if (i > 1)
    % For mean:
    plot([1 1]*r0(i), [val(i-1) val(i)], 'k-', 'LineWidth', 2)

    % For mean - 2*sigma
    plot([1 1]*r0(i), [val(i-1)-abserr(i-1)*2 val(i)-abserr(i)*2], 'r-')

    plot([1 1]*r0(i), [val(i-1)-abserr(i-1)*3 val(i)-abserr(i)*3], 'g-')

    % For mean + 2*sigma
    plot([1 1]*r0(i), [val(i-1)+abserr(i-1)*2 val(i)+abserr(i)*2], 'r-')
    
    plot([1 1]*r0(i), [val(i-1)+abserr(i-1)*3 val(i)+abserr(i)*3], 'g-')
  end

end

% Set axes
set(gca,'FontSize',16);

% Make the plot a bit nicer
% xlim([0 0.45])
xlabel('Radius (cm)')
ylabel('Fission rate density (fissions/(s*cm3))')
grid on
% grid minor off
box on

% Save the figure
print(gcf,(path_images + 'RadFiss.png'),'-dpng','-r300')
close all;


% ################################################################################
% ## Plot the radial capture rate distribution ###################################

% Get values for radial bins
val = DETRadialCapture(:,11);
% Get relative errors
relerr = DETRadialCapture(:,12);
% Get minimum radius of each bin
r0 = DETRadialCaptureR(:,1);
% Get maximum radius of each bin
r1 = DETRadialCaptureR(:,2);
% Calculate area of each bin
A = pi*(r1.^2-r0.^2);
% Divide values by area to get average capture density from capture
val = val./A;
% Calculate absolute errors for the capture density
abserr = val.*relerr;

% ## open figure and plot ##
figure('visible','off');
hold on;

for i=1:1:size(val,1)
  % Draw horizontal line for the mean capture density of the bin
  plot([r0(i) r1(i)], [val(i) val(i)], 'k-', 'LineWidth', 2)
  % Draw error estimates:
  % Mean - 2*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) - abserr(i)*2), 'r-')
  % Mean + 2*sigma
  plot([r0(i) r1(i)], [1 1]*(val(i) + abserr(i)*2), 'r-')
  % Draw some vertical lines to make the plot nicer
  if (i > 1)
    % For mean:
    plot([1 1]*r0(i), [val(i-1) val(i)], 'k-', 'LineWidth', 2)
    % For mean - 2*sigma
    plot([1 1]*r0(i), [val(i-1)-abserr(i-1)*2 val(i)-abserr(i)*2], 'r-')
    % For mean + 2*sigma
    plot([1 1]*r0(i), [val(i-1)+abserr(i-1)*2 val(i)+abserr(i)*2], 'r-')
  end
end

% Set axes
set(gca,'FontSize',16);
% Make the plot a bit nicer
% xlim([0 0.45])
xlabel('Radius (cm)')
ylabel('Capture rate density (captures/(s*cm3))')
grid on
%grid minor off
box on

% Save the figure
print(gcf,(path_images + 'RadCapt.png'),'-dpng','-r300')
clear

% ------------------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------------------
% -----------------------------Pin Lattice Power Distribution-------------------------------------
% ------------------------------------------------------------------------------------------------
path_images = "./Images/";
bins = 25;
run("Fuelpin_inf_det0.m")

% Get values for pin powers
val = DETpinpowers(:,11);

% Remove zero-values (control rod channels)
val(val==0) = NaN;

% Get relative errors
relerr = DETpinpowers(:,12);

% Reshape the arrays
val    = reshape(val, [bins, bins]);
relerr = reshape(relerr, [bins, bins]);

% Calculate absolute errors
abserr = val.*relerr*2;

% ##########################
% ## open figure and plot ##
% ##########################

figure('visible','off');
% 2D color plot of the values
imagesc(val);
% Change the color scheme to something better
colormap("autumn");
% Add a colorbar
cb = colorbar;
ylabel(cb, 'Linear power (W/cm)')
cb.FontSize = 12;

% Tune the colorbar and label text
h = get(cb, 'YLabel');
set(h, 'FontSize',12);
set(gcf, 'Position',  [100, 100, 1000, 800])

% Add numbers for each rod
for i=1:1:bins
  for j=1:1:bins

    % Calculate x and y position for the text of current rod
    x    = i-0.35 ;
    y    = j-0.2;
    xerr = i-0.46;
    yerr = j+0.2;

    % Get current rod linear power (rounded to W/cm)
    curval = round(val(i,j));
    curerr = round(abserr(i,j)*10)/10;

    % Add text for current rod
    if (~isnan(curval))
      % Linear power
      text(x, y, num2str(curval), 'FontSize', 8);

      % +- 2*sigma uncertainty
      text(xerr, yerr, ["+- " num2str(curerr)], 'FontSize', 6);

    end
  end
  % Add some lines to make the picture nicer
  line([0.5 (bins + 0.5)], [i i]+0.5);
  line([i i]+0.5, [0.5 (bins + 0.5)]);
end

% Make the plot a bit nicer by removing the tick-marks
set(gca, 'XTick', []);
set(gca, 'YTick', []);

% Add title to the plot
title("Pin power distribution (linear powers +- 2*sigma uncertainty)")

% Save the figure
print(gcf,(path_images + 'PinPower.png'),'-dpng','-r600')

% Close all figures
close all;