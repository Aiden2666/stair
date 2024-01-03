%SPM 

load('Total_MEAN_ForeFS_data.mat');
load('Total_MEAN_RearFS_data.mat');
load('Total_MEAN_NatFS_data.mat');



test_fore = Total_MEAN_ForeFS_data.soleus_r';
test_rear = Total_MEAN_RearFS_data.soleus_r';
test_nat = Total_MEAN_NatFS_data.soleus_r';



% Shade graph

% mass normalisation
all_mass = [mass.S01; mass.S02; mass.S03; mass.S04; mass.S05; mass.S06; mass.S07; mass.S08; mass.S09; mass.S10; mass.S11; mass.S12; mass.S13; mass.S14; mass.S15...
    ; mass.S16; mass.S17; mass.S18; mass.S19];
for t=1:19
    mass_Total_MEAN_ForeFS_data.gaslat_r(:,t) = Total_MEAN_ForeFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_ForeFS_data.gasmed_r(:,t) = Total_MEAN_ForeFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_ForeFS_data.soleus_r(:,t) = Total_MEAN_ForeFS_data.soleus_r(:,t)/(all_mass(t)*grav);
    
    mass_Total_MEAN_NatFS_data.gaslat_r(:,t) = Total_MEAN_NatFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_NatFS_data.gasmed_r(:,t) = Total_MEAN_NatFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_NatFS_data.soleus_r(:,t) = Total_MEAN_NatFS_data.soleus_r(:,t)/(all_mass(t)*grav);   
    
    mass_Total_MEAN_RearFS_data.gaslat_r(:,t) = Total_MEAN_RearFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_RearFS_data.gasmed_r(:,t) = Total_MEAN_RearFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    mass_Total_MEAN_RearFS_data.soleus_r(:,t) = Total_MEAN_RearFS_data.soleus_r(:,t)/(all_mass(t)*grav);
end

figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3])
hold on

p1 = stdshade(mass_Total_MEAN_ForeFS_data.soleus_r',0.1,'r')
stdshade_dash(mass_Total_MEAN_RearFS_data.soleus_r',0.1,'r')
stdshade_star(mass_Total_MEAN_NatFS_data.soleus_r',0.1,'r')

p2 = stdshade(mass_Total_MEAN_ForeFS_data.gasmed_r',0.1,'b')
stdshade_dash(mass_Total_MEAN_RearFS_data.gasmed_r',0.1,'b')
stdshade_star(mass_Total_MEAN_NatFS_data.gasmed_r',0.1,'b')

p3 = stdshade(mass_Total_MEAN_ForeFS_data.gaslat_r',0.1,'g')
stdshade_dash(mass_Total_MEAN_RearFS_data.gaslat_r',0.1,'g')
stdshade_star(mass_Total_MEAN_NatFS_data.gaslat_r',0.1,'g')

hold off

xlim([1,101]); xlabel('Time (% stance)');
ylabel ('Force (BW)');
% title(Tname1);
legend([p1 p2 p3],{'SOL','GM','GL'},'Location','northeast');
set(gca,'FontSize',14);