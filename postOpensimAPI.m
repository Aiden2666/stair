close all
clear all
clc

%% Mass information

grav = 9.8;
mass.S01 = 69;
mass.S02 = 70.9;
mass.S03 = 58.5;
mass.S04 = 59.9;
mass.S05 = 50.8;
mass.S06 = 60.7;
mass.S07 = 60.4;
mass.S08 = 50.2;
mass.S09 = 71.8;
mass.S10 = 55.8;
mass.S11 = 63.5;
mass.S12 = 59.9;
mass.S13 = 58.8;
mass.S14 = 65;
mass.S15 = 51;
mass.S16 = 66.5;
mass.S17 = 60.2;
mass.S18 = 63.8;
mass.S19 = 72.7;


%% Rearfoot data Merge (force)
[rear_file0, rear_path] = uigetfile({'*_rear_*_forces.sto'},'MultiSelect','ON','Import forces.sto files'); 

if iscell(rear_file0) ~= 1
    allOutput_file = {fullfile(rear_path, rear_file0)};
else
    allOutput_file = fullfile(rear_path, rear_file0);
end

addpath ( genpath([rear_path]) ); 
cd (rear_path); 


for i = 1:length(rear_file0)
    clear fname z a

    if ~isempty(cell2mat(strfind(rear_file0(i), 'S01')))
        RearFS_data(i).S01 = rear_file0(i);
        out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S01})).S01};
        RearFS_data_S01 = cell2struct(out,{'S01'},1);
        
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S02')))
            RearFS_data(i).S02 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S02})).S02};
            RearFS_data_S02 = cell2struct(out,{'S02'},1);
        
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S03')))
            RearFS_data(i).S03 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S03})).S03};
            RearFS_data_S03 = cell2struct(out,{'S03'},1);     
        
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S04')))
            RearFS_data(i).S04 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S04})).S04};
            RearFS_data_S04 = cell2struct(out,{'S04'},1); 
       
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S05')))
            RearFS_data(i).S05 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S05})).S05};
            RearFS_data_S05 = cell2struct(out,{'S05'},1);     
        
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S06')))
            RearFS_data(i).S06 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S06})).S06};
            RearFS_data_S06 = cell2struct(out,{'S06'},1);

        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S07')))
            RearFS_data(i).S07 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S07})).S07};
            RearFS_data_S07 = cell2struct(out,{'S07'},1);    
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S08')))
            RearFS_data(i).S08 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S08})).S08};
            RearFS_data_S08 = cell2struct(out,{'S08'},1);         
        
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S09')))
            RearFS_data(i).S09 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S09})).S09};
            RearFS_data_S09 = cell2struct(out,{'S09'},1);         

        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S10')))
            RearFS_data(i).S10 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S10})).S10};
            RearFS_data_S10 = cell2struct(out,{'S10'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S11')))
            RearFS_data(i).S11 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S11})).S11};
            RearFS_data_S11 = cell2struct(out,{'S11'},1);         

        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S12')))
            RearFS_data(i).S12 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S12})).S12};
            RearFS_data_S12 = cell2struct(out,{'S12'},1);      
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S13')))
            RearFS_data(i).S13 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S13})).S13};
            RearFS_data_S13 = cell2struct(out,{'S13'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S14')))
            RearFS_data(i).S14 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S14})).S14};
            RearFS_data_S14 = cell2struct(out,{'S14'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 's15')))
            RearFS_data(i).S15 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S15})).S15};
            RearFS_data_S15 = cell2struct(out,{'S15'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 's16')))
            RearFS_data(i).S16 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S16})).S16};
            RearFS_data_S16 = cell2struct(out,{'S16'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S17')))
            RearFS_data(i).S17 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S17})).S17};
            RearFS_data_S17 = cell2struct(out,{'S17'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S18')))
            RearFS_data(i).S18 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S18})).S18};
            RearFS_data_S18 = cell2struct(out,{'S18'},1); 
            
        elseif ~isempty(cell2mat(strfind(rear_file0(i), 'S19')))
            RearFS_data(i).S19 = rear_file0(i);
            out = {RearFS_data(~cellfun(@isempty,{RearFS_data.S19})).S19};
            RearFS_data_S19 = cell2struct(out,{'S19'},1);           
    end
end

clear RearFS_data
for e = 1:3
    RearFS_data(e).S01 = load_sto_file(char(RearFS_data_S01(e).S01));
    RearFS_data(e).S02 = load_sto_file(char(RearFS_data_S02(e).S02));
    RearFS_data(e).S03 = load_sto_file(char(RearFS_data_S03(e).S03));
    RearFS_data(e).S04 = load_sto_file(char(RearFS_data_S04(e).S04));
    RearFS_data(e).S05 = load_sto_file(char(RearFS_data_S05(e).S05));
    RearFS_data(e).S06 = load_sto_file(char(RearFS_data_S06(e).S06));
    RearFS_data(e).S07 = load_sto_file(char(RearFS_data_S07(e).S07));
    RearFS_data(e).S08 = load_sto_file(char(RearFS_data_S08(e).S08)); 
    RearFS_data(e).S09 = load_sto_file(char(RearFS_data_S09(e).S09));
    RearFS_data(e).S10 = load_sto_file(char(RearFS_data_S10(e).S10));
    RearFS_data(e).S11 = load_sto_file(char(RearFS_data_S11(e).S11));
    RearFS_data(e).S12 = load_sto_file(char(RearFS_data_S12(e).S12));
    RearFS_data(e).S13 = load_sto_file(char(RearFS_data_S13(e).S13));
    RearFS_data(e).S14 = load_sto_file(char(RearFS_data_S14(e).S14));
    RearFS_data(e).S15 = load_sto_file(char(RearFS_data_S15(e).S15));
    RearFS_data(e).S16 = load_sto_file(char(RearFS_data_S16(e).S16));
    RearFS_data(e).S17 = load_sto_file(char(RearFS_data_S17(e).S17));
    RearFS_data(e).S18 = load_sto_file(char(RearFS_data_S18(e).S18));
    RearFS_data(e).S19 = load_sto_file(char(RearFS_data_S19(e).S19));
end



%% Forefoot Data Merge (force)
[fore_file0, fore_path] = uigetfile({'*_fore_*_forces.sto'},'MultiSelect','ON','Import forces.sto files'); 

if iscell(fore_file0) ~= 1
    allOutput_file = {fullfile(fore_path, fore_file0)};
else
    allOutput_file = fullfile(fore_path, fore_file0);
end

addpath ( genpath([fore_path]) ); 
cd (fore_path); 


for i = 1:length(fore_file0)
    clear fname z a

    if ~isempty(cell2mat(strfind(fore_file0(i), 'S01')))
        ForeFS_data(i).S01 = fore_file0(i);
        out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S01})).S01};
        ForeFS_data_S01 = cell2struct(out,{'S01'},1);
        
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S02')))
            ForeFS_data(i).S02 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S02})).S02};
            ForeFS_data_S02 = cell2struct(out,{'S02'},1);
        
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S03')))
            ForeFS_data(i).S03 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S03})).S03};
            ForeFS_data_S03 = cell2struct(out,{'S03'},1);     
        
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S04')))
            ForeFS_data(i).S04 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S04})).S04};
            ForeFS_data_S04 = cell2struct(out,{'S04'},1); 
       
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S05')))
            ForeFS_data(i).S05 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S05})).S05};
            ForeFS_data_S05 = cell2struct(out,{'S05'},1);     
        
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S06')))
            ForeFS_data(i).S06 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S06})).S06};
            ForeFS_data_S06 = cell2struct(out,{'S06'},1);

        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S07')))
            ForeFS_data(i).S07 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S07})).S07};
            ForeFS_data_S07 = cell2struct(out,{'S07'},1);    
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S08')))
            ForeFS_data(i).S08 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S08})).S08};
            ForeFS_data_S08 = cell2struct(out,{'S08'},1);         
        
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S09')))
            ForeFS_data(i).S09 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S09})).S09};
            ForeFS_data_S09 = cell2struct(out,{'S09'},1);         

        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S10')))
            ForeFS_data(i).S10 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S10})).S10};
            ForeFS_data_S10 = cell2struct(out,{'S10'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S11')))
            ForeFS_data(i).S11 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S11})).S11};
            ForeFS_data_S11 = cell2struct(out,{'S11'},1);         

        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S12')))
            ForeFS_data(i).S12 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S12})).S12};
            ForeFS_data_S12 = cell2struct(out,{'S12'},1);      
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S13')))
            ForeFS_data(i).S13 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S13})).S13};
            ForeFS_data_S13 = cell2struct(out,{'S13'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S14')))
            ForeFS_data(i).S14 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S14})).S14};
            ForeFS_data_S14 = cell2struct(out,{'S14'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 's15')))
            ForeFS_data(i).S15 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S15})).S15};
            ForeFS_data_S15 = cell2struct(out,{'S15'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 's16')))
            ForeFS_data(i).S16 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S16})).S16};
            ForeFS_data_S16 = cell2struct(out,{'S16'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S17')))
            ForeFS_data(i).S17 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S17})).S17};
            ForeFS_data_S17 = cell2struct(out,{'S17'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S18')))
            ForeFS_data(i).S18 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S18})).S18};
            ForeFS_data_S18 = cell2struct(out,{'S18'},1); 
            
        elseif ~isempty(cell2mat(strfind(fore_file0(i), 'S19')))
            ForeFS_data(i).S19 = fore_file0(i);
            out = {ForeFS_data(~cellfun(@isempty,{ForeFS_data.S19})).S19};
            ForeFS_data_S19 = cell2struct(out,{'S19'},1);           
    end
end

clear ForeFS_data
for e = 1:3
    ForeFS_data(e).S01 = load_sto_file(char(ForeFS_data_S01(e).S01));
    ForeFS_data(e).S02 = load_sto_file(char(ForeFS_data_S02(e).S02));
    ForeFS_data(e).S03 = load_sto_file(char(ForeFS_data_S03(e).S03));
    ForeFS_data(e).S04 = load_sto_file(char(ForeFS_data_S04(e).S04));
    ForeFS_data(e).S05 = load_sto_file(char(ForeFS_data_S05(e).S05));
    ForeFS_data(e).S06 = load_sto_file(char(ForeFS_data_S06(e).S06));
    ForeFS_data(e).S07 = load_sto_file(char(ForeFS_data_S07(e).S07));
    ForeFS_data(e).S08 = load_sto_file(char(ForeFS_data_S08(e).S08)); 
    ForeFS_data(e).S09 = load_sto_file(char(ForeFS_data_S09(e).S09));
    ForeFS_data(e).S10 = load_sto_file(char(ForeFS_data_S10(e).S10));
    ForeFS_data(e).S11 = load_sto_file(char(ForeFS_data_S11(e).S11));
    ForeFS_data(e).S12 = load_sto_file(char(ForeFS_data_S12(e).S12));
    ForeFS_data(e).S13 = load_sto_file(char(ForeFS_data_S13(e).S13));
    ForeFS_data(e).S14 = load_sto_file(char(ForeFS_data_S14(e).S14));
    ForeFS_data(e).S15 = load_sto_file(char(ForeFS_data_S15(e).S15));
    ForeFS_data(e).S16 = load_sto_file(char(ForeFS_data_S16(e).S16));
    ForeFS_data(e).S17 = load_sto_file(char(ForeFS_data_S17(e).S17));
    ForeFS_data(e).S18 = load_sto_file(char(ForeFS_data_S18(e).S18));
    ForeFS_data(e).S19 = load_sto_file(char(ForeFS_data_S19(e).S19));
end

%% Natural strike data (force)


[nat_file0, nat_path] = uigetfile({'*_nat_*_forces.sto'},'MultiSelect','ON','Import forces.sto files'); 

if iscell(nat_file0) ~= 1
    allOutput_file = {fullfile(nat_path, nat_file0)};
else
    allOutput_file = fullfile(nat_path, nat_file0);
end

addpath ( genpath([nat_path]) ); 
cd (nat_path); 


for i = 1:length(nat_file0)
    clear fname z a

    if ~isempty(cell2mat(strfind(nat_file0(i), 'S01')))
        NatFS_data(i).S01 = nat_file0(i);
        out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S01})).S01};
        NatFS_data_S01 = cell2struct(out,{'S01'},1);
        
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S02')))
            NatFS_data(i).S02 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S02})).S02};
            NatFS_data_S02 = cell2struct(out,{'S02'},1);
        
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S03')))
            NatFS_data(i).S03 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S03})).S03};
            NatFS_data_S03 = cell2struct(out,{'S03'},1);     
        
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S04')))
            NatFS_data(i).S04 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S04})).S04};
            NatFS_data_S04 = cell2struct(out,{'S04'},1); 
       
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S05')))
            NatFS_data(i).S05 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S05})).S05};
            NatFS_data_S05 = cell2struct(out,{'S05'},1);     
        
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S06')))
            NatFS_data(i).S06 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S06})).S06};
            NatFS_data_S06 = cell2struct(out,{'S06'},1);

        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S07')))
            NatFS_data(i).S07 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S07})).S07};
            NatFS_data_S07 = cell2struct(out,{'S07'},1);    
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S08')))
            NatFS_data(i).S08 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S08})).S08};
            NatFS_data_S08 = cell2struct(out,{'S08'},1);         
        
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S09')))
            NatFS_data(i).S09 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S09})).S09};
            NatFS_data_S09 = cell2struct(out,{'S09'},1);         

        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S10')))
            NatFS_data(i).S10 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S10})).S10};
            NatFS_data_S10 = cell2struct(out,{'S10'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S11')))
            NatFS_data(i).S11 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S11})).S11};
            NatFS_data_S11 = cell2struct(out,{'S11'},1);         

        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S12')))
            NatFS_data(i).S12 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S12})).S12};
            NatFS_data_S12 = cell2struct(out,{'S12'},1);      
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S13')))
            NatFS_data(i).S13 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S13})).S13};
            NatFS_data_S13 = cell2struct(out,{'S13'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S14')))
            NatFS_data(i).S14 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S14})).S14};
            NatFS_data_S14 = cell2struct(out,{'S14'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 's15')))
            NatFS_data(i).S15 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S15})).S15};
            NatFS_data_S15 = cell2struct(out,{'S15'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 's16')))
            NatFS_data(i).S16 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S16})).S16};
            NatFS_data_S16 = cell2struct(out,{'S16'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S17')))
            NatFS_data(i).S17 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S17})).S17};
            NatFS_data_S17 = cell2struct(out,{'S17'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S18')))
            NatFS_data(i).S18 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S18})).S18};
            NatFS_data_S18 = cell2struct(out,{'S18'},1); 
            
        elseif ~isempty(cell2mat(strfind(nat_file0(i), 'S19')))
            NatFS_data(i).S19 = nat_file0(i);
            out = {NatFS_data(~cellfun(@isempty,{NatFS_data.S19})).S19};
            NatFS_data_S19 = cell2struct(out,{'S19'},1);           
    end
end

clear NatFS_data
for e = 1:3
    NatFS_data(e).S01 = load_sto_file(char(NatFS_data_S01(e).S01));
    NatFS_data(e).S02 = load_sto_file(char(NatFS_data_S02(e).S02));
    NatFS_data(e).S03 = load_sto_file(char(NatFS_data_S03(e).S03));
    NatFS_data(e).S04 = load_sto_file(char(NatFS_data_S04(e).S04));
    NatFS_data(e).S05 = load_sto_file(char(NatFS_data_S05(e).S05));
    NatFS_data(e).S06 = load_sto_file(char(NatFS_data_S06(e).S06));
    NatFS_data(e).S07 = load_sto_file(char(NatFS_data_S07(e).S07));
    NatFS_data(e).S08 = load_sto_file(char(NatFS_data_S08(e).S08)); 
    NatFS_data(e).S09 = load_sto_file(char(NatFS_data_S09(e).S09));
    NatFS_data(e).S10 = load_sto_file(char(NatFS_data_S10(e).S10));
    NatFS_data(e).S11 = load_sto_file(char(NatFS_data_S11(e).S11));
    NatFS_data(e).S12 = load_sto_file(char(NatFS_data_S12(e).S12));
    NatFS_data(e).S13 = load_sto_file(char(NatFS_data_S13(e).S13));
    NatFS_data(e).S14 = load_sto_file(char(NatFS_data_S14(e).S14));
    NatFS_data(e).S15 = load_sto_file(char(NatFS_data_S15(e).S15));
    NatFS_data(e).S16 = load_sto_file(char(NatFS_data_S16(e).S16));
    NatFS_data(e).S17 = load_sto_file(char(NatFS_data_S17(e).S17));
    NatFS_data(e).S18 = load_sto_file(char(NatFS_data_S18(e).S18));
    NatFS_data(e).S19 = load_sto_file(char(NatFS_data_S19(e).S19));
end

% GL GM Sol TA TP EDL FDL FHL PB PL EHL :: 11 muscles
% gaslat_r gasmed_r soleus_r tibant_r tibpost_r edl_r fdl_r fhl_r perbrev_r
% perlong_r ehl_r

% GRF
% calcn_r_ExternalForce_2_Fx calcn_r_ExternalForce_2_Fy
% calcn_r_ExternalForce_2_Fz

% 101 normalization
for e = 1:3

    ForeFS_data(e).S01.gaslat_r = f_normalizer(ForeFS_data(e).S01.gaslat_r,101,'linear');
    ForeFS_data(e).S01.gasmed_r = f_normalizer(ForeFS_data(e).S01.gasmed_r,101,'linear');
    ForeFS_data(e).S01.soleus_r = f_normalizer(ForeFS_data(e).S01.soleus_r,101,'linear');
    ForeFS_data(e).S01.tibant_r = f_normalizer(ForeFS_data(e).S01.tibant_r,101,'linear');
    ForeFS_data(e).S01.tibpost_r = f_normalizer(ForeFS_data(e).S01.tibpost_r,101,'linear');
    ForeFS_data(e).S01.edl_r = f_normalizer(ForeFS_data(e).S01.edl_r,101,'linear');
    ForeFS_data(e).S01.fdl_r = f_normalizer(ForeFS_data(e).S01.fdl_r,101,'linear');
    ForeFS_data(e).S01.fhl_r = f_normalizer(ForeFS_data(e).S01.fhl_r,101,'linear');
    ForeFS_data(e).S01.perbrev_r = f_normalizer(ForeFS_data(e).S01.perbrev_r,101,'linear');
    ForeFS_data(e).S01.perlong_r = f_normalizer(ForeFS_data(e).S01.perlong_r,101,'linear');
    ForeFS_data(e).S01.ehl_r = f_normalizer(ForeFS_data(e).S01.ehl_r,101,'linear');
   
    ForeFS_data(e).S02.gaslat_r = f_normalizer(ForeFS_data(e).S02.gaslat_r,101,'linear');
    ForeFS_data(e).S02.gasmed_r = f_normalizer(ForeFS_data(e).S02.gasmed_r,101,'linear');
    ForeFS_data(e).S02.soleus_r = f_normalizer(ForeFS_data(e).S02.soleus_r,101,'linear');
    ForeFS_data(e).S02.tibant_r = f_normalizer(ForeFS_data(e).S02.tibant_r,101,'linear');
    ForeFS_data(e).S02.tibpost_r = f_normalizer(ForeFS_data(e).S02.tibpost_r,101,'linear');
    ForeFS_data(e).S02.edl_r = f_normalizer(ForeFS_data(e).S02.edl_r,101,'linear');
    ForeFS_data(e).S02.fdl_r = f_normalizer(ForeFS_data(e).S02.fdl_r,101,'linear');
    ForeFS_data(e).S02.fhl_r = f_normalizer(ForeFS_data(e).S02.fhl_r,101,'linear');
    ForeFS_data(e).S02.perbrev_r = f_normalizer(ForeFS_data(e).S02.perbrev_r,101,'linear');
    ForeFS_data(e).S02.perlong_r = f_normalizer(ForeFS_data(e).S02.perlong_r,101,'linear');
    ForeFS_data(e).S02.ehl_r = f_normalizer(ForeFS_data(e).S02.ehl_r,101,'linear');
    
    ForeFS_data(e).S03.gaslat_r = f_normalizer(ForeFS_data(e).S03.gaslat_r,101,'linear');
    ForeFS_data(e).S03.gasmed_r = f_normalizer(ForeFS_data(e).S03.gasmed_r,101,'linear');
    ForeFS_data(e).S03.soleus_r = f_normalizer(ForeFS_data(e).S03.soleus_r,101,'linear');
    ForeFS_data(e).S03.tibant_r = f_normalizer(ForeFS_data(e).S03.tibant_r,101,'linear');
    ForeFS_data(e).S03.tibpost_r = f_normalizer(ForeFS_data(e).S03.tibpost_r,101,'linear');
    ForeFS_data(e).S03.edl_r = f_normalizer(ForeFS_data(e).S03.edl_r,101,'linear');
    ForeFS_data(e).S03.fdl_r = f_normalizer(ForeFS_data(e).S03.fdl_r,101,'linear');
    ForeFS_data(e).S03.fhl_r = f_normalizer(ForeFS_data(e).S03.fhl_r,101,'linear');
    ForeFS_data(e).S03.perbrev_r = f_normalizer(ForeFS_data(e).S03.perbrev_r,101,'linear');
    ForeFS_data(e).S03.perlong_r = f_normalizer(ForeFS_data(e).S03.perlong_r,101,'linear');
    ForeFS_data(e).S03.ehl_r = f_normalizer(ForeFS_data(e).S03.ehl_r,101,'linear');

    ForeFS_data(e).S04.gaslat_r = f_normalizer(ForeFS_data(e).S04.gaslat_r,101,'linear');
    ForeFS_data(e).S04.gasmed_r = f_normalizer(ForeFS_data(e).S04.gasmed_r,101,'linear');
    ForeFS_data(e).S04.soleus_r = f_normalizer(ForeFS_data(e).S04.soleus_r,101,'linear');
    ForeFS_data(e).S04.tibant_r = f_normalizer(ForeFS_data(e).S04.tibant_r,101,'linear');
    ForeFS_data(e).S04.tibpost_r = f_normalizer(ForeFS_data(e).S04.tibpost_r,101,'linear');
    ForeFS_data(e).S04.edl_r = f_normalizer(ForeFS_data(e).S04.edl_r,101,'linear');
    ForeFS_data(e).S04.fdl_r = f_normalizer(ForeFS_data(e).S04.fdl_r,101,'linear');
    ForeFS_data(e).S04.fhl_r = f_normalizer(ForeFS_data(e).S04.fhl_r,101,'linear');
    ForeFS_data(e).S04.perbrev_r = f_normalizer(ForeFS_data(e).S04.perbrev_r,101,'linear');
    ForeFS_data(e).S04.perlong_r = f_normalizer(ForeFS_data(e).S04.perlong_r,101,'linear');
    ForeFS_data(e).S04.ehl_r = f_normalizer(ForeFS_data(e).S04.ehl_r,101,'linear');
    
    ForeFS_data(e).S05.gaslat_r = f_normalizer(ForeFS_data(e).S05.gaslat_r,101,'linear');
    ForeFS_data(e).S05.gasmed_r = f_normalizer(ForeFS_data(e).S05.gasmed_r,101,'linear');
    ForeFS_data(e).S05.soleus_r = f_normalizer(ForeFS_data(e).S05.soleus_r,101,'linear');
    ForeFS_data(e).S05.tibant_r = f_normalizer(ForeFS_data(e).S05.tibant_r,101,'linear');
    ForeFS_data(e).S05.tibpost_r = f_normalizer(ForeFS_data(e).S05.tibpost_r,101,'linear');
    ForeFS_data(e).S05.edl_r = f_normalizer(ForeFS_data(e).S05.edl_r,101,'linear');
    ForeFS_data(e).S05.fdl_r = f_normalizer(ForeFS_data(e).S05.fdl_r,101,'linear');
    ForeFS_data(e).S05.fhl_r = f_normalizer(ForeFS_data(e).S05.fhl_r,101,'linear');
    ForeFS_data(e).S05.perbrev_r = f_normalizer(ForeFS_data(e).S05.perbrev_r,101,'linear');
    ForeFS_data(e).S05.perlong_r = f_normalizer(ForeFS_data(e).S05.perlong_r,101,'linear');
    ForeFS_data(e).S05.ehl_r = f_normalizer(ForeFS_data(e).S05.ehl_r,101,'linear');
    
    ForeFS_data(e).S06.gaslat_r = f_normalizer(ForeFS_data(e).S06.gaslat_r,101,'linear');
    ForeFS_data(e).S06.gasmed_r = f_normalizer(ForeFS_data(e).S06.gasmed_r,101,'linear');
    ForeFS_data(e).S06.soleus_r = f_normalizer(ForeFS_data(e).S06.soleus_r,101,'linear');
    ForeFS_data(e).S06.tibant_r = f_normalizer(ForeFS_data(e).S06.tibant_r,101,'linear');
    ForeFS_data(e).S06.tibpost_r = f_normalizer(ForeFS_data(e).S06.tibpost_r,101,'linear');
    ForeFS_data(e).S06.edl_r = f_normalizer(ForeFS_data(e).S06.edl_r,101,'linear');
    ForeFS_data(e).S06.fdl_r = f_normalizer(ForeFS_data(e).S06.fdl_r,101,'linear');
    ForeFS_data(e).S06.fhl_r = f_normalizer(ForeFS_data(e).S06.fhl_r,101,'linear');
    ForeFS_data(e).S06.perbrev_r = f_normalizer(ForeFS_data(e).S06.perbrev_r,101,'linear');
    ForeFS_data(e).S06.perlong_r = f_normalizer(ForeFS_data(e).S06.perlong_r,101,'linear');
    ForeFS_data(e).S06.ehl_r = f_normalizer(ForeFS_data(e).S06.ehl_r,101,'linear');
    
    ForeFS_data(e).S07.gaslat_r = f_normalizer(ForeFS_data(e).S07.gaslat_r,101,'linear');
    ForeFS_data(e).S07.gasmed_r = f_normalizer(ForeFS_data(e).S07.gasmed_r,101,'linear');
    ForeFS_data(e).S07.soleus_r = f_normalizer(ForeFS_data(e).S07.soleus_r,101,'linear');
    ForeFS_data(e).S07.tibant_r = f_normalizer(ForeFS_data(e).S07.tibant_r,101,'linear');
    ForeFS_data(e).S07.tibpost_r = f_normalizer(ForeFS_data(e).S07.tibpost_r,101,'linear');
    ForeFS_data(e).S07.edl_r = f_normalizer(ForeFS_data(e).S07.edl_r,101,'linear');
    ForeFS_data(e).S07.fdl_r = f_normalizer(ForeFS_data(e).S07.fdl_r,101,'linear');
    ForeFS_data(e).S07.fhl_r = f_normalizer(ForeFS_data(e).S07.fhl_r,101,'linear');
    ForeFS_data(e).S07.perbrev_r = f_normalizer(ForeFS_data(e).S07.perbrev_r,101,'linear');
    ForeFS_data(e).S07.perlong_r = f_normalizer(ForeFS_data(e).S07.perlong_r,101,'linear');
    ForeFS_data(e).S07.ehl_r = f_normalizer(ForeFS_data(e).S07.ehl_r,101,'linear');
    
    ForeFS_data(e).S08.gaslat_r = f_normalizer(ForeFS_data(e).S08.gaslat_r,101,'linear');
    ForeFS_data(e).S08.gasmed_r = f_normalizer(ForeFS_data(e).S08.gasmed_r,101,'linear');
    ForeFS_data(e).S08.soleus_r = f_normalizer(ForeFS_data(e).S08.soleus_r,101,'linear');
    ForeFS_data(e).S08.tibant_r = f_normalizer(ForeFS_data(e).S08.tibant_r,101,'linear');
    ForeFS_data(e).S08.tibpost_r = f_normalizer(ForeFS_data(e).S08.tibpost_r,101,'linear');
    ForeFS_data(e).S08.edl_r = f_normalizer(ForeFS_data(e).S08.edl_r,101,'linear');
    ForeFS_data(e).S08.fdl_r = f_normalizer(ForeFS_data(e).S08.fdl_r,101,'linear');
    ForeFS_data(e).S08.fhl_r = f_normalizer(ForeFS_data(e).S08.fhl_r,101,'linear');
    ForeFS_data(e).S08.perbrev_r = f_normalizer(ForeFS_data(e).S08.perbrev_r,101,'linear');
    ForeFS_data(e).S08.perlong_r = f_normalizer(ForeFS_data(e).S08.perlong_r,101,'linear');
    ForeFS_data(e).S08.ehl_r = f_normalizer(ForeFS_data(e).S08.ehl_r,101,'linear');
    
    ForeFS_data(e).S09.gaslat_r = f_normalizer(ForeFS_data(e).S09.gaslat_r,101,'linear');
    ForeFS_data(e).S09.gasmed_r = f_normalizer(ForeFS_data(e).S09.gasmed_r,101,'linear');
    ForeFS_data(e).S09.soleus_r = f_normalizer(ForeFS_data(e).S09.soleus_r,101,'linear');
    ForeFS_data(e).S09.tibant_r = f_normalizer(ForeFS_data(e).S09.tibant_r,101,'linear');
    ForeFS_data(e).S09.tibpost_r = f_normalizer(ForeFS_data(e).S09.tibpost_r,101,'linear');
    ForeFS_data(e).S09.edl_r = f_normalizer(ForeFS_data(e).S09.edl_r,101,'linear');
    ForeFS_data(e).S09.fdl_r = f_normalizer(ForeFS_data(e).S09.fdl_r,101,'linear');
    ForeFS_data(e).S09.fhl_r = f_normalizer(ForeFS_data(e).S09.fhl_r,101,'linear');
    ForeFS_data(e).S09.perbrev_r = f_normalizer(ForeFS_data(e).S09.perbrev_r,101,'linear');
    ForeFS_data(e).S09.perlong_r = f_normalizer(ForeFS_data(e).S09.perlong_r,101,'linear');
    ForeFS_data(e).S09.ehl_r = f_normalizer(ForeFS_data(e).S09.ehl_r,101,'linear');
    
    ForeFS_data(e).S10.gaslat_r = f_normalizer(ForeFS_data(e).S10.gaslat_r,101,'linear');
    ForeFS_data(e).S10.gasmed_r = f_normalizer(ForeFS_data(e).S10.gasmed_r,101,'linear');
    ForeFS_data(e).S10.soleus_r = f_normalizer(ForeFS_data(e).S10.soleus_r,101,'linear');
    ForeFS_data(e).S10.tibant_r = f_normalizer(ForeFS_data(e).S10.tibant_r,101,'linear');
    ForeFS_data(e).S10.tibpost_r = f_normalizer(ForeFS_data(e).S10.tibpost_r,101,'linear');
    ForeFS_data(e).S10.edl_r = f_normalizer(ForeFS_data(e).S10.edl_r,101,'linear');
    ForeFS_data(e).S10.fdl_r = f_normalizer(ForeFS_data(e).S10.fdl_r,101,'linear');
    ForeFS_data(e).S10.fhl_r = f_normalizer(ForeFS_data(e).S10.fhl_r,101,'linear');
    ForeFS_data(e).S10.perbrev_r = f_normalizer(ForeFS_data(e).S10.perbrev_r,101,'linear');
    ForeFS_data(e).S10.perlong_r = f_normalizer(ForeFS_data(e).S10.perlong_r,101,'linear');
    ForeFS_data(e).S10.ehl_r = f_normalizer(ForeFS_data(e).S10.ehl_r,101,'linear');
    
    ForeFS_data(e).S11.gaslat_r = f_normalizer(ForeFS_data(e).S11.gaslat_r,101,'linear');
    ForeFS_data(e).S11.gasmed_r = f_normalizer(ForeFS_data(e).S11.gasmed_r,101,'linear');
    ForeFS_data(e).S11.soleus_r = f_normalizer(ForeFS_data(e).S11.soleus_r,101,'linear');
    ForeFS_data(e).S11.tibant_r = f_normalizer(ForeFS_data(e).S11.tibant_r,101,'linear');
    ForeFS_data(e).S11.tibpost_r = f_normalizer(ForeFS_data(e).S11.tibpost_r,101,'linear');
    ForeFS_data(e).S11.edl_r = f_normalizer(ForeFS_data(e).S11.edl_r,101,'linear');
    ForeFS_data(e).S11.fdl_r = f_normalizer(ForeFS_data(e).S11.fdl_r,101,'linear');
    ForeFS_data(e).S11.fhl_r = f_normalizer(ForeFS_data(e).S11.fhl_r,101,'linear');
    ForeFS_data(e).S11.perbrev_r = f_normalizer(ForeFS_data(e).S11.perbrev_r,101,'linear');
    ForeFS_data(e).S11.perlong_r = f_normalizer(ForeFS_data(e).S11.perlong_r,101,'linear');
    ForeFS_data(e).S11.ehl_r = f_normalizer(ForeFS_data(e).S11.ehl_r,101,'linear');
    
    ForeFS_data(e).S12.gaslat_r = f_normalizer(ForeFS_data(e).S12.gaslat_r,101,'linear');
    ForeFS_data(e).S12.gasmed_r = f_normalizer(ForeFS_data(e).S12.gasmed_r,101,'linear');
    ForeFS_data(e).S12.soleus_r = f_normalizer(ForeFS_data(e).S12.soleus_r,101,'linear');
    ForeFS_data(e).S12.tibant_r = f_normalizer(ForeFS_data(e).S12.tibant_r,101,'linear');
    ForeFS_data(e).S12.tibpost_r = f_normalizer(ForeFS_data(e).S12.tibpost_r,101,'linear');
    ForeFS_data(e).S12.edl_r = f_normalizer(ForeFS_data(e).S12.edl_r,101,'linear');
    ForeFS_data(e).S12.fdl_r = f_normalizer(ForeFS_data(e).S12.fdl_r,101,'linear');
    ForeFS_data(e).S12.fhl_r = f_normalizer(ForeFS_data(e).S12.fhl_r,101,'linear');
    ForeFS_data(e).S12.perbrev_r = f_normalizer(ForeFS_data(e).S12.perbrev_r,101,'linear');
    ForeFS_data(e).S12.perlong_r = f_normalizer(ForeFS_data(e).S12.perlong_r,101,'linear');
    ForeFS_data(e).S12.ehl_r = f_normalizer(ForeFS_data(e).S12.ehl_r,101,'linear');
    
    ForeFS_data(e).S13.gaslat_r = f_normalizer(ForeFS_data(e).S13.gaslat_r,101,'linear');
    ForeFS_data(e).S13.gasmed_r = f_normalizer(ForeFS_data(e).S13.gasmed_r,101,'linear');
    ForeFS_data(e).S13.soleus_r = f_normalizer(ForeFS_data(e).S13.soleus_r,101,'linear');
    ForeFS_data(e).S13.tibant_r = f_normalizer(ForeFS_data(e).S13.tibant_r,101,'linear');
    ForeFS_data(e).S13.tibpost_r = f_normalizer(ForeFS_data(e).S13.tibpost_r,101,'linear');
    ForeFS_data(e).S13.edl_r = f_normalizer(ForeFS_data(e).S13.edl_r,101,'linear');
    ForeFS_data(e).S13.fdl_r = f_normalizer(ForeFS_data(e).S13.fdl_r,101,'linear');
    ForeFS_data(e).S13.fhl_r = f_normalizer(ForeFS_data(e).S13.fhl_r,101,'linear');
    ForeFS_data(e).S13.perbrev_r = f_normalizer(ForeFS_data(e).S13.perbrev_r,101,'linear');
    ForeFS_data(e).S13.perlong_r = f_normalizer(ForeFS_data(e).S13.perlong_r,101,'linear');
    ForeFS_data(e).S13.ehl_r = f_normalizer(ForeFS_data(e).S13.ehl_r,101,'linear');
    
    ForeFS_data(e).S14.gaslat_r = f_normalizer(ForeFS_data(e).S14.gaslat_r,101,'linear');
    ForeFS_data(e).S14.gasmed_r = f_normalizer(ForeFS_data(e).S14.gasmed_r,101,'linear');
    ForeFS_data(e).S14.soleus_r = f_normalizer(ForeFS_data(e).S14.soleus_r,101,'linear');
    ForeFS_data(e).S14.tibant_r = f_normalizer(ForeFS_data(e).S14.tibant_r,101,'linear');
    ForeFS_data(e).S14.tibpost_r = f_normalizer(ForeFS_data(e).S14.tibpost_r,101,'linear');
    ForeFS_data(e).S14.edl_r = f_normalizer(ForeFS_data(e).S14.edl_r,101,'linear');
    ForeFS_data(e).S14.fdl_r = f_normalizer(ForeFS_data(e).S14.fdl_r,101,'linear');
    ForeFS_data(e).S14.fhl_r = f_normalizer(ForeFS_data(e).S14.fhl_r,101,'linear');
    ForeFS_data(e).S14.perbrev_r = f_normalizer(ForeFS_data(e).S14.perbrev_r,101,'linear');
    ForeFS_data(e).S14.perlong_r = f_normalizer(ForeFS_data(e).S14.perlong_r,101,'linear');
    ForeFS_data(e).S14.ehl_r = f_normalizer(ForeFS_data(e).S14.ehl_r,101,'linear');
    
    ForeFS_data(e).S15.gaslat_r = f_normalizer(ForeFS_data(e).S15.gaslat_r,101,'linear');
    ForeFS_data(e).S15.gasmed_r = f_normalizer(ForeFS_data(e).S15.gasmed_r,101,'linear');
    ForeFS_data(e).S15.soleus_r = f_normalizer(ForeFS_data(e).S15.soleus_r,101,'linear');
    ForeFS_data(e).S15.tibant_r = f_normalizer(ForeFS_data(e).S15.tibant_r,101,'linear');
    ForeFS_data(e).S15.tibpost_r = f_normalizer(ForeFS_data(e).S15.tibpost_r,101,'linear');
    ForeFS_data(e).S15.edl_r = f_normalizer(ForeFS_data(e).S15.edl_r,101,'linear');
    ForeFS_data(e).S15.fdl_r = f_normalizer(ForeFS_data(e).S15.fdl_r,101,'linear');
    ForeFS_data(e).S15.fhl_r = f_normalizer(ForeFS_data(e).S15.fhl_r,101,'linear');
    ForeFS_data(e).S15.perbrev_r = f_normalizer(ForeFS_data(e).S15.perbrev_r,101,'linear');
    ForeFS_data(e).S15.perlong_r = f_normalizer(ForeFS_data(e).S15.perlong_r,101,'linear');
    ForeFS_data(e).S15.ehl_r = f_normalizer(ForeFS_data(e).S15.ehl_r,101,'linear');
    
    ForeFS_data(e).S16.gaslat_r = f_normalizer(ForeFS_data(e).S16.gaslat_r,101,'linear');
    ForeFS_data(e).S16.gasmed_r = f_normalizer(ForeFS_data(e).S16.gasmed_r,101,'linear');
    ForeFS_data(e).S16.soleus_r = f_normalizer(ForeFS_data(e).S16.soleus_r,101,'linear');
    ForeFS_data(e).S16.tibant_r = f_normalizer(ForeFS_data(e).S16.tibant_r,101,'linear');
    ForeFS_data(e).S16.tibpost_r = f_normalizer(ForeFS_data(e).S16.tibpost_r,101,'linear');
    ForeFS_data(e).S16.edl_r = f_normalizer(ForeFS_data(e).S16.edl_r,101,'linear');
    ForeFS_data(e).S16.fdl_r = f_normalizer(ForeFS_data(e).S16.fdl_r,101,'linear');
    ForeFS_data(e).S16.fhl_r = f_normalizer(ForeFS_data(e).S16.fhl_r,101,'linear');
    ForeFS_data(e).S16.perbrev_r = f_normalizer(ForeFS_data(e).S16.perbrev_r,101,'linear');
    ForeFS_data(e).S16.perlong_r = f_normalizer(ForeFS_data(e).S16.perlong_r,101,'linear');
    ForeFS_data(e).S16.ehl_r = f_normalizer(ForeFS_data(e).S16.ehl_r,101,'linear');
    
    ForeFS_data(e).S17.gaslat_r = f_normalizer(ForeFS_data(e).S17.gaslat_r,101,'linear');
    ForeFS_data(e).S17.gasmed_r = f_normalizer(ForeFS_data(e).S17.gasmed_r,101,'linear');
    ForeFS_data(e).S17.soleus_r = f_normalizer(ForeFS_data(e).S17.soleus_r,101,'linear');
    ForeFS_data(e).S17.tibant_r = f_normalizer(ForeFS_data(e).S17.tibant_r,101,'linear');
    ForeFS_data(e).S17.tibpost_r = f_normalizer(ForeFS_data(e).S17.tibpost_r,101,'linear');
    ForeFS_data(e).S17.edl_r = f_normalizer(ForeFS_data(e).S17.edl_r,101,'linear');
    ForeFS_data(e).S17.fdl_r = f_normalizer(ForeFS_data(e).S17.fdl_r,101,'linear');
    ForeFS_data(e).S17.fhl_r = f_normalizer(ForeFS_data(e).S17.fhl_r,101,'linear');
    ForeFS_data(e).S17.perbrev_r = f_normalizer(ForeFS_data(e).S17.perbrev_r,101,'linear');
    ForeFS_data(e).S17.perlong_r = f_normalizer(ForeFS_data(e).S17.perlong_r,101,'linear');
    ForeFS_data(e).S17.ehl_r = f_normalizer(ForeFS_data(e).S17.ehl_r,101,'linear');
    
    ForeFS_data(e).S18.gaslat_r = f_normalizer(ForeFS_data(e).S18.gaslat_r,101,'linear');
    ForeFS_data(e).S18.gasmed_r = f_normalizer(ForeFS_data(e).S18.gasmed_r,101,'linear');
    ForeFS_data(e).S18.soleus_r = f_normalizer(ForeFS_data(e).S18.soleus_r,101,'linear');
    ForeFS_data(e).S18.tibant_r = f_normalizer(ForeFS_data(e).S18.tibant_r,101,'linear');
    ForeFS_data(e).S18.tibpost_r = f_normalizer(ForeFS_data(e).S18.tibpost_r,101,'linear');
    ForeFS_data(e).S18.edl_r = f_normalizer(ForeFS_data(e).S18.edl_r,101,'linear');
    ForeFS_data(e).S18.fdl_r = f_normalizer(ForeFS_data(e).S18.fdl_r,101,'linear');
    ForeFS_data(e).S18.fhl_r = f_normalizer(ForeFS_data(e).S18.fhl_r,101,'linear');
    ForeFS_data(e).S18.perbrev_r = f_normalizer(ForeFS_data(e).S18.perbrev_r,101,'linear');
    ForeFS_data(e).S18.perlong_r = f_normalizer(ForeFS_data(e).S18.perlong_r,101,'linear');
    ForeFS_data(e).S18.ehl_r = f_normalizer(ForeFS_data(e).S18.ehl_r,101,'linear');
    
    ForeFS_data(e).S19.gaslat_r = f_normalizer(ForeFS_data(e).S19.gaslat_r,101,'linear');
    ForeFS_data(e).S19.gasmed_r = f_normalizer(ForeFS_data(e).S19.gasmed_r,101,'linear');
    ForeFS_data(e).S19.soleus_r = f_normalizer(ForeFS_data(e).S19.soleus_r,101,'linear');
    ForeFS_data(e).S19.tibant_r = f_normalizer(ForeFS_data(e).S19.tibant_r,101,'linear');
    ForeFS_data(e).S19.tibpost_r = f_normalizer(ForeFS_data(e).S19.tibpost_r,101,'linear');
    ForeFS_data(e).S19.edl_r = f_normalizer(ForeFS_data(e).S19.edl_r,101,'linear');
    ForeFS_data(e).S19.fdl_r = f_normalizer(ForeFS_data(e).S19.fdl_r,101,'linear');
    ForeFS_data(e).S19.fhl_r = f_normalizer(ForeFS_data(e).S19.fhl_r,101,'linear');
    ForeFS_data(e).S19.perbrev_r = f_normalizer(ForeFS_data(e).S19.perbrev_r,101,'linear');
    ForeFS_data(e).S19.perlong_r = f_normalizer(ForeFS_data(e).S19.perlong_r,101,'linear');
    ForeFS_data(e).S19.ehl_r = f_normalizer(ForeFS_data(e).S19.ehl_r,101,'linear');
    
    
    RearFS_data(e).S01.gaslat_r = f_normalizer(RearFS_data(e).S01.gaslat_r,101,'linear');
    RearFS_data(e).S01.gasmed_r = f_normalizer(RearFS_data(e).S01.gasmed_r,101,'linear');
    RearFS_data(e).S01.soleus_r = f_normalizer(RearFS_data(e).S01.soleus_r,101,'linear');
    RearFS_data(e).S01.tibant_r = f_normalizer(RearFS_data(e).S01.tibant_r,101,'linear');
    RearFS_data(e).S01.tibpost_r = f_normalizer(RearFS_data(e).S01.tibpost_r,101,'linear');
    RearFS_data(e).S01.edl_r = f_normalizer(RearFS_data(e).S01.edl_r,101,'linear');
    RearFS_data(e).S01.fdl_r = f_normalizer(RearFS_data(e).S01.fdl_r,101,'linear');
    RearFS_data(e).S01.fhl_r = f_normalizer(RearFS_data(e).S01.fhl_r,101,'linear');
    RearFS_data(e).S01.perbrev_r = f_normalizer(RearFS_data(e).S01.perbrev_r,101,'linear');
    RearFS_data(e).S01.perlong_r = f_normalizer(RearFS_data(e).S01.perlong_r,101,'linear');
    RearFS_data(e).S01.ehl_r = f_normalizer(RearFS_data(e).S01.ehl_r,101,'linear');
   
    RearFS_data(e).S02.gaslat_r = f_normalizer(RearFS_data(e).S02.gaslat_r,101,'linear');
    RearFS_data(e).S02.gasmed_r = f_normalizer(RearFS_data(e).S02.gasmed_r,101,'linear');
    RearFS_data(e).S02.soleus_r = f_normalizer(RearFS_data(e).S02.soleus_r,101,'linear');
    RearFS_data(e).S02.tibant_r = f_normalizer(RearFS_data(e).S02.tibant_r,101,'linear');
    RearFS_data(e).S02.tibpost_r = f_normalizer(RearFS_data(e).S02.tibpost_r,101,'linear');
    RearFS_data(e).S02.edl_r = f_normalizer(RearFS_data(e).S02.edl_r,101,'linear');
    RearFS_data(e).S02.fdl_r = f_normalizer(RearFS_data(e).S02.fdl_r,101,'linear');
    RearFS_data(e).S02.fhl_r = f_normalizer(RearFS_data(e).S02.fhl_r,101,'linear');
    RearFS_data(e).S02.perbrev_r = f_normalizer(RearFS_data(e).S02.perbrev_r,101,'linear');
    RearFS_data(e).S02.perlong_r = f_normalizer(RearFS_data(e).S02.perlong_r,101,'linear');
    RearFS_data(e).S02.ehl_r = f_normalizer(RearFS_data(e).S02.ehl_r,101,'linear');
    
    RearFS_data(e).S03.gaslat_r = f_normalizer(RearFS_data(e).S03.gaslat_r,101,'linear');
    RearFS_data(e).S03.gasmed_r = f_normalizer(RearFS_data(e).S03.gasmed_r,101,'linear');
    RearFS_data(e).S03.soleus_r = f_normalizer(RearFS_data(e).S03.soleus_r,101,'linear');
    RearFS_data(e).S03.tibant_r = f_normalizer(RearFS_data(e).S03.tibant_r,101,'linear');
    RearFS_data(e).S03.tibpost_r = f_normalizer(RearFS_data(e).S03.tibpost_r,101,'linear');
    RearFS_data(e).S03.edl_r = f_normalizer(RearFS_data(e).S03.edl_r,101,'linear');
    RearFS_data(e).S03.fdl_r = f_normalizer(RearFS_data(e).S03.fdl_r,101,'linear');
    RearFS_data(e).S03.fhl_r = f_normalizer(RearFS_data(e).S03.fhl_r,101,'linear');
    RearFS_data(e).S03.perbrev_r = f_normalizer(RearFS_data(e).S03.perbrev_r,101,'linear');
    RearFS_data(e).S03.perlong_r = f_normalizer(RearFS_data(e).S03.perlong_r,101,'linear');
    RearFS_data(e).S03.ehl_r = f_normalizer(RearFS_data(e).S03.ehl_r,101,'linear');

    RearFS_data(e).S04.gaslat_r = f_normalizer(RearFS_data(e).S04.gaslat_r,101,'linear');
    RearFS_data(e).S04.gasmed_r = f_normalizer(RearFS_data(e).S04.gasmed_r,101,'linear');
    RearFS_data(e).S04.soleus_r = f_normalizer(RearFS_data(e).S04.soleus_r,101,'linear');
    RearFS_data(e).S04.tibant_r = f_normalizer(RearFS_data(e).S04.tibant_r,101,'linear');
    RearFS_data(e).S04.tibpost_r = f_normalizer(RearFS_data(e).S04.tibpost_r,101,'linear');
    RearFS_data(e).S04.edl_r = f_normalizer(RearFS_data(e).S04.edl_r,101,'linear');
    RearFS_data(e).S04.fdl_r = f_normalizer(RearFS_data(e).S04.fdl_r,101,'linear');
    RearFS_data(e).S04.fhl_r = f_normalizer(RearFS_data(e).S04.fhl_r,101,'linear');
    RearFS_data(e).S04.perbrev_r = f_normalizer(RearFS_data(e).S04.perbrev_r,101,'linear');
    RearFS_data(e).S04.perlong_r = f_normalizer(RearFS_data(e).S04.perlong_r,101,'linear');
    RearFS_data(e).S04.ehl_r = f_normalizer(RearFS_data(e).S04.ehl_r,101,'linear');
    
    RearFS_data(e).S05.gaslat_r = f_normalizer(RearFS_data(e).S05.gaslat_r,101,'linear');
    RearFS_data(e).S05.gasmed_r = f_normalizer(RearFS_data(e).S05.gasmed_r,101,'linear');
    RearFS_data(e).S05.soleus_r = f_normalizer(RearFS_data(e).S05.soleus_r,101,'linear');
    RearFS_data(e).S05.tibant_r = f_normalizer(RearFS_data(e).S05.tibant_r,101,'linear');
    RearFS_data(e).S05.tibpost_r = f_normalizer(RearFS_data(e).S05.tibpost_r,101,'linear');
    RearFS_data(e).S05.edl_r = f_normalizer(RearFS_data(e).S05.edl_r,101,'linear');
    RearFS_data(e).S05.fdl_r = f_normalizer(RearFS_data(e).S05.fdl_r,101,'linear');
    RearFS_data(e).S05.fhl_r = f_normalizer(RearFS_data(e).S05.fhl_r,101,'linear');
    RearFS_data(e).S05.perbrev_r = f_normalizer(RearFS_data(e).S05.perbrev_r,101,'linear');
    RearFS_data(e).S05.perlong_r = f_normalizer(RearFS_data(e).S05.perlong_r,101,'linear');
    RearFS_data(e).S05.ehl_r = f_normalizer(RearFS_data(e).S05.ehl_r,101,'linear');
    
    RearFS_data(e).S06.gaslat_r = f_normalizer(RearFS_data(e).S06.gaslat_r,101,'linear');
    RearFS_data(e).S06.gasmed_r = f_normalizer(RearFS_data(e).S06.gasmed_r,101,'linear');
    RearFS_data(e).S06.soleus_r = f_normalizer(RearFS_data(e).S06.soleus_r,101,'linear');
    RearFS_data(e).S06.tibant_r = f_normalizer(RearFS_data(e).S06.tibant_r,101,'linear');
    RearFS_data(e).S06.tibpost_r = f_normalizer(RearFS_data(e).S06.tibpost_r,101,'linear');
    RearFS_data(e).S06.edl_r = f_normalizer(RearFS_data(e).S06.edl_r,101,'linear');
    RearFS_data(e).S06.fdl_r = f_normalizer(RearFS_data(e).S06.fdl_r,101,'linear');
    RearFS_data(e).S06.fhl_r = f_normalizer(RearFS_data(e).S06.fhl_r,101,'linear');
    RearFS_data(e).S06.perbrev_r = f_normalizer(RearFS_data(e).S06.perbrev_r,101,'linear');
    RearFS_data(e).S06.perlong_r = f_normalizer(RearFS_data(e).S06.perlong_r,101,'linear');
    RearFS_data(e).S06.ehl_r = f_normalizer(RearFS_data(e).S06.ehl_r,101,'linear');
    
    RearFS_data(e).S07.gaslat_r = f_normalizer(RearFS_data(e).S07.gaslat_r,101,'linear');
    RearFS_data(e).S07.gasmed_r = f_normalizer(RearFS_data(e).S07.gasmed_r,101,'linear');
    RearFS_data(e).S07.soleus_r = f_normalizer(RearFS_data(e).S07.soleus_r,101,'linear');
    RearFS_data(e).S07.tibant_r = f_normalizer(RearFS_data(e).S07.tibant_r,101,'linear');
    RearFS_data(e).S07.tibpost_r = f_normalizer(RearFS_data(e).S07.tibpost_r,101,'linear');
    RearFS_data(e).S07.edl_r = f_normalizer(RearFS_data(e).S07.edl_r,101,'linear');
    RearFS_data(e).S07.fdl_r = f_normalizer(RearFS_data(e).S07.fdl_r,101,'linear');
    RearFS_data(e).S07.fhl_r = f_normalizer(RearFS_data(e).S07.fhl_r,101,'linear');
    RearFS_data(e).S07.perbrev_r = f_normalizer(RearFS_data(e).S07.perbrev_r,101,'linear');
    RearFS_data(e).S07.perlong_r = f_normalizer(RearFS_data(e).S07.perlong_r,101,'linear');
    RearFS_data(e).S07.ehl_r = f_normalizer(RearFS_data(e).S07.ehl_r,101,'linear');
    
    RearFS_data(e).S08.gaslat_r = f_normalizer(RearFS_data(e).S08.gaslat_r,101,'linear');
    RearFS_data(e).S08.gasmed_r = f_normalizer(RearFS_data(e).S08.gasmed_r,101,'linear');
    RearFS_data(e).S08.soleus_r = f_normalizer(RearFS_data(e).S08.soleus_r,101,'linear');
    RearFS_data(e).S08.tibant_r = f_normalizer(RearFS_data(e).S08.tibant_r,101,'linear');
    RearFS_data(e).S08.tibpost_r = f_normalizer(RearFS_data(e).S08.tibpost_r,101,'linear');
    RearFS_data(e).S08.edl_r = f_normalizer(RearFS_data(e).S08.edl_r,101,'linear');
    RearFS_data(e).S08.fdl_r = f_normalizer(RearFS_data(e).S08.fdl_r,101,'linear');
    RearFS_data(e).S08.fhl_r = f_normalizer(RearFS_data(e).S08.fhl_r,101,'linear');
    RearFS_data(e).S08.perbrev_r = f_normalizer(RearFS_data(e).S08.perbrev_r,101,'linear');
    RearFS_data(e).S08.perlong_r = f_normalizer(RearFS_data(e).S08.perlong_r,101,'linear');
    RearFS_data(e).S08.ehl_r = f_normalizer(RearFS_data(e).S08.ehl_r,101,'linear');
    
    RearFS_data(e).S09.gaslat_r = f_normalizer(RearFS_data(e).S09.gaslat_r,101,'linear');
    RearFS_data(e).S09.gasmed_r = f_normalizer(RearFS_data(e).S09.gasmed_r,101,'linear');
    RearFS_data(e).S09.soleus_r = f_normalizer(RearFS_data(e).S09.soleus_r,101,'linear');
    RearFS_data(e).S09.tibant_r = f_normalizer(RearFS_data(e).S09.tibant_r,101,'linear');
    RearFS_data(e).S09.tibpost_r = f_normalizer(RearFS_data(e).S09.tibpost_r,101,'linear');
    RearFS_data(e).S09.edl_r = f_normalizer(RearFS_data(e).S09.edl_r,101,'linear');
    RearFS_data(e).S09.fdl_r = f_normalizer(RearFS_data(e).S09.fdl_r,101,'linear');
    RearFS_data(e).S09.fhl_r = f_normalizer(RearFS_data(e).S09.fhl_r,101,'linear');
    RearFS_data(e).S09.perbrev_r = f_normalizer(RearFS_data(e).S09.perbrev_r,101,'linear');
    RearFS_data(e).S09.perlong_r = f_normalizer(RearFS_data(e).S09.perlong_r,101,'linear');
    RearFS_data(e).S09.ehl_r = f_normalizer(RearFS_data(e).S09.ehl_r,101,'linear');
    
    RearFS_data(e).S10.gaslat_r = f_normalizer(RearFS_data(e).S10.gaslat_r,101,'linear');
    RearFS_data(e).S10.gasmed_r = f_normalizer(RearFS_data(e).S10.gasmed_r,101,'linear');
    RearFS_data(e).S10.soleus_r = f_normalizer(RearFS_data(e).S10.soleus_r,101,'linear');
    RearFS_data(e).S10.tibant_r = f_normalizer(RearFS_data(e).S10.tibant_r,101,'linear');
    RearFS_data(e).S10.tibpost_r = f_normalizer(RearFS_data(e).S10.tibpost_r,101,'linear');
    RearFS_data(e).S10.edl_r = f_normalizer(RearFS_data(e).S10.edl_r,101,'linear');
    RearFS_data(e).S10.fdl_r = f_normalizer(RearFS_data(e).S10.fdl_r,101,'linear');
    RearFS_data(e).S10.fhl_r = f_normalizer(RearFS_data(e).S10.fhl_r,101,'linear');
    RearFS_data(e).S10.perbrev_r = f_normalizer(RearFS_data(e).S10.perbrev_r,101,'linear');
    RearFS_data(e).S10.perlong_r = f_normalizer(RearFS_data(e).S10.perlong_r,101,'linear');
    RearFS_data(e).S10.ehl_r = f_normalizer(RearFS_data(e).S10.ehl_r,101,'linear');
    
    RearFS_data(e).S11.gaslat_r = f_normalizer(RearFS_data(e).S11.gaslat_r,101,'linear');
    RearFS_data(e).S11.gasmed_r = f_normalizer(RearFS_data(e).S11.gasmed_r,101,'linear');
    RearFS_data(e).S11.soleus_r = f_normalizer(RearFS_data(e).S11.soleus_r,101,'linear');
    RearFS_data(e).S11.tibant_r = f_normalizer(RearFS_data(e).S11.tibant_r,101,'linear');
    RearFS_data(e).S11.tibpost_r = f_normalizer(RearFS_data(e).S11.tibpost_r,101,'linear');
    RearFS_data(e).S11.edl_r = f_normalizer(RearFS_data(e).S11.edl_r,101,'linear');
    RearFS_data(e).S11.fdl_r = f_normalizer(RearFS_data(e).S11.fdl_r,101,'linear');
    RearFS_data(e).S11.fhl_r = f_normalizer(RearFS_data(e).S11.fhl_r,101,'linear');
    RearFS_data(e).S11.perbrev_r = f_normalizer(RearFS_data(e).S11.perbrev_r,101,'linear');
    RearFS_data(e).S11.perlong_r = f_normalizer(RearFS_data(e).S11.perlong_r,101,'linear');
    RearFS_data(e).S11.ehl_r = f_normalizer(RearFS_data(e).S11.ehl_r,101,'linear');
    
    RearFS_data(e).S12.gaslat_r = f_normalizer(RearFS_data(e).S12.gaslat_r,101,'linear');
    RearFS_data(e).S12.gasmed_r = f_normalizer(RearFS_data(e).S12.gasmed_r,101,'linear');
    RearFS_data(e).S12.soleus_r = f_normalizer(RearFS_data(e).S12.soleus_r,101,'linear');
    RearFS_data(e).S12.tibant_r = f_normalizer(RearFS_data(e).S12.tibant_r,101,'linear');
    RearFS_data(e).S12.tibpost_r = f_normalizer(RearFS_data(e).S12.tibpost_r,101,'linear');
    RearFS_data(e).S12.edl_r = f_normalizer(RearFS_data(e).S12.edl_r,101,'linear');
    RearFS_data(e).S12.fdl_r = f_normalizer(RearFS_data(e).S12.fdl_r,101,'linear');
    RearFS_data(e).S12.fhl_r = f_normalizer(RearFS_data(e).S12.fhl_r,101,'linear');
    RearFS_data(e).S12.perbrev_r = f_normalizer(RearFS_data(e).S12.perbrev_r,101,'linear');
    RearFS_data(e).S12.perlong_r = f_normalizer(RearFS_data(e).S12.perlong_r,101,'linear');
    RearFS_data(e).S12.ehl_r = f_normalizer(RearFS_data(e).S12.ehl_r,101,'linear');
    
    RearFS_data(e).S13.gaslat_r = f_normalizer(RearFS_data(e).S13.gaslat_r,101,'linear');
    RearFS_data(e).S13.gasmed_r = f_normalizer(RearFS_data(e).S13.gasmed_r,101,'linear');
    RearFS_data(e).S13.soleus_r = f_normalizer(RearFS_data(e).S13.soleus_r,101,'linear');
    RearFS_data(e).S13.tibant_r = f_normalizer(RearFS_data(e).S13.tibant_r,101,'linear');
    RearFS_data(e).S13.tibpost_r = f_normalizer(RearFS_data(e).S13.tibpost_r,101,'linear');
    RearFS_data(e).S13.edl_r = f_normalizer(RearFS_data(e).S13.edl_r,101,'linear');
    RearFS_data(e).S13.fdl_r = f_normalizer(RearFS_data(e).S13.fdl_r,101,'linear');
    RearFS_data(e).S13.fhl_r = f_normalizer(RearFS_data(e).S13.fhl_r,101,'linear');
    RearFS_data(e).S13.perbrev_r = f_normalizer(RearFS_data(e).S13.perbrev_r,101,'linear');
    RearFS_data(e).S13.perlong_r = f_normalizer(RearFS_data(e).S13.perlong_r,101,'linear');
    RearFS_data(e).S13.ehl_r = f_normalizer(RearFS_data(e).S13.ehl_r,101,'linear');
    
    RearFS_data(e).S14.gaslat_r = f_normalizer(RearFS_data(e).S14.gaslat_r,101,'linear');
    RearFS_data(e).S14.gasmed_r = f_normalizer(RearFS_data(e).S14.gasmed_r,101,'linear');
    RearFS_data(e).S14.soleus_r = f_normalizer(RearFS_data(e).S14.soleus_r,101,'linear');
    RearFS_data(e).S14.tibant_r = f_normalizer(RearFS_data(e).S14.tibant_r,101,'linear');
    RearFS_data(e).S14.tibpost_r = f_normalizer(RearFS_data(e).S14.tibpost_r,101,'linear');
    RearFS_data(e).S14.edl_r = f_normalizer(RearFS_data(e).S14.edl_r,101,'linear');
    RearFS_data(e).S14.fdl_r = f_normalizer(RearFS_data(e).S14.fdl_r,101,'linear');
    RearFS_data(e).S14.fhl_r = f_normalizer(RearFS_data(e).S14.fhl_r,101,'linear');
    RearFS_data(e).S14.perbrev_r = f_normalizer(RearFS_data(e).S14.perbrev_r,101,'linear');
    RearFS_data(e).S14.perlong_r = f_normalizer(RearFS_data(e).S14.perlong_r,101,'linear');
    RearFS_data(e).S14.ehl_r = f_normalizer(RearFS_data(e).S14.ehl_r,101,'linear');
    
    RearFS_data(e).S15.gaslat_r = f_normalizer(RearFS_data(e).S15.gaslat_r,101,'linear');
    RearFS_data(e).S15.gasmed_r = f_normalizer(RearFS_data(e).S15.gasmed_r,101,'linear');
    RearFS_data(e).S15.soleus_r = f_normalizer(RearFS_data(e).S15.soleus_r,101,'linear');
    RearFS_data(e).S15.tibant_r = f_normalizer(RearFS_data(e).S15.tibant_r,101,'linear');
    RearFS_data(e).S15.tibpost_r = f_normalizer(RearFS_data(e).S15.tibpost_r,101,'linear');
    RearFS_data(e).S15.edl_r = f_normalizer(RearFS_data(e).S15.edl_r,101,'linear');
    RearFS_data(e).S15.fdl_r = f_normalizer(RearFS_data(e).S15.fdl_r,101,'linear');
    RearFS_data(e).S15.fhl_r = f_normalizer(RearFS_data(e).S15.fhl_r,101,'linear');
    RearFS_data(e).S15.perbrev_r = f_normalizer(RearFS_data(e).S15.perbrev_r,101,'linear');
    RearFS_data(e).S15.perlong_r = f_normalizer(RearFS_data(e).S15.perlong_r,101,'linear');
    RearFS_data(e).S15.ehl_r = f_normalizer(RearFS_data(e).S15.ehl_r,101,'linear');
    
    RearFS_data(e).S16.gaslat_r = f_normalizer(RearFS_data(e).S16.gaslat_r,101,'linear');
    RearFS_data(e).S16.gasmed_r = f_normalizer(RearFS_data(e).S16.gasmed_r,101,'linear');
    RearFS_data(e).S16.soleus_r = f_normalizer(RearFS_data(e).S16.soleus_r,101,'linear');
    RearFS_data(e).S16.tibant_r = f_normalizer(RearFS_data(e).S16.tibant_r,101,'linear');
    RearFS_data(e).S16.tibpost_r = f_normalizer(RearFS_data(e).S16.tibpost_r,101,'linear');
    RearFS_data(e).S16.edl_r = f_normalizer(RearFS_data(e).S16.edl_r,101,'linear');
    RearFS_data(e).S16.fdl_r = f_normalizer(RearFS_data(e).S16.fdl_r,101,'linear');
    RearFS_data(e).S16.fhl_r = f_normalizer(RearFS_data(e).S16.fhl_r,101,'linear');
    RearFS_data(e).S16.perbrev_r = f_normalizer(RearFS_data(e).S16.perbrev_r,101,'linear');
    RearFS_data(e).S16.perlong_r = f_normalizer(RearFS_data(e).S16.perlong_r,101,'linear');
    RearFS_data(e).S16.ehl_r = f_normalizer(RearFS_data(e).S16.ehl_r,101,'linear');
    
    RearFS_data(e).S17.gaslat_r = f_normalizer(RearFS_data(e).S17.gaslat_r,101,'linear');
    RearFS_data(e).S17.gasmed_r = f_normalizer(RearFS_data(e).S17.gasmed_r,101,'linear');
    RearFS_data(e).S17.soleus_r = f_normalizer(RearFS_data(e).S17.soleus_r,101,'linear');
    RearFS_data(e).S17.tibant_r = f_normalizer(RearFS_data(e).S17.tibant_r,101,'linear');
    RearFS_data(e).S17.tibpost_r = f_normalizer(RearFS_data(e).S17.tibpost_r,101,'linear');
    RearFS_data(e).S17.edl_r = f_normalizer(RearFS_data(e).S17.edl_r,101,'linear');
    RearFS_data(e).S17.fdl_r = f_normalizer(RearFS_data(e).S17.fdl_r,101,'linear');
    RearFS_data(e).S17.fhl_r = f_normalizer(RearFS_data(e).S17.fhl_r,101,'linear');
    RearFS_data(e).S17.perbrev_r = f_normalizer(RearFS_data(e).S17.perbrev_r,101,'linear');
    RearFS_data(e).S17.perlong_r = f_normalizer(RearFS_data(e).S17.perlong_r,101,'linear');
    RearFS_data(e).S17.ehl_r = f_normalizer(RearFS_data(e).S17.ehl_r,101,'linear');
    
    RearFS_data(e).S18.gaslat_r = f_normalizer(RearFS_data(e).S18.gaslat_r,101,'linear');
    RearFS_data(e).S18.gasmed_r = f_normalizer(RearFS_data(e).S18.gasmed_r,101,'linear');
    RearFS_data(e).S18.soleus_r = f_normalizer(RearFS_data(e).S18.soleus_r,101,'linear');
    RearFS_data(e).S18.tibant_r = f_normalizer(RearFS_data(e).S18.tibant_r,101,'linear');
    RearFS_data(e).S18.tibpost_r = f_normalizer(RearFS_data(e).S18.tibpost_r,101,'linear');
    RearFS_data(e).S18.edl_r = f_normalizer(RearFS_data(e).S18.edl_r,101,'linear');
    RearFS_data(e).S18.fdl_r = f_normalizer(RearFS_data(e).S18.fdl_r,101,'linear');
    RearFS_data(e).S18.fhl_r = f_normalizer(RearFS_data(e).S18.fhl_r,101,'linear');
    RearFS_data(e).S18.perbrev_r = f_normalizer(RearFS_data(e).S18.perbrev_r,101,'linear');
    RearFS_data(e).S18.perlong_r = f_normalizer(RearFS_data(e).S18.perlong_r,101,'linear');
    RearFS_data(e).S18.ehl_r = f_normalizer(RearFS_data(e).S18.ehl_r,101,'linear');
    
    RearFS_data(e).S19.gaslat_r = f_normalizer(RearFS_data(e).S19.gaslat_r,101,'linear');
    RearFS_data(e).S19.gasmed_r = f_normalizer(RearFS_data(e).S19.gasmed_r,101,'linear');
    RearFS_data(e).S19.soleus_r = f_normalizer(RearFS_data(e).S19.soleus_r,101,'linear');
    RearFS_data(e).S19.tibant_r = f_normalizer(RearFS_data(e).S19.tibant_r,101,'linear');
    RearFS_data(e).S19.tibpost_r = f_normalizer(RearFS_data(e).S19.tibpost_r,101,'linear');
    RearFS_data(e).S19.edl_r = f_normalizer(RearFS_data(e).S19.edl_r,101,'linear');
    RearFS_data(e).S19.fdl_r = f_normalizer(RearFS_data(e).S19.fdl_r,101,'linear');
    RearFS_data(e).S19.fhl_r = f_normalizer(RearFS_data(e).S19.fhl_r,101,'linear');
    RearFS_data(e).S19.perbrev_r = f_normalizer(RearFS_data(e).S19.perbrev_r,101,'linear');
    RearFS_data(e).S19.perlong_r = f_normalizer(RearFS_data(e).S19.perlong_r,101,'linear');
    RearFS_data(e).S19.ehl_r = f_normalizer(RearFS_data(e).S19.ehl_r,101,'linear');
    
    NatFS_data(e).S01.gaslat_r = f_normalizer(NatFS_data(e).S01.gaslat_r,101,'linear');
    NatFS_data(e).S01.gasmed_r = f_normalizer(NatFS_data(e).S01.gasmed_r,101,'linear');
    NatFS_data(e).S01.soleus_r = f_normalizer(NatFS_data(e).S01.soleus_r,101,'linear');
    NatFS_data(e).S01.tibant_r = f_normalizer(NatFS_data(e).S01.tibant_r,101,'linear');
    NatFS_data(e).S01.tibpost_r = f_normalizer(NatFS_data(e).S01.tibpost_r,101,'linear');
    NatFS_data(e).S01.edl_r = f_normalizer(NatFS_data(e).S01.edl_r,101,'linear');
    NatFS_data(e).S01.fdl_r = f_normalizer(NatFS_data(e).S01.fdl_r,101,'linear');
    NatFS_data(e).S01.fhl_r = f_normalizer(NatFS_data(e).S01.fhl_r,101,'linear');
    NatFS_data(e).S01.perbrev_r = f_normalizer(NatFS_data(e).S01.perbrev_r,101,'linear');
    NatFS_data(e).S01.perlong_r = f_normalizer(NatFS_data(e).S01.perlong_r,101,'linear');
    NatFS_data(e).S01.ehl_r = f_normalizer(NatFS_data(e).S01.ehl_r,101,'linear');
   
    NatFS_data(e).S02.gaslat_r = f_normalizer(NatFS_data(e).S02.gaslat_r,101,'linear');
    NatFS_data(e).S02.gasmed_r = f_normalizer(NatFS_data(e).S02.gasmed_r,101,'linear');
    NatFS_data(e).S02.soleus_r = f_normalizer(NatFS_data(e).S02.soleus_r,101,'linear');
    NatFS_data(e).S02.tibant_r = f_normalizer(NatFS_data(e).S02.tibant_r,101,'linear');
    NatFS_data(e).S02.tibpost_r = f_normalizer(NatFS_data(e).S02.tibpost_r,101,'linear');
    NatFS_data(e).S02.edl_r = f_normalizer(NatFS_data(e).S02.edl_r,101,'linear');
    NatFS_data(e).S02.fdl_r = f_normalizer(NatFS_data(e).S02.fdl_r,101,'linear');
    NatFS_data(e).S02.fhl_r = f_normalizer(NatFS_data(e).S02.fhl_r,101,'linear');
    NatFS_data(e).S02.perbrev_r = f_normalizer(NatFS_data(e).S02.perbrev_r,101,'linear');
    NatFS_data(e).S02.perlong_r = f_normalizer(NatFS_data(e).S02.perlong_r,101,'linear');
    NatFS_data(e).S02.ehl_r = f_normalizer(NatFS_data(e).S02.ehl_r,101,'linear');
    
    NatFS_data(e).S03.gaslat_r = f_normalizer(NatFS_data(e).S03.gaslat_r,101,'linear');
    NatFS_data(e).S03.gasmed_r = f_normalizer(NatFS_data(e).S03.gasmed_r,101,'linear');
    NatFS_data(e).S03.soleus_r = f_normalizer(NatFS_data(e).S03.soleus_r,101,'linear');
    NatFS_data(e).S03.tibant_r = f_normalizer(NatFS_data(e).S03.tibant_r,101,'linear');
    NatFS_data(e).S03.tibpost_r = f_normalizer(NatFS_data(e).S03.tibpost_r,101,'linear');
    NatFS_data(e).S03.edl_r = f_normalizer(NatFS_data(e).S03.edl_r,101,'linear');
    NatFS_data(e).S03.fdl_r = f_normalizer(NatFS_data(e).S03.fdl_r,101,'linear');
    NatFS_data(e).S03.fhl_r = f_normalizer(NatFS_data(e).S03.fhl_r,101,'linear');
    NatFS_data(e).S03.perbrev_r = f_normalizer(NatFS_data(e).S03.perbrev_r,101,'linear');
    NatFS_data(e).S03.perlong_r = f_normalizer(NatFS_data(e).S03.perlong_r,101,'linear');
    NatFS_data(e).S03.ehl_r = f_normalizer(NatFS_data(e).S03.ehl_r,101,'linear');

    NatFS_data(e).S04.gaslat_r = f_normalizer(NatFS_data(e).S04.gaslat_r,101,'linear');
    NatFS_data(e).S04.gasmed_r = f_normalizer(NatFS_data(e).S04.gasmed_r,101,'linear');
    NatFS_data(e).S04.soleus_r = f_normalizer(NatFS_data(e).S04.soleus_r,101,'linear');
    NatFS_data(e).S04.tibant_r = f_normalizer(NatFS_data(e).S04.tibant_r,101,'linear');
    NatFS_data(e).S04.tibpost_r = f_normalizer(NatFS_data(e).S04.tibpost_r,101,'linear');
    NatFS_data(e).S04.edl_r = f_normalizer(NatFS_data(e).S04.edl_r,101,'linear');
    NatFS_data(e).S04.fdl_r = f_normalizer(NatFS_data(e).S04.fdl_r,101,'linear');
    NatFS_data(e).S04.fhl_r = f_normalizer(NatFS_data(e).S04.fhl_r,101,'linear');
    NatFS_data(e).S04.perbrev_r = f_normalizer(NatFS_data(e).S04.perbrev_r,101,'linear');
    NatFS_data(e).S04.perlong_r = f_normalizer(NatFS_data(e).S04.perlong_r,101,'linear');
    NatFS_data(e).S04.ehl_r = f_normalizer(NatFS_data(e).S04.ehl_r,101,'linear');
    
    NatFS_data(e).S05.gaslat_r = f_normalizer(NatFS_data(e).S05.gaslat_r,101,'linear');
    NatFS_data(e).S05.gasmed_r = f_normalizer(NatFS_data(e).S05.gasmed_r,101,'linear');
    NatFS_data(e).S05.soleus_r = f_normalizer(NatFS_data(e).S05.soleus_r,101,'linear');
    NatFS_data(e).S05.tibant_r = f_normalizer(NatFS_data(e).S05.tibant_r,101,'linear');
    NatFS_data(e).S05.tibpost_r = f_normalizer(NatFS_data(e).S05.tibpost_r,101,'linear');
    NatFS_data(e).S05.edl_r = f_normalizer(NatFS_data(e).S05.edl_r,101,'linear');
    NatFS_data(e).S05.fdl_r = f_normalizer(NatFS_data(e).S05.fdl_r,101,'linear');
    NatFS_data(e).S05.fhl_r = f_normalizer(NatFS_data(e).S05.fhl_r,101,'linear');
    NatFS_data(e).S05.perbrev_r = f_normalizer(NatFS_data(e).S05.perbrev_r,101,'linear');
    NatFS_data(e).S05.perlong_r = f_normalizer(NatFS_data(e).S05.perlong_r,101,'linear');
    NatFS_data(e).S05.ehl_r = f_normalizer(NatFS_data(e).S05.ehl_r,101,'linear');
    
    NatFS_data(e).S06.gaslat_r = f_normalizer(NatFS_data(e).S06.gaslat_r,101,'linear');
    NatFS_data(e).S06.gasmed_r = f_normalizer(NatFS_data(e).S06.gasmed_r,101,'linear');
    NatFS_data(e).S06.soleus_r = f_normalizer(NatFS_data(e).S06.soleus_r,101,'linear');
    NatFS_data(e).S06.tibant_r = f_normalizer(NatFS_data(e).S06.tibant_r,101,'linear');
    NatFS_data(e).S06.tibpost_r = f_normalizer(NatFS_data(e).S06.tibpost_r,101,'linear');
    NatFS_data(e).S06.edl_r = f_normalizer(NatFS_data(e).S06.edl_r,101,'linear');
    NatFS_data(e).S06.fdl_r = f_normalizer(NatFS_data(e).S06.fdl_r,101,'linear');
    NatFS_data(e).S06.fhl_r = f_normalizer(NatFS_data(e).S06.fhl_r,101,'linear');
    NatFS_data(e).S06.perbrev_r = f_normalizer(NatFS_data(e).S06.perbrev_r,101,'linear');
    NatFS_data(e).S06.perlong_r = f_normalizer(NatFS_data(e).S06.perlong_r,101,'linear');
    NatFS_data(e).S06.ehl_r = f_normalizer(NatFS_data(e).S06.ehl_r,101,'linear');
    
    NatFS_data(e).S07.gaslat_r = f_normalizer(NatFS_data(e).S07.gaslat_r,101,'linear');
    NatFS_data(e).S07.gasmed_r = f_normalizer(NatFS_data(e).S07.gasmed_r,101,'linear');
    NatFS_data(e).S07.soleus_r = f_normalizer(NatFS_data(e).S07.soleus_r,101,'linear');
    NatFS_data(e).S07.tibant_r = f_normalizer(NatFS_data(e).S07.tibant_r,101,'linear');
    NatFS_data(e).S07.tibpost_r = f_normalizer(NatFS_data(e).S07.tibpost_r,101,'linear');
    NatFS_data(e).S07.edl_r = f_normalizer(NatFS_data(e).S07.edl_r,101,'linear');
    NatFS_data(e).S07.fdl_r = f_normalizer(NatFS_data(e).S07.fdl_r,101,'linear');
    NatFS_data(e).S07.fhl_r = f_normalizer(NatFS_data(e).S07.fhl_r,101,'linear');
    NatFS_data(e).S07.perbrev_r = f_normalizer(NatFS_data(e).S07.perbrev_r,101,'linear');
    NatFS_data(e).S07.perlong_r = f_normalizer(NatFS_data(e).S07.perlong_r,101,'linear');
    NatFS_data(e).S07.ehl_r = f_normalizer(NatFS_data(e).S07.ehl_r,101,'linear');
    
    NatFS_data(e).S08.gaslat_r = f_normalizer(NatFS_data(e).S08.gaslat_r,101,'linear');
    NatFS_data(e).S08.gasmed_r = f_normalizer(NatFS_data(e).S08.gasmed_r,101,'linear');
    NatFS_data(e).S08.soleus_r = f_normalizer(NatFS_data(e).S08.soleus_r,101,'linear');
    NatFS_data(e).S08.tibant_r = f_normalizer(NatFS_data(e).S08.tibant_r,101,'linear');
    NatFS_data(e).S08.tibpost_r = f_normalizer(NatFS_data(e).S08.tibpost_r,101,'linear');
    NatFS_data(e).S08.edl_r = f_normalizer(NatFS_data(e).S08.edl_r,101,'linear');
    NatFS_data(e).S08.fdl_r = f_normalizer(NatFS_data(e).S08.fdl_r,101,'linear');
    NatFS_data(e).S08.fhl_r = f_normalizer(NatFS_data(e).S08.fhl_r,101,'linear');
    NatFS_data(e).S08.perbrev_r = f_normalizer(NatFS_data(e).S08.perbrev_r,101,'linear');
    NatFS_data(e).S08.perlong_r = f_normalizer(NatFS_data(e).S08.perlong_r,101,'linear');
    NatFS_data(e).S08.ehl_r = f_normalizer(NatFS_data(e).S08.ehl_r,101,'linear');
    
    NatFS_data(e).S09.gaslat_r = f_normalizer(NatFS_data(e).S09.gaslat_r,101,'linear');
    NatFS_data(e).S09.gasmed_r = f_normalizer(NatFS_data(e).S09.gasmed_r,101,'linear');
    NatFS_data(e).S09.soleus_r = f_normalizer(NatFS_data(e).S09.soleus_r,101,'linear');
    NatFS_data(e).S09.tibant_r = f_normalizer(NatFS_data(e).S09.tibant_r,101,'linear');
    NatFS_data(e).S09.tibpost_r = f_normalizer(NatFS_data(e).S09.tibpost_r,101,'linear');
    NatFS_data(e).S09.edl_r = f_normalizer(NatFS_data(e).S09.edl_r,101,'linear');
    NatFS_data(e).S09.fdl_r = f_normalizer(NatFS_data(e).S09.fdl_r,101,'linear');
    NatFS_data(e).S09.fhl_r = f_normalizer(NatFS_data(e).S09.fhl_r,101,'linear');
    NatFS_data(e).S09.perbrev_r = f_normalizer(NatFS_data(e).S09.perbrev_r,101,'linear');
    NatFS_data(e).S09.perlong_r = f_normalizer(NatFS_data(e).S09.perlong_r,101,'linear');
    NatFS_data(e).S09.ehl_r = f_normalizer(NatFS_data(e).S09.ehl_r,101,'linear');
    
    NatFS_data(e).S10.gaslat_r = f_normalizer(NatFS_data(e).S10.gaslat_r,101,'linear');
    NatFS_data(e).S10.gasmed_r = f_normalizer(NatFS_data(e).S10.gasmed_r,101,'linear');
    NatFS_data(e).S10.soleus_r = f_normalizer(NatFS_data(e).S10.soleus_r,101,'linear');
    NatFS_data(e).S10.tibant_r = f_normalizer(NatFS_data(e).S10.tibant_r,101,'linear');
    NatFS_data(e).S10.tibpost_r = f_normalizer(NatFS_data(e).S10.tibpost_r,101,'linear');
    NatFS_data(e).S10.edl_r = f_normalizer(NatFS_data(e).S10.edl_r,101,'linear');
    NatFS_data(e).S10.fdl_r = f_normalizer(NatFS_data(e).S10.fdl_r,101,'linear');
    NatFS_data(e).S10.fhl_r = f_normalizer(NatFS_data(e).S10.fhl_r,101,'linear');
    NatFS_data(e).S10.perbrev_r = f_normalizer(NatFS_data(e).S10.perbrev_r,101,'linear');
    NatFS_data(e).S10.perlong_r = f_normalizer(NatFS_data(e).S10.perlong_r,101,'linear');
    NatFS_data(e).S10.ehl_r = f_normalizer(NatFS_data(e).S10.ehl_r,101,'linear');
    
    NatFS_data(e).S11.gaslat_r = f_normalizer(NatFS_data(e).S11.gaslat_r,101,'linear');
    NatFS_data(e).S11.gasmed_r = f_normalizer(NatFS_data(e).S11.gasmed_r,101,'linear');
    NatFS_data(e).S11.soleus_r = f_normalizer(NatFS_data(e).S11.soleus_r,101,'linear');
    NatFS_data(e).S11.tibant_r = f_normalizer(NatFS_data(e).S11.tibant_r,101,'linear');
    NatFS_data(e).S11.tibpost_r = f_normalizer(NatFS_data(e).S11.tibpost_r,101,'linear');
    NatFS_data(e).S11.edl_r = f_normalizer(NatFS_data(e).S11.edl_r,101,'linear');
    NatFS_data(e).S11.fdl_r = f_normalizer(NatFS_data(e).S11.fdl_r,101,'linear');
    NatFS_data(e).S11.fhl_r = f_normalizer(NatFS_data(e).S11.fhl_r,101,'linear');
    NatFS_data(e).S11.perbrev_r = f_normalizer(NatFS_data(e).S11.perbrev_r,101,'linear');
    NatFS_data(e).S11.perlong_r = f_normalizer(NatFS_data(e).S11.perlong_r,101,'linear');
    NatFS_data(e).S11.ehl_r = f_normalizer(NatFS_data(e).S11.ehl_r,101,'linear');
    
    NatFS_data(e).S12.gaslat_r = f_normalizer(NatFS_data(e).S12.gaslat_r,101,'linear');
    NatFS_data(e).S12.gasmed_r = f_normalizer(NatFS_data(e).S12.gasmed_r,101,'linear');
    NatFS_data(e).S12.soleus_r = f_normalizer(NatFS_data(e).S12.soleus_r,101,'linear');
    NatFS_data(e).S12.tibant_r = f_normalizer(NatFS_data(e).S12.tibant_r,101,'linear');
    NatFS_data(e).S12.tibpost_r = f_normalizer(NatFS_data(e).S12.tibpost_r,101,'linear');
    NatFS_data(e).S12.edl_r = f_normalizer(NatFS_data(e).S12.edl_r,101,'linear');
    NatFS_data(e).S12.fdl_r = f_normalizer(NatFS_data(e).S12.fdl_r,101,'linear');
    NatFS_data(e).S12.fhl_r = f_normalizer(NatFS_data(e).S12.fhl_r,101,'linear');
    NatFS_data(e).S12.perbrev_r = f_normalizer(NatFS_data(e).S12.perbrev_r,101,'linear');
    NatFS_data(e).S12.perlong_r = f_normalizer(NatFS_data(e).S12.perlong_r,101,'linear');
    NatFS_data(e).S12.ehl_r = f_normalizer(NatFS_data(e).S12.ehl_r,101,'linear');
    
    NatFS_data(e).S13.gaslat_r = f_normalizer(NatFS_data(e).S13.gaslat_r,101,'linear');
    NatFS_data(e).S13.gasmed_r = f_normalizer(NatFS_data(e).S13.gasmed_r,101,'linear');
    NatFS_data(e).S13.soleus_r = f_normalizer(NatFS_data(e).S13.soleus_r,101,'linear');
    NatFS_data(e).S13.tibant_r = f_normalizer(NatFS_data(e).S13.tibant_r,101,'linear');
    NatFS_data(e).S13.tibpost_r = f_normalizer(NatFS_data(e).S13.tibpost_r,101,'linear');
    NatFS_data(e).S13.edl_r = f_normalizer(NatFS_data(e).S13.edl_r,101,'linear');
    NatFS_data(e).S13.fdl_r = f_normalizer(NatFS_data(e).S13.fdl_r,101,'linear');
    NatFS_data(e).S13.fhl_r = f_normalizer(NatFS_data(e).S13.fhl_r,101,'linear');
    NatFS_data(e).S13.perbrev_r = f_normalizer(NatFS_data(e).S13.perbrev_r,101,'linear');
    NatFS_data(e).S13.perlong_r = f_normalizer(NatFS_data(e).S13.perlong_r,101,'linear');
    NatFS_data(e).S13.ehl_r = f_normalizer(NatFS_data(e).S13.ehl_r,101,'linear');
    
    NatFS_data(e).S14.gaslat_r = f_normalizer(NatFS_data(e).S14.gaslat_r,101,'linear');
    NatFS_data(e).S14.gasmed_r = f_normalizer(NatFS_data(e).S14.gasmed_r,101,'linear');
    NatFS_data(e).S14.soleus_r = f_normalizer(NatFS_data(e).S14.soleus_r,101,'linear');
    NatFS_data(e).S14.tibant_r = f_normalizer(NatFS_data(e).S14.tibant_r,101,'linear');
    NatFS_data(e).S14.tibpost_r = f_normalizer(NatFS_data(e).S14.tibpost_r,101,'linear');
    NatFS_data(e).S14.edl_r = f_normalizer(NatFS_data(e).S14.edl_r,101,'linear');
    NatFS_data(e).S14.fdl_r = f_normalizer(NatFS_data(e).S14.fdl_r,101,'linear');
    NatFS_data(e).S14.fhl_r = f_normalizer(NatFS_data(e).S14.fhl_r,101,'linear');
    NatFS_data(e).S14.perbrev_r = f_normalizer(NatFS_data(e).S14.perbrev_r,101,'linear');
    NatFS_data(e).S14.perlong_r = f_normalizer(NatFS_data(e).S14.perlong_r,101,'linear');
    NatFS_data(e).S14.ehl_r = f_normalizer(NatFS_data(e).S14.ehl_r,101,'linear');
    
    NatFS_data(e).S15.gaslat_r = f_normalizer(NatFS_data(e).S15.gaslat_r,101,'linear');
    NatFS_data(e).S15.gasmed_r = f_normalizer(NatFS_data(e).S15.gasmed_r,101,'linear');
    NatFS_data(e).S15.soleus_r = f_normalizer(NatFS_data(e).S15.soleus_r,101,'linear');
    NatFS_data(e).S15.tibant_r = f_normalizer(NatFS_data(e).S15.tibant_r,101,'linear');
    NatFS_data(e).S15.tibpost_r = f_normalizer(NatFS_data(e).S15.tibpost_r,101,'linear');
    NatFS_data(e).S15.edl_r = f_normalizer(NatFS_data(e).S15.edl_r,101,'linear');
    NatFS_data(e).S15.fdl_r = f_normalizer(NatFS_data(e).S15.fdl_r,101,'linear');
    NatFS_data(e).S15.fhl_r = f_normalizer(NatFS_data(e).S15.fhl_r,101,'linear');
    NatFS_data(e).S15.perbrev_r = f_normalizer(NatFS_data(e).S15.perbrev_r,101,'linear');
    NatFS_data(e).S15.perlong_r = f_normalizer(NatFS_data(e).S15.perlong_r,101,'linear');
    NatFS_data(e).S15.ehl_r = f_normalizer(NatFS_data(e).S15.ehl_r,101,'linear');
    
    NatFS_data(e).S16.gaslat_r = f_normalizer(NatFS_data(e).S16.gaslat_r,101,'linear');
    NatFS_data(e).S16.gasmed_r = f_normalizer(NatFS_data(e).S16.gasmed_r,101,'linear');
    NatFS_data(e).S16.soleus_r = f_normalizer(NatFS_data(e).S16.soleus_r,101,'linear');
    NatFS_data(e).S16.tibant_r = f_normalizer(NatFS_data(e).S16.tibant_r,101,'linear');
    NatFS_data(e).S16.tibpost_r = f_normalizer(NatFS_data(e).S16.tibpost_r,101,'linear');
    NatFS_data(e).S16.edl_r = f_normalizer(NatFS_data(e).S16.edl_r,101,'linear');
    NatFS_data(e).S16.fdl_r = f_normalizer(NatFS_data(e).S16.fdl_r,101,'linear');
    NatFS_data(e).S16.fhl_r = f_normalizer(NatFS_data(e).S16.fhl_r,101,'linear');
    NatFS_data(e).S16.perbrev_r = f_normalizer(NatFS_data(e).S16.perbrev_r,101,'linear');
    NatFS_data(e).S16.perlong_r = f_normalizer(NatFS_data(e).S16.perlong_r,101,'linear');
    NatFS_data(e).S16.ehl_r = f_normalizer(NatFS_data(e).S16.ehl_r,101,'linear');
    
    NatFS_data(e).S17.gaslat_r = f_normalizer(NatFS_data(e).S17.gaslat_r,101,'linear');
    NatFS_data(e).S17.gasmed_r = f_normalizer(NatFS_data(e).S17.gasmed_r,101,'linear');
    NatFS_data(e).S17.soleus_r = f_normalizer(NatFS_data(e).S17.soleus_r,101,'linear');
    NatFS_data(e).S17.tibant_r = f_normalizer(NatFS_data(e).S17.tibant_r,101,'linear');
    NatFS_data(e).S17.tibpost_r = f_normalizer(NatFS_data(e).S17.tibpost_r,101,'linear');
    NatFS_data(e).S17.edl_r = f_normalizer(NatFS_data(e).S17.edl_r,101,'linear');
    NatFS_data(e).S17.fdl_r = f_normalizer(NatFS_data(e).S17.fdl_r,101,'linear');
    NatFS_data(e).S17.fhl_r = f_normalizer(NatFS_data(e).S17.fhl_r,101,'linear');
    NatFS_data(e).S17.perbrev_r = f_normalizer(NatFS_data(e).S17.perbrev_r,101,'linear');
    NatFS_data(e).S17.perlong_r = f_normalizer(NatFS_data(e).S17.perlong_r,101,'linear');
    NatFS_data(e).S17.ehl_r = f_normalizer(NatFS_data(e).S17.ehl_r,101,'linear');
    
    NatFS_data(e).S18.gaslat_r = f_normalizer(NatFS_data(e).S18.gaslat_r,101,'linear');
    NatFS_data(e).S18.gasmed_r = f_normalizer(NatFS_data(e).S18.gasmed_r,101,'linear');
    NatFS_data(e).S18.soleus_r = f_normalizer(NatFS_data(e).S18.soleus_r,101,'linear');
    NatFS_data(e).S18.tibant_r = f_normalizer(NatFS_data(e).S18.tibant_r,101,'linear');
    NatFS_data(e).S18.tibpost_r = f_normalizer(NatFS_data(e).S18.tibpost_r,101,'linear');
    NatFS_data(e).S18.edl_r = f_normalizer(NatFS_data(e).S18.edl_r,101,'linear');
    NatFS_data(e).S18.fdl_r = f_normalizer(NatFS_data(e).S18.fdl_r,101,'linear');
    NatFS_data(e).S18.fhl_r = f_normalizer(NatFS_data(e).S18.fhl_r,101,'linear');
    NatFS_data(e).S18.perbrev_r = f_normalizer(NatFS_data(e).S18.perbrev_r,101,'linear');
    NatFS_data(e).S18.perlong_r = f_normalizer(NatFS_data(e).S18.perlong_r,101,'linear');
    NatFS_data(e).S18.ehl_r = f_normalizer(NatFS_data(e).S18.ehl_r,101,'linear');
    
    NatFS_data(e).S19.gaslat_r = f_normalizer(NatFS_data(e).S19.gaslat_r,101,'linear');
    NatFS_data(e).S19.gasmed_r = f_normalizer(NatFS_data(e).S19.gasmed_r,101,'linear');
    NatFS_data(e).S19.soleus_r = f_normalizer(NatFS_data(e).S19.soleus_r,101,'linear');
    NatFS_data(e).S19.tibant_r = f_normalizer(NatFS_data(e).S19.tibant_r,101,'linear');
    NatFS_data(e).S19.tibpost_r = f_normalizer(NatFS_data(e).S19.tibpost_r,101,'linear');
    NatFS_data(e).S19.edl_r = f_normalizer(NatFS_data(e).S19.edl_r,101,'linear');
    NatFS_data(e).S19.fdl_r = f_normalizer(NatFS_data(e).S19.fdl_r,101,'linear');
    NatFS_data(e).S19.fhl_r = f_normalizer(NatFS_data(e).S19.fhl_r,101,'linear');
    NatFS_data(e).S19.perbrev_r = f_normalizer(NatFS_data(e).S19.perbrev_r,101,'linear');
    NatFS_data(e).S19.perlong_r = f_normalizer(NatFS_data(e).S19.perlong_r,101,'linear');
    NatFS_data(e).S19.ehl_r = f_normalizer(NatFS_data(e).S19.ehl_r,101,'linear');
    
end
clear MEAN_ForeFS_data

%% Mean Forefoot strike
MEAN_ForeFS_data(1).S01.gaslat_r = mean([ForeFS_data(1).S01.gaslat_r ForeFS_data(2).S01.gaslat_r ForeFS_data(3).S01.gaslat_r], 2);
MEAN_ForeFS_data(1).S01.gasmed_r = mean([ForeFS_data(1).S01.gasmed_r ForeFS_data(2).S01.gasmed_r ForeFS_data(3).S01.gasmed_r], 2);
MEAN_ForeFS_data(1).S01.soleus_r = mean([ForeFS_data(1).S01.soleus_r ForeFS_data(2).S01.soleus_r ForeFS_data(3).S01.soleus_r], 2);
MEAN_ForeFS_data(1).S01.tibant_r = mean([ForeFS_data(1).S01.tibant_r ForeFS_data(2).S01.tibant_r ForeFS_data(3).S01.tibant_r], 2);
MEAN_ForeFS_data(1).S01.tibpost_r = mean([ForeFS_data(1).S01.tibpost_r ForeFS_data(2).S01.tibpost_r ForeFS_data(3).S01.tibpost_r], 2);
MEAN_ForeFS_data(1).S01.edl_r = mean([ForeFS_data(1).S01.edl_r ForeFS_data(2).S01.edl_r ForeFS_data(3).S01.edl_r], 2);
MEAN_ForeFS_data(1).S01.fdl_r = mean([ForeFS_data(1).S01.fdl_r ForeFS_data(2).S01.fdl_r ForeFS_data(3).S01.fdl_r], 2);
MEAN_ForeFS_data(1).S01.fhl_r = mean([ForeFS_data(1).S01.fhl_r ForeFS_data(2).S01.fhl_r ForeFS_data(3).S01.fhl_r], 2);
MEAN_ForeFS_data(1).S01.perbrev_r = mean([ForeFS_data(1).S01.perbrev_r ForeFS_data(2).S01.perbrev_r ForeFS_data(3).S01.perbrev_r], 2);
MEAN_ForeFS_data(1).S01.perlong_r = mean([ForeFS_data(1).S01.perlong_r ForeFS_data(2).S01.perlong_r ForeFS_data(3).S01.perlong_r], 2);
MEAN_ForeFS_data(1).S01.ehl_r = mean([ForeFS_data(1).S01.ehl_r ForeFS_data(2).S01.ehl_r ForeFS_data(3).S01.ehl_r], 2);

MEAN_ForeFS_data(1).S02.gaslat_r = mean([ForeFS_data(1).S02.gaslat_r ForeFS_data(2).S02.gaslat_r ForeFS_data(3).S02.gaslat_r], 2);
MEAN_ForeFS_data(1).S02.gasmed_r = mean([ForeFS_data(1).S02.gasmed_r ForeFS_data(2).S02.gasmed_r ForeFS_data(3).S02.gasmed_r], 2);
MEAN_ForeFS_data(1).S02.soleus_r = mean([ForeFS_data(1).S02.soleus_r ForeFS_data(2).S02.soleus_r ForeFS_data(3).S02.soleus_r], 2);
MEAN_ForeFS_data(1).S02.tibant_r = mean([ForeFS_data(1).S02.tibant_r ForeFS_data(2).S02.tibant_r ForeFS_data(3).S02.tibant_r], 2);
MEAN_ForeFS_data(1).S02.tibpost_r = mean([ForeFS_data(1).S02.tibpost_r ForeFS_data(2).S02.tibpost_r ForeFS_data(3).S02.tibpost_r], 2);
MEAN_ForeFS_data(1).S02.edl_r = mean([ForeFS_data(1).S02.edl_r ForeFS_data(2).S02.edl_r ForeFS_data(3).S02.edl_r], 2);
MEAN_ForeFS_data(1).S02.fdl_r = mean([ForeFS_data(1).S02.fdl_r ForeFS_data(2).S02.fdl_r ForeFS_data(3).S02.fdl_r], 2);
MEAN_ForeFS_data(1).S02.fhl_r = mean([ForeFS_data(1).S02.fhl_r ForeFS_data(2).S02.fhl_r ForeFS_data(3).S02.fhl_r], 2);
MEAN_ForeFS_data(1).S02.perbrev_r = mean([ForeFS_data(1).S02.perbrev_r ForeFS_data(2).S02.perbrev_r ForeFS_data(3).S02.perbrev_r], 2);
MEAN_ForeFS_data(1).S02.perlong_r = mean([ForeFS_data(1).S02.perlong_r ForeFS_data(2).S02.perlong_r ForeFS_data(3).S02.perlong_r], 2);
MEAN_ForeFS_data(1).S02.ehl_r = mean([ForeFS_data(1).S02.ehl_r ForeFS_data(2).S02.ehl_r ForeFS_data(3).S02.ehl_r], 2);

MEAN_ForeFS_data(1).S03.gaslat_r = mean([ForeFS_data(1).S03.gaslat_r ForeFS_data(2).S03.gaslat_r ForeFS_data(3).S03.gaslat_r], 2);
MEAN_ForeFS_data(1).S03.gasmed_r = mean([ForeFS_data(1).S03.gasmed_r ForeFS_data(2).S03.gasmed_r ForeFS_data(3).S03.gasmed_r], 2);
MEAN_ForeFS_data(1).S03.soleus_r = mean([ForeFS_data(1).S03.soleus_r ForeFS_data(2).S03.soleus_r ForeFS_data(3).S03.soleus_r], 2);
MEAN_ForeFS_data(1).S03.tibant_r = mean([ForeFS_data(1).S03.tibant_r ForeFS_data(2).S03.tibant_r ForeFS_data(3).S03.tibant_r], 2);
MEAN_ForeFS_data(1).S03.tibpost_r = mean([ForeFS_data(1).S03.tibpost_r ForeFS_data(2).S03.tibpost_r ForeFS_data(3).S03.tibpost_r], 2);
MEAN_ForeFS_data(1).S03.edl_r = mean([ForeFS_data(1).S03.edl_r ForeFS_data(2).S03.edl_r ForeFS_data(3).S03.edl_r], 2);
MEAN_ForeFS_data(1).S03.fdl_r = mean([ForeFS_data(1).S03.fdl_r ForeFS_data(2).S03.fdl_r ForeFS_data(3).S03.fdl_r], 2);
MEAN_ForeFS_data(1).S03.fhl_r = mean([ForeFS_data(1).S03.fhl_r ForeFS_data(2).S03.fhl_r ForeFS_data(3).S03.fhl_r], 2);
MEAN_ForeFS_data(1).S03.perbrev_r = mean([ForeFS_data(1).S03.perbrev_r ForeFS_data(2).S03.perbrev_r ForeFS_data(3).S03.perbrev_r], 2);
MEAN_ForeFS_data(1).S03.perlong_r = mean([ForeFS_data(1).S03.perlong_r ForeFS_data(2).S03.perlong_r ForeFS_data(3).S03.perlong_r], 2);
MEAN_ForeFS_data(1).S03.ehl_r = mean([ForeFS_data(1).S03.ehl_r ForeFS_data(2).S03.ehl_r ForeFS_data(3).S03.ehl_r], 2);

MEAN_ForeFS_data(1).S04.gaslat_r = mean([ForeFS_data(1).S04.gaslat_r ForeFS_data(2).S04.gaslat_r ForeFS_data(3).S04.gaslat_r], 2);
MEAN_ForeFS_data(1).S04.gasmed_r = mean([ForeFS_data(1).S04.gasmed_r ForeFS_data(2).S04.gasmed_r ForeFS_data(3).S04.gasmed_r], 2);
MEAN_ForeFS_data(1).S04.soleus_r = mean([ForeFS_data(1).S04.soleus_r ForeFS_data(2).S04.soleus_r ForeFS_data(3).S04.soleus_r], 2);
MEAN_ForeFS_data(1).S04.tibant_r = mean([ForeFS_data(1).S04.tibant_r ForeFS_data(2).S04.tibant_r ForeFS_data(3).S04.tibant_r], 2);
MEAN_ForeFS_data(1).S04.tibpost_r = mean([ForeFS_data(1).S04.tibpost_r ForeFS_data(2).S04.tibpost_r ForeFS_data(3).S04.tibpost_r], 2);
MEAN_ForeFS_data(1).S04.edl_r = mean([ForeFS_data(1).S04.edl_r ForeFS_data(2).S04.edl_r ForeFS_data(3).S04.edl_r], 2);
MEAN_ForeFS_data(1).S04.fdl_r = mean([ForeFS_data(1).S04.fdl_r ForeFS_data(2).S04.fdl_r ForeFS_data(3).S04.fdl_r], 2);
MEAN_ForeFS_data(1).S04.fhl_r = mean([ForeFS_data(1).S04.fhl_r ForeFS_data(2).S04.fhl_r ForeFS_data(3).S04.fhl_r], 2);
MEAN_ForeFS_data(1).S04.perbrev_r = mean([ForeFS_data(1).S04.perbrev_r ForeFS_data(2).S04.perbrev_r ForeFS_data(3).S04.perbrev_r], 2);
MEAN_ForeFS_data(1).S04.perlong_r = mean([ForeFS_data(1).S04.perlong_r ForeFS_data(2).S04.perlong_r ForeFS_data(3).S04.perlong_r], 2);
MEAN_ForeFS_data(1).S04.ehl_r = mean([ForeFS_data(1).S04.ehl_r ForeFS_data(2).S04.ehl_r ForeFS_data(3).S04.ehl_r], 2);

MEAN_ForeFS_data(1).S05.gaslat_r = mean([ForeFS_data(1).S05.gaslat_r ForeFS_data(2).S05.gaslat_r ForeFS_data(3).S05.gaslat_r], 2);
MEAN_ForeFS_data(1).S05.gasmed_r = mean([ForeFS_data(1).S05.gasmed_r ForeFS_data(2).S05.gasmed_r ForeFS_data(3).S05.gasmed_r], 2);
MEAN_ForeFS_data(1).S05.soleus_r = mean([ForeFS_data(1).S05.soleus_r ForeFS_data(2).S05.soleus_r ForeFS_data(3).S05.soleus_r], 2);
MEAN_ForeFS_data(1).S05.tibant_r = mean([ForeFS_data(1).S05.tibant_r ForeFS_data(2).S05.tibant_r ForeFS_data(3).S05.tibant_r], 2);
MEAN_ForeFS_data(1).S05.tibpost_r = mean([ForeFS_data(1).S05.tibpost_r ForeFS_data(2).S05.tibpost_r ForeFS_data(3).S05.tibpost_r], 2);
MEAN_ForeFS_data(1).S05.edl_r = mean([ForeFS_data(1).S05.edl_r ForeFS_data(2).S05.edl_r ForeFS_data(3).S05.edl_r], 2);
MEAN_ForeFS_data(1).S05.fdl_r = mean([ForeFS_data(1).S05.fdl_r ForeFS_data(2).S05.fdl_r ForeFS_data(3).S05.fdl_r], 2);
MEAN_ForeFS_data(1).S05.fhl_r = mean([ForeFS_data(1).S05.fhl_r ForeFS_data(2).S05.fhl_r ForeFS_data(3).S05.fhl_r], 2);
MEAN_ForeFS_data(1).S05.perbrev_r = mean([ForeFS_data(1).S05.perbrev_r ForeFS_data(2).S05.perbrev_r ForeFS_data(3).S05.perbrev_r], 2);
MEAN_ForeFS_data(1).S05.perlong_r = mean([ForeFS_data(1).S05.perlong_r ForeFS_data(2).S05.perlong_r ForeFS_data(3).S05.perlong_r], 2);
MEAN_ForeFS_data(1).S05.ehl_r = mean([ForeFS_data(1).S05.ehl_r ForeFS_data(2).S05.ehl_r ForeFS_data(3).S05.ehl_r], 2);

MEAN_ForeFS_data(1).S06.gaslat_r = mean([ForeFS_data(1).S06.gaslat_r ForeFS_data(2).S06.gaslat_r ForeFS_data(3).S06.gaslat_r], 2);
MEAN_ForeFS_data(1).S06.gasmed_r = mean([ForeFS_data(1).S06.gasmed_r ForeFS_data(2).S06.gasmed_r ForeFS_data(3).S06.gasmed_r], 2);
MEAN_ForeFS_data(1).S06.soleus_r = mean([ForeFS_data(1).S06.soleus_r ForeFS_data(2).S06.soleus_r ForeFS_data(3).S06.soleus_r], 2);
MEAN_ForeFS_data(1).S06.tibant_r = mean([ForeFS_data(1).S06.tibant_r ForeFS_data(2).S06.tibant_r ForeFS_data(3).S06.tibant_r], 2);
MEAN_ForeFS_data(1).S06.tibpost_r = mean([ForeFS_data(1).S06.tibpost_r ForeFS_data(2).S06.tibpost_r ForeFS_data(3).S06.tibpost_r], 2);
MEAN_ForeFS_data(1).S06.edl_r = mean([ForeFS_data(1).S06.edl_r ForeFS_data(2).S06.edl_r ForeFS_data(3).S06.edl_r], 2);
MEAN_ForeFS_data(1).S06.fdl_r = mean([ForeFS_data(1).S06.fdl_r ForeFS_data(2).S06.fdl_r ForeFS_data(3).S06.fdl_r], 2);
MEAN_ForeFS_data(1).S06.fhl_r = mean([ForeFS_data(1).S06.fhl_r ForeFS_data(2).S06.fhl_r ForeFS_data(3).S06.fhl_r], 2);
MEAN_ForeFS_data(1).S06.perbrev_r = mean([ForeFS_data(1).S06.perbrev_r ForeFS_data(2).S06.perbrev_r ForeFS_data(3).S06.perbrev_r], 2);
MEAN_ForeFS_data(1).S06.perlong_r = mean([ForeFS_data(1).S06.perlong_r ForeFS_data(2).S06.perlong_r ForeFS_data(3).S06.perlong_r], 2);
MEAN_ForeFS_data(1).S06.ehl_r = mean([ForeFS_data(1).S06.ehl_r ForeFS_data(2).S06.ehl_r ForeFS_data(3).S06.ehl_r], 2);

MEAN_ForeFS_data(1).S07.gaslat_r = mean([ForeFS_data(1).S07.gaslat_r ForeFS_data(2).S07.gaslat_r ForeFS_data(3).S07.gaslat_r], 2);
MEAN_ForeFS_data(1).S07.gasmed_r = mean([ForeFS_data(1).S07.gasmed_r ForeFS_data(2).S07.gasmed_r ForeFS_data(3).S07.gasmed_r], 2);
MEAN_ForeFS_data(1).S07.soleus_r = mean([ForeFS_data(1).S07.soleus_r ForeFS_data(2).S07.soleus_r ForeFS_data(3).S07.soleus_r], 2);
MEAN_ForeFS_data(1).S07.tibant_r = mean([ForeFS_data(1).S07.tibant_r ForeFS_data(2).S07.tibant_r ForeFS_data(3).S07.tibant_r], 2);
MEAN_ForeFS_data(1).S07.tibpost_r = mean([ForeFS_data(1).S07.tibpost_r ForeFS_data(2).S07.tibpost_r ForeFS_data(3).S07.tibpost_r], 2);
MEAN_ForeFS_data(1).S07.edl_r = mean([ForeFS_data(1).S07.edl_r ForeFS_data(2).S07.edl_r ForeFS_data(3).S07.edl_r], 2);
MEAN_ForeFS_data(1).S07.fdl_r = mean([ForeFS_data(1).S07.fdl_r ForeFS_data(2).S07.fdl_r ForeFS_data(3).S07.fdl_r], 2);
MEAN_ForeFS_data(1).S07.fhl_r = mean([ForeFS_data(1).S07.fhl_r ForeFS_data(2).S07.fhl_r ForeFS_data(3).S07.fhl_r], 2);
MEAN_ForeFS_data(1).S07.perbrev_r = mean([ForeFS_data(1).S07.perbrev_r ForeFS_data(2).S07.perbrev_r ForeFS_data(3).S07.perbrev_r], 2);
MEAN_ForeFS_data(1).S07.perlong_r = mean([ForeFS_data(1).S07.perlong_r ForeFS_data(2).S07.perlong_r ForeFS_data(3).S07.perlong_r], 2);
MEAN_ForeFS_data(1).S07.ehl_r = mean([ForeFS_data(1).S07.ehl_r ForeFS_data(2).S07.ehl_r ForeFS_data(3).S07.ehl_r], 2);

MEAN_ForeFS_data(1).S08.gaslat_r = mean([ForeFS_data(1).S08.gaslat_r ForeFS_data(2).S08.gaslat_r ForeFS_data(3).S08.gaslat_r], 2);
MEAN_ForeFS_data(1).S08.gasmed_r = mean([ForeFS_data(1).S08.gasmed_r ForeFS_data(2).S08.gasmed_r ForeFS_data(3).S08.gasmed_r], 2);
MEAN_ForeFS_data(1).S08.soleus_r = mean([ForeFS_data(1).S08.soleus_r ForeFS_data(2).S08.soleus_r ForeFS_data(3).S08.soleus_r], 2);
MEAN_ForeFS_data(1).S08.tibant_r = mean([ForeFS_data(1).S08.tibant_r ForeFS_data(2).S08.tibant_r ForeFS_data(3).S08.tibant_r], 2);
MEAN_ForeFS_data(1).S08.tibpost_r = mean([ForeFS_data(1).S08.tibpost_r ForeFS_data(2).S08.tibpost_r ForeFS_data(3).S08.tibpost_r], 2);
MEAN_ForeFS_data(1).S08.edl_r = mean([ForeFS_data(1).S08.edl_r ForeFS_data(2).S08.edl_r ForeFS_data(3).S08.edl_r], 2);
MEAN_ForeFS_data(1).S08.fdl_r = mean([ForeFS_data(1).S08.fdl_r ForeFS_data(2).S08.fdl_r ForeFS_data(3).S08.fdl_r], 2);
MEAN_ForeFS_data(1).S08.fhl_r = mean([ForeFS_data(1).S08.fhl_r ForeFS_data(2).S08.fhl_r ForeFS_data(3).S08.fhl_r], 2);
MEAN_ForeFS_data(1).S08.perbrev_r = mean([ForeFS_data(1).S08.perbrev_r ForeFS_data(2).S08.perbrev_r ForeFS_data(3).S08.perbrev_r], 2);
MEAN_ForeFS_data(1).S08.perlong_r = mean([ForeFS_data(1).S08.perlong_r ForeFS_data(2).S08.perlong_r ForeFS_data(3).S08.perlong_r], 2);
MEAN_ForeFS_data(1).S08.ehl_r = mean([ForeFS_data(1).S08.ehl_r ForeFS_data(2).S08.ehl_r ForeFS_data(3).S08.ehl_r], 2);

MEAN_ForeFS_data(1).S09.gaslat_r = mean([ForeFS_data(1).S09.gaslat_r ForeFS_data(2).S09.gaslat_r ForeFS_data(3).S09.gaslat_r], 2);
MEAN_ForeFS_data(1).S09.gasmed_r = mean([ForeFS_data(1).S09.gasmed_r ForeFS_data(2).S09.gasmed_r ForeFS_data(3).S09.gasmed_r], 2);
MEAN_ForeFS_data(1).S09.soleus_r = mean([ForeFS_data(1).S09.soleus_r ForeFS_data(2).S09.soleus_r ForeFS_data(3).S09.soleus_r], 2);
MEAN_ForeFS_data(1).S09.tibant_r = mean([ForeFS_data(1).S09.tibant_r ForeFS_data(2).S09.tibant_r ForeFS_data(3).S09.tibant_r], 2);
MEAN_ForeFS_data(1).S09.tibpost_r = mean([ForeFS_data(1).S09.tibpost_r ForeFS_data(2).S09.tibpost_r ForeFS_data(3).S09.tibpost_r], 2);
MEAN_ForeFS_data(1).S09.edl_r = mean([ForeFS_data(1).S09.edl_r ForeFS_data(2).S09.edl_r ForeFS_data(3).S09.edl_r], 2);
MEAN_ForeFS_data(1).S09.fdl_r = mean([ForeFS_data(1).S09.fdl_r ForeFS_data(2).S09.fdl_r ForeFS_data(3).S09.fdl_r], 2);
MEAN_ForeFS_data(1).S09.fhl_r = mean([ForeFS_data(1).S09.fhl_r ForeFS_data(2).S09.fhl_r ForeFS_data(3).S09.fhl_r], 2);
MEAN_ForeFS_data(1).S09.perbrev_r = mean([ForeFS_data(1).S09.perbrev_r ForeFS_data(2).S09.perbrev_r ForeFS_data(3).S09.perbrev_r], 2);
MEAN_ForeFS_data(1).S09.perlong_r = mean([ForeFS_data(1).S09.perlong_r ForeFS_data(2).S09.perlong_r ForeFS_data(3).S09.perlong_r], 2);
MEAN_ForeFS_data(1).S09.ehl_r = mean([ForeFS_data(1).S09.ehl_r ForeFS_data(2).S09.ehl_r ForeFS_data(3).S09.ehl_r], 2);

MEAN_ForeFS_data(1).S10.gaslat_r = mean([ForeFS_data(1).S10.gaslat_r ForeFS_data(2).S10.gaslat_r ForeFS_data(3).S10.gaslat_r], 2);
MEAN_ForeFS_data(1).S10.gasmed_r = mean([ForeFS_data(1).S10.gasmed_r ForeFS_data(2).S10.gasmed_r ForeFS_data(3).S10.gasmed_r], 2);
MEAN_ForeFS_data(1).S10.soleus_r = mean([ForeFS_data(1).S10.soleus_r ForeFS_data(2).S10.soleus_r ForeFS_data(3).S10.soleus_r], 2);
MEAN_ForeFS_data(1).S10.tibant_r = mean([ForeFS_data(1).S10.tibant_r ForeFS_data(2).S10.tibant_r ForeFS_data(3).S10.tibant_r], 2);
MEAN_ForeFS_data(1).S10.tibpost_r = mean([ForeFS_data(1).S10.tibpost_r ForeFS_data(2).S10.tibpost_r ForeFS_data(3).S10.tibpost_r], 2);
MEAN_ForeFS_data(1).S10.edl_r = mean([ForeFS_data(1).S10.edl_r ForeFS_data(2).S10.edl_r ForeFS_data(3).S10.edl_r], 2);
MEAN_ForeFS_data(1).S10.fdl_r = mean([ForeFS_data(1).S10.fdl_r ForeFS_data(2).S10.fdl_r ForeFS_data(3).S10.fdl_r], 2);
MEAN_ForeFS_data(1).S10.fhl_r = mean([ForeFS_data(1).S10.fhl_r ForeFS_data(2).S10.fhl_r ForeFS_data(3).S10.fhl_r], 2);
MEAN_ForeFS_data(1).S10.perbrev_r = mean([ForeFS_data(1).S10.perbrev_r ForeFS_data(2).S10.perbrev_r ForeFS_data(3).S10.perbrev_r], 2);
MEAN_ForeFS_data(1).S10.perlong_r = mean([ForeFS_data(1).S10.perlong_r ForeFS_data(2).S10.perlong_r ForeFS_data(3).S10.perlong_r], 2);
MEAN_ForeFS_data(1).S10.ehl_r = mean([ForeFS_data(1).S10.ehl_r ForeFS_data(2).S10.ehl_r ForeFS_data(3).S10.ehl_r], 2);

MEAN_ForeFS_data(1).S11.gaslat_r = mean([ForeFS_data(1).S11.gaslat_r ForeFS_data(2).S11.gaslat_r ForeFS_data(3).S11.gaslat_r], 2);
MEAN_ForeFS_data(1).S11.gasmed_r = mean([ForeFS_data(1).S11.gasmed_r ForeFS_data(2).S11.gasmed_r ForeFS_data(3).S11.gasmed_r], 2);
MEAN_ForeFS_data(1).S11.soleus_r = mean([ForeFS_data(1).S11.soleus_r ForeFS_data(2).S11.soleus_r ForeFS_data(3).S11.soleus_r], 2);
MEAN_ForeFS_data(1).S11.tibant_r = mean([ForeFS_data(1).S11.tibant_r ForeFS_data(2).S11.tibant_r ForeFS_data(3).S11.tibant_r], 2);
MEAN_ForeFS_data(1).S11.tibpost_r = mean([ForeFS_data(1).S11.tibpost_r ForeFS_data(2).S11.tibpost_r ForeFS_data(3).S11.tibpost_r], 2);
MEAN_ForeFS_data(1).S11.edl_r = mean([ForeFS_data(1).S11.edl_r ForeFS_data(2).S11.edl_r ForeFS_data(3).S11.edl_r], 2);
MEAN_ForeFS_data(1).S11.fdl_r = mean([ForeFS_data(1).S11.fdl_r ForeFS_data(2).S11.fdl_r ForeFS_data(3).S11.fdl_r], 2);
MEAN_ForeFS_data(1).S11.fhl_r = mean([ForeFS_data(1).S11.fhl_r ForeFS_data(2).S11.fhl_r ForeFS_data(3).S11.fhl_r], 2);
MEAN_ForeFS_data(1).S11.perbrev_r = mean([ForeFS_data(1).S11.perbrev_r ForeFS_data(2).S11.perbrev_r ForeFS_data(3).S11.perbrev_r], 2);
MEAN_ForeFS_data(1).S11.perlong_r = mean([ForeFS_data(1).S11.perlong_r ForeFS_data(2).S11.perlong_r ForeFS_data(3).S11.perlong_r], 2);
MEAN_ForeFS_data(1).S11.ehl_r = mean([ForeFS_data(1).S11.ehl_r ForeFS_data(2).S11.ehl_r ForeFS_data(3).S11.ehl_r], 2);

MEAN_ForeFS_data(1).S12.gaslat_r = mean([ForeFS_data(1).S12.gaslat_r ForeFS_data(2).S12.gaslat_r ForeFS_data(3).S12.gaslat_r], 2);
MEAN_ForeFS_data(1).S12.gasmed_r = mean([ForeFS_data(1).S12.gasmed_r ForeFS_data(2).S12.gasmed_r ForeFS_data(3).S12.gasmed_r], 2);
MEAN_ForeFS_data(1).S12.soleus_r = mean([ForeFS_data(1).S12.soleus_r ForeFS_data(2).S12.soleus_r ForeFS_data(3).S12.soleus_r], 2);
MEAN_ForeFS_data(1).S12.tibant_r = mean([ForeFS_data(1).S12.tibant_r ForeFS_data(2).S12.tibant_r ForeFS_data(3).S12.tibant_r], 2);
MEAN_ForeFS_data(1).S12.tibpost_r = mean([ForeFS_data(1).S12.tibpost_r ForeFS_data(2).S12.tibpost_r ForeFS_data(3).S12.tibpost_r], 2);
MEAN_ForeFS_data(1).S12.edl_r = mean([ForeFS_data(1).S12.edl_r ForeFS_data(2).S12.edl_r ForeFS_data(3).S12.edl_r], 2);
MEAN_ForeFS_data(1).S12.fdl_r = mean([ForeFS_data(1).S12.fdl_r ForeFS_data(2).S12.fdl_r ForeFS_data(3).S12.fdl_r], 2);
MEAN_ForeFS_data(1).S12.fhl_r = mean([ForeFS_data(1).S12.fhl_r ForeFS_data(2).S12.fhl_r ForeFS_data(3).S12.fhl_r], 2);
MEAN_ForeFS_data(1).S12.perbrev_r = mean([ForeFS_data(1).S12.perbrev_r ForeFS_data(2).S12.perbrev_r ForeFS_data(3).S12.perbrev_r], 2);
MEAN_ForeFS_data(1).S12.perlong_r = mean([ForeFS_data(1).S12.perlong_r ForeFS_data(2).S12.perlong_r ForeFS_data(3).S12.perlong_r], 2);
MEAN_ForeFS_data(1).S12.ehl_r = mean([ForeFS_data(1).S12.ehl_r ForeFS_data(2).S12.ehl_r ForeFS_data(3).S12.ehl_r], 2);

MEAN_ForeFS_data(1).S13.gaslat_r = mean([ForeFS_data(1).S13.gaslat_r ForeFS_data(2).S13.gaslat_r ForeFS_data(3).S13.gaslat_r], 2);
MEAN_ForeFS_data(1).S13.gasmed_r = mean([ForeFS_data(1).S13.gasmed_r ForeFS_data(2).S13.gasmed_r ForeFS_data(3).S13.gasmed_r], 2);
MEAN_ForeFS_data(1).S13.soleus_r = mean([ForeFS_data(1).S13.soleus_r ForeFS_data(2).S13.soleus_r ForeFS_data(3).S13.soleus_r], 2);
MEAN_ForeFS_data(1).S13.tibant_r = mean([ForeFS_data(1).S13.tibant_r ForeFS_data(2).S13.tibant_r ForeFS_data(3).S13.tibant_r], 2);
MEAN_ForeFS_data(1).S13.tibpost_r = mean([ForeFS_data(1).S13.tibpost_r ForeFS_data(2).S13.tibpost_r ForeFS_data(3).S13.tibpost_r], 2);
MEAN_ForeFS_data(1).S13.edl_r = mean([ForeFS_data(1).S13.edl_r ForeFS_data(2).S13.edl_r ForeFS_data(3).S13.edl_r], 2);
MEAN_ForeFS_data(1).S13.fdl_r = mean([ForeFS_data(1).S13.fdl_r ForeFS_data(2).S13.fdl_r ForeFS_data(3).S13.fdl_r], 2);
MEAN_ForeFS_data(1).S13.fhl_r = mean([ForeFS_data(1).S13.fhl_r ForeFS_data(2).S13.fhl_r ForeFS_data(3).S13.fhl_r], 2);
MEAN_ForeFS_data(1).S13.perbrev_r = mean([ForeFS_data(1).S13.perbrev_r ForeFS_data(2).S13.perbrev_r ForeFS_data(3).S13.perbrev_r], 2);
MEAN_ForeFS_data(1).S13.perlong_r = mean([ForeFS_data(1).S13.perlong_r ForeFS_data(2).S13.perlong_r ForeFS_data(3).S13.perlong_r], 2);
MEAN_ForeFS_data(1).S13.ehl_r = mean([ForeFS_data(1).S13.ehl_r ForeFS_data(2).S13.ehl_r ForeFS_data(3).S13.ehl_r], 2);

MEAN_ForeFS_data(1).S14.gaslat_r = mean([ForeFS_data(1).S14.gaslat_r ForeFS_data(2).S14.gaslat_r ForeFS_data(3).S14.gaslat_r], 2);
MEAN_ForeFS_data(1).S14.gasmed_r = mean([ForeFS_data(1).S14.gasmed_r ForeFS_data(2).S14.gasmed_r ForeFS_data(3).S14.gasmed_r], 2);
MEAN_ForeFS_data(1).S14.soleus_r = mean([ForeFS_data(1).S14.soleus_r ForeFS_data(2).S14.soleus_r ForeFS_data(3).S14.soleus_r], 2);
MEAN_ForeFS_data(1).S14.tibant_r = mean([ForeFS_data(1).S14.tibant_r ForeFS_data(2).S14.tibant_r ForeFS_data(3).S14.tibant_r], 2);
MEAN_ForeFS_data(1).S14.tibpost_r = mean([ForeFS_data(1).S14.tibpost_r ForeFS_data(2).S14.tibpost_r ForeFS_data(3).S14.tibpost_r], 2);
MEAN_ForeFS_data(1).S14.edl_r = mean([ForeFS_data(1).S14.edl_r ForeFS_data(2).S14.edl_r ForeFS_data(3).S14.edl_r], 2);
MEAN_ForeFS_data(1).S14.fdl_r = mean([ForeFS_data(1).S14.fdl_r ForeFS_data(2).S14.fdl_r ForeFS_data(3).S14.fdl_r], 2);
MEAN_ForeFS_data(1).S14.fhl_r = mean([ForeFS_data(1).S14.fhl_r ForeFS_data(2).S14.fhl_r ForeFS_data(3).S14.fhl_r], 2);
MEAN_ForeFS_data(1).S14.perbrev_r = mean([ForeFS_data(1).S14.perbrev_r ForeFS_data(2).S14.perbrev_r ForeFS_data(3).S14.perbrev_r], 2);
MEAN_ForeFS_data(1).S14.perlong_r = mean([ForeFS_data(1).S14.perlong_r ForeFS_data(2).S14.perlong_r ForeFS_data(3).S14.perlong_r], 2);
MEAN_ForeFS_data(1).S14.ehl_r = mean([ForeFS_data(1).S14.ehl_r ForeFS_data(2).S14.ehl_r ForeFS_data(3).S14.ehl_r], 2);

MEAN_ForeFS_data(1).S15.gaslat_r = mean([ForeFS_data(1).S15.gaslat_r ForeFS_data(2).S15.gaslat_r ForeFS_data(3).S15.gaslat_r], 2);
MEAN_ForeFS_data(1).S15.gasmed_r = mean([ForeFS_data(1).S15.gasmed_r ForeFS_data(2).S15.gasmed_r ForeFS_data(3).S15.gasmed_r], 2);
MEAN_ForeFS_data(1).S15.soleus_r = mean([ForeFS_data(1).S15.soleus_r ForeFS_data(2).S15.soleus_r ForeFS_data(3).S15.soleus_r], 2);
MEAN_ForeFS_data(1).S15.tibant_r = mean([ForeFS_data(1).S15.tibant_r ForeFS_data(2).S15.tibant_r ForeFS_data(3).S15.tibant_r], 2);
MEAN_ForeFS_data(1).S15.tibpost_r = mean([ForeFS_data(1).S15.tibpost_r ForeFS_data(2).S15.tibpost_r ForeFS_data(3).S15.tibpost_r], 2);
MEAN_ForeFS_data(1).S15.edl_r = mean([ForeFS_data(1).S15.edl_r ForeFS_data(2).S15.edl_r ForeFS_data(3).S15.edl_r], 2);
MEAN_ForeFS_data(1).S15.fdl_r = mean([ForeFS_data(1).S15.fdl_r ForeFS_data(2).S15.fdl_r ForeFS_data(3).S15.fdl_r], 2);
MEAN_ForeFS_data(1).S15.fhl_r = mean([ForeFS_data(1).S15.fhl_r ForeFS_data(2).S15.fhl_r ForeFS_data(3).S15.fhl_r], 2);
MEAN_ForeFS_data(1).S15.perbrev_r = mean([ForeFS_data(1).S15.perbrev_r ForeFS_data(2).S15.perbrev_r ForeFS_data(3).S15.perbrev_r], 2);
MEAN_ForeFS_data(1).S15.perlong_r = mean([ForeFS_data(1).S15.perlong_r ForeFS_data(2).S15.perlong_r ForeFS_data(3).S15.perlong_r], 2);
MEAN_ForeFS_data(1).S15.ehl_r = mean([ForeFS_data(1).S15.ehl_r ForeFS_data(2).S15.ehl_r ForeFS_data(3).S15.ehl_r], 2);

MEAN_ForeFS_data(1).S16.gaslat_r = mean([ForeFS_data(1).S16.gaslat_r ForeFS_data(2).S16.gaslat_r ForeFS_data(3).S16.gaslat_r], 2);
MEAN_ForeFS_data(1).S16.gasmed_r = mean([ForeFS_data(1).S16.gasmed_r ForeFS_data(2).S16.gasmed_r ForeFS_data(3).S16.gasmed_r], 2);
MEAN_ForeFS_data(1).S16.soleus_r = mean([ForeFS_data(1).S16.soleus_r ForeFS_data(2).S16.soleus_r ForeFS_data(3).S16.soleus_r], 2);
MEAN_ForeFS_data(1).S16.tibant_r = mean([ForeFS_data(1).S16.tibant_r ForeFS_data(2).S16.tibant_r ForeFS_data(3).S16.tibant_r], 2);
MEAN_ForeFS_data(1).S16.tibpost_r = mean([ForeFS_data(1).S16.tibpost_r ForeFS_data(2).S16.tibpost_r ForeFS_data(3).S16.tibpost_r], 2);
MEAN_ForeFS_data(1).S16.edl_r = mean([ForeFS_data(1).S16.edl_r ForeFS_data(2).S16.edl_r ForeFS_data(3).S16.edl_r], 2);
MEAN_ForeFS_data(1).S16.fdl_r = mean([ForeFS_data(1).S16.fdl_r ForeFS_data(2).S16.fdl_r ForeFS_data(3).S16.fdl_r], 2);
MEAN_ForeFS_data(1).S16.fhl_r = mean([ForeFS_data(1).S16.fhl_r ForeFS_data(2).S16.fhl_r ForeFS_data(3).S16.fhl_r], 2);
MEAN_ForeFS_data(1).S16.perbrev_r = mean([ForeFS_data(1).S16.perbrev_r ForeFS_data(2).S16.perbrev_r ForeFS_data(3).S16.perbrev_r], 2);
MEAN_ForeFS_data(1).S16.perlong_r = mean([ForeFS_data(1).S16.perlong_r ForeFS_data(2).S16.perlong_r ForeFS_data(3).S16.perlong_r], 2);
MEAN_ForeFS_data(1).S16.ehl_r = mean([ForeFS_data(1).S16.ehl_r ForeFS_data(2).S16.ehl_r ForeFS_data(3).S16.ehl_r], 2);

MEAN_ForeFS_data(1).S17.gaslat_r = mean([ForeFS_data(1).S17.gaslat_r ForeFS_data(2).S17.gaslat_r ForeFS_data(3).S17.gaslat_r], 2);
MEAN_ForeFS_data(1).S17.gasmed_r = mean([ForeFS_data(1).S17.gasmed_r ForeFS_data(2).S17.gasmed_r ForeFS_data(3).S17.gasmed_r], 2);
MEAN_ForeFS_data(1).S17.soleus_r = mean([ForeFS_data(1).S17.soleus_r ForeFS_data(2).S17.soleus_r ForeFS_data(3).S17.soleus_r], 2);
MEAN_ForeFS_data(1).S17.tibant_r = mean([ForeFS_data(1).S17.tibant_r ForeFS_data(2).S17.tibant_r ForeFS_data(3).S17.tibant_r], 2);
MEAN_ForeFS_data(1).S17.tibpost_r = mean([ForeFS_data(1).S17.tibpost_r ForeFS_data(2).S17.tibpost_r ForeFS_data(3).S17.tibpost_r], 2);
MEAN_ForeFS_data(1).S17.edl_r = mean([ForeFS_data(1).S17.edl_r ForeFS_data(2).S17.edl_r ForeFS_data(3).S17.edl_r], 2);
MEAN_ForeFS_data(1).S17.fdl_r = mean([ForeFS_data(1).S17.fdl_r ForeFS_data(2).S17.fdl_r ForeFS_data(3).S17.fdl_r], 2);
MEAN_ForeFS_data(1).S17.fhl_r = mean([ForeFS_data(1).S17.fhl_r ForeFS_data(2).S17.fhl_r ForeFS_data(3).S17.fhl_r], 2);
MEAN_ForeFS_data(1).S17.perbrev_r = mean([ForeFS_data(1).S17.perbrev_r ForeFS_data(2).S17.perbrev_r ForeFS_data(3).S17.perbrev_r], 2);
MEAN_ForeFS_data(1).S17.perlong_r = mean([ForeFS_data(1).S17.perlong_r ForeFS_data(2).S17.perlong_r ForeFS_data(3).S17.perlong_r], 2);
MEAN_ForeFS_data(1).S17.ehl_r = mean([ForeFS_data(1).S17.ehl_r ForeFS_data(2).S17.ehl_r ForeFS_data(3).S17.ehl_r], 2);

MEAN_ForeFS_data(1).S18.gaslat_r = mean([ForeFS_data(1).S18.gaslat_r ForeFS_data(2).S18.gaslat_r ForeFS_data(3).S18.gaslat_r], 2);
MEAN_ForeFS_data(1).S18.gasmed_r = mean([ForeFS_data(1).S18.gasmed_r ForeFS_data(2).S18.gasmed_r ForeFS_data(3).S18.gasmed_r], 2);
MEAN_ForeFS_data(1).S18.soleus_r = mean([ForeFS_data(1).S18.soleus_r ForeFS_data(2).S18.soleus_r ForeFS_data(3).S18.soleus_r], 2);
MEAN_ForeFS_data(1).S18.tibant_r = mean([ForeFS_data(1).S18.tibant_r ForeFS_data(2).S18.tibant_r ForeFS_data(3).S18.tibant_r], 2);
MEAN_ForeFS_data(1).S18.tibpost_r = mean([ForeFS_data(1).S18.tibpost_r ForeFS_data(2).S18.tibpost_r ForeFS_data(3).S18.tibpost_r], 2);
MEAN_ForeFS_data(1).S18.edl_r = mean([ForeFS_data(1).S18.edl_r ForeFS_data(2).S18.edl_r ForeFS_data(3).S18.edl_r], 2);
MEAN_ForeFS_data(1).S18.fdl_r = mean([ForeFS_data(1).S18.fdl_r ForeFS_data(2).S18.fdl_r ForeFS_data(3).S18.fdl_r], 2);
MEAN_ForeFS_data(1).S18.fhl_r = mean([ForeFS_data(1).S18.fhl_r ForeFS_data(2).S18.fhl_r ForeFS_data(3).S18.fhl_r], 2);
MEAN_ForeFS_data(1).S18.perbrev_r = mean([ForeFS_data(1).S18.perbrev_r ForeFS_data(2).S18.perbrev_r ForeFS_data(3).S18.perbrev_r], 2);
MEAN_ForeFS_data(1).S18.perlong_r = mean([ForeFS_data(1).S18.perlong_r ForeFS_data(2).S18.perlong_r ForeFS_data(3).S18.perlong_r], 2);
MEAN_ForeFS_data(1).S18.ehl_r = mean([ForeFS_data(1).S18.ehl_r ForeFS_data(2).S18.ehl_r ForeFS_data(3).S18.ehl_r], 2);

MEAN_ForeFS_data(1).S19.gaslat_r = mean([ForeFS_data(1).S19.gaslat_r ForeFS_data(2).S19.gaslat_r ForeFS_data(3).S19.gaslat_r], 2);
MEAN_ForeFS_data(1).S19.gasmed_r = mean([ForeFS_data(1).S19.gasmed_r ForeFS_data(2).S19.gasmed_r ForeFS_data(3).S19.gasmed_r], 2);
MEAN_ForeFS_data(1).S19.soleus_r = mean([ForeFS_data(1).S19.soleus_r ForeFS_data(2).S19.soleus_r ForeFS_data(3).S19.soleus_r], 2);
MEAN_ForeFS_data(1).S19.tibant_r = mean([ForeFS_data(1).S19.tibant_r ForeFS_data(2).S19.tibant_r ForeFS_data(3).S19.tibant_r], 2);
MEAN_ForeFS_data(1).S19.tibpost_r = mean([ForeFS_data(1).S19.tibpost_r ForeFS_data(2).S19.tibpost_r ForeFS_data(3).S19.tibpost_r], 2);
MEAN_ForeFS_data(1).S19.edl_r = mean([ForeFS_data(1).S19.edl_r ForeFS_data(2).S19.edl_r ForeFS_data(3).S19.edl_r], 2);
MEAN_ForeFS_data(1).S19.fdl_r = mean([ForeFS_data(1).S19.fdl_r ForeFS_data(2).S19.fdl_r ForeFS_data(3).S19.fdl_r], 2);
MEAN_ForeFS_data(1).S19.fhl_r = mean([ForeFS_data(1).S19.fhl_r ForeFS_data(2).S19.fhl_r ForeFS_data(3).S19.fhl_r], 2);
MEAN_ForeFS_data(1).S19.perbrev_r = mean([ForeFS_data(1).S19.perbrev_r ForeFS_data(2).S19.perbrev_r ForeFS_data(3).S19.perbrev_r], 2);
MEAN_ForeFS_data(1).S19.perlong_r = mean([ForeFS_data(1).S19.perlong_r ForeFS_data(2).S19.perlong_r ForeFS_data(3).S19.perlong_r], 2);
MEAN_ForeFS_data(1).S19.ehl_r = mean([ForeFS_data(1).S19.ehl_r ForeFS_data(2).S19.ehl_r ForeFS_data(3).S19.ehl_r], 2);


%% Mean Rearfoot strike
MEAN_RearFS_data(1).S01.gaslat_r = mean([RearFS_data(1).S01.gaslat_r RearFS_data(2).S01.gaslat_r RearFS_data(3).S01.gaslat_r], 2);
MEAN_RearFS_data(1).S01.gasmed_r = mean([RearFS_data(1).S01.gasmed_r RearFS_data(2).S01.gasmed_r RearFS_data(3).S01.gasmed_r], 2);
MEAN_RearFS_data(1).S01.soleus_r = mean([RearFS_data(1).S01.soleus_r RearFS_data(2).S01.soleus_r RearFS_data(3).S01.soleus_r], 2);
MEAN_RearFS_data(1).S01.tibant_r = mean([RearFS_data(1).S01.tibant_r RearFS_data(2).S01.tibant_r RearFS_data(3).S01.tibant_r], 2);
MEAN_RearFS_data(1).S01.tibpost_r = mean([RearFS_data(1).S01.tibpost_r RearFS_data(2).S01.tibpost_r RearFS_data(3).S01.tibpost_r], 2);
MEAN_RearFS_data(1).S01.edl_r = mean([RearFS_data(1).S01.edl_r RearFS_data(2).S01.edl_r RearFS_data(3).S01.edl_r], 2);
MEAN_RearFS_data(1).S01.fdl_r = mean([RearFS_data(1).S01.fdl_r RearFS_data(2).S01.fdl_r RearFS_data(3).S01.fdl_r], 2);
MEAN_RearFS_data(1).S01.fhl_r = mean([RearFS_data(1).S01.fhl_r RearFS_data(2).S01.fhl_r RearFS_data(3).S01.fhl_r], 2);
MEAN_RearFS_data(1).S01.perbrev_r = mean([RearFS_data(1).S01.perbrev_r RearFS_data(2).S01.perbrev_r RearFS_data(3).S01.perbrev_r], 2);
MEAN_RearFS_data(1).S01.perlong_r = mean([RearFS_data(1).S01.perlong_r RearFS_data(2).S01.perlong_r RearFS_data(3).S01.perlong_r], 2);
MEAN_RearFS_data(1).S01.ehl_r = mean([RearFS_data(1).S01.ehl_r RearFS_data(2).S01.ehl_r RearFS_data(3).S01.ehl_r], 2);

MEAN_RearFS_data(1).S02.gaslat_r = mean([RearFS_data(1).S02.gaslat_r RearFS_data(2).S02.gaslat_r RearFS_data(3).S02.gaslat_r], 2);
MEAN_RearFS_data(1).S02.gasmed_r = mean([RearFS_data(1).S02.gasmed_r RearFS_data(2).S02.gasmed_r RearFS_data(3).S02.gasmed_r], 2);
MEAN_RearFS_data(1).S02.soleus_r = mean([RearFS_data(1).S02.soleus_r RearFS_data(2).S02.soleus_r RearFS_data(3).S02.soleus_r], 2);
MEAN_RearFS_data(1).S02.tibant_r = mean([RearFS_data(1).S02.tibant_r RearFS_data(2).S02.tibant_r RearFS_data(3).S02.tibant_r], 2);
MEAN_RearFS_data(1).S02.tibpost_r = mean([RearFS_data(1).S02.tibpost_r RearFS_data(2).S02.tibpost_r RearFS_data(3).S02.tibpost_r], 2);
MEAN_RearFS_data(1).S02.edl_r = mean([RearFS_data(1).S02.edl_r RearFS_data(2).S02.edl_r RearFS_data(3).S02.edl_r], 2);
MEAN_RearFS_data(1).S02.fdl_r = mean([RearFS_data(1).S02.fdl_r RearFS_data(2).S02.fdl_r RearFS_data(3).S02.fdl_r], 2);
MEAN_RearFS_data(1).S02.fhl_r = mean([RearFS_data(1).S02.fhl_r RearFS_data(2).S02.fhl_r RearFS_data(3).S02.fhl_r], 2);
MEAN_RearFS_data(1).S02.perbrev_r = mean([RearFS_data(1).S02.perbrev_r RearFS_data(2).S02.perbrev_r RearFS_data(3).S02.perbrev_r], 2);
MEAN_RearFS_data(1).S02.perlong_r = mean([RearFS_data(1).S02.perlong_r RearFS_data(2).S02.perlong_r RearFS_data(3).S02.perlong_r], 2);
MEAN_RearFS_data(1).S02.ehl_r = mean([RearFS_data(1).S02.ehl_r RearFS_data(2).S02.ehl_r RearFS_data(3).S02.ehl_r], 2);

MEAN_RearFS_data(1).S03.gaslat_r = mean([RearFS_data(1).S03.gaslat_r RearFS_data(2).S03.gaslat_r RearFS_data(3).S03.gaslat_r], 2);
MEAN_RearFS_data(1).S03.gasmed_r = mean([RearFS_data(1).S03.gasmed_r RearFS_data(2).S03.gasmed_r RearFS_data(3).S03.gasmed_r], 2);
MEAN_RearFS_data(1).S03.soleus_r = mean([RearFS_data(1).S03.soleus_r RearFS_data(2).S03.soleus_r RearFS_data(3).S03.soleus_r], 2);
MEAN_RearFS_data(1).S03.tibant_r = mean([RearFS_data(1).S03.tibant_r RearFS_data(2).S03.tibant_r RearFS_data(3).S03.tibant_r], 2);
MEAN_RearFS_data(1).S03.tibpost_r = mean([RearFS_data(1).S03.tibpost_r RearFS_data(2).S03.tibpost_r RearFS_data(3).S03.tibpost_r], 2);
MEAN_RearFS_data(1).S03.edl_r = mean([RearFS_data(1).S03.edl_r RearFS_data(2).S03.edl_r RearFS_data(3).S03.edl_r], 2);
MEAN_RearFS_data(1).S03.fdl_r = mean([RearFS_data(1).S03.fdl_r RearFS_data(2).S03.fdl_r RearFS_data(3).S03.fdl_r], 2);
MEAN_RearFS_data(1).S03.fhl_r = mean([RearFS_data(1).S03.fhl_r RearFS_data(2).S03.fhl_r RearFS_data(3).S03.fhl_r], 2);
MEAN_RearFS_data(1).S03.perbrev_r = mean([RearFS_data(1).S03.perbrev_r RearFS_data(2).S03.perbrev_r RearFS_data(3).S03.perbrev_r], 2);
MEAN_RearFS_data(1).S03.perlong_r = mean([RearFS_data(1).S03.perlong_r RearFS_data(2).S03.perlong_r RearFS_data(3).S03.perlong_r], 2);
MEAN_RearFS_data(1).S03.ehl_r = mean([RearFS_data(1).S03.ehl_r RearFS_data(2).S03.ehl_r RearFS_data(3).S03.ehl_r], 2);

MEAN_RearFS_data(1).S04.gaslat_r = mean([RearFS_data(1).S04.gaslat_r RearFS_data(2).S04.gaslat_r RearFS_data(3).S04.gaslat_r], 2);
MEAN_RearFS_data(1).S04.gasmed_r = mean([RearFS_data(1).S04.gasmed_r RearFS_data(2).S04.gasmed_r RearFS_data(3).S04.gasmed_r], 2);
MEAN_RearFS_data(1).S04.soleus_r = mean([RearFS_data(1).S04.soleus_r RearFS_data(2).S04.soleus_r RearFS_data(3).S04.soleus_r], 2);
MEAN_RearFS_data(1).S04.tibant_r = mean([RearFS_data(1).S04.tibant_r RearFS_data(2).S04.tibant_r RearFS_data(3).S04.tibant_r], 2);
MEAN_RearFS_data(1).S04.tibpost_r = mean([RearFS_data(1).S04.tibpost_r RearFS_data(2).S04.tibpost_r RearFS_data(3).S04.tibpost_r], 2);
MEAN_RearFS_data(1).S04.edl_r = mean([RearFS_data(1).S04.edl_r RearFS_data(2).S04.edl_r RearFS_data(3).S04.edl_r], 2);
MEAN_RearFS_data(1).S04.fdl_r = mean([RearFS_data(1).S04.fdl_r RearFS_data(2).S04.fdl_r RearFS_data(3).S04.fdl_r], 2);
MEAN_RearFS_data(1).S04.fhl_r = mean([RearFS_data(1).S04.fhl_r RearFS_data(2).S04.fhl_r RearFS_data(3).S04.fhl_r], 2);
MEAN_RearFS_data(1).S04.perbrev_r = mean([RearFS_data(1).S04.perbrev_r RearFS_data(2).S04.perbrev_r RearFS_data(3).S04.perbrev_r], 2);
MEAN_RearFS_data(1).S04.perlong_r = mean([RearFS_data(1).S04.perlong_r RearFS_data(2).S04.perlong_r RearFS_data(3).S04.perlong_r], 2);
MEAN_RearFS_data(1).S04.ehl_r = mean([RearFS_data(1).S04.ehl_r RearFS_data(2).S04.ehl_r RearFS_data(3).S04.ehl_r], 2);

MEAN_RearFS_data(1).S05.gaslat_r = mean([RearFS_data(1).S05.gaslat_r RearFS_data(2).S05.gaslat_r RearFS_data(3).S05.gaslat_r], 2);
MEAN_RearFS_data(1).S05.gasmed_r = mean([RearFS_data(1).S05.gasmed_r RearFS_data(2).S05.gasmed_r RearFS_data(3).S05.gasmed_r], 2);
MEAN_RearFS_data(1).S05.soleus_r = mean([RearFS_data(1).S05.soleus_r RearFS_data(2).S05.soleus_r RearFS_data(3).S05.soleus_r], 2);
MEAN_RearFS_data(1).S05.tibant_r = mean([RearFS_data(1).S05.tibant_r RearFS_data(2).S05.tibant_r RearFS_data(3).S05.tibant_r], 2);
MEAN_RearFS_data(1).S05.tibpost_r = mean([RearFS_data(1).S05.tibpost_r RearFS_data(2).S05.tibpost_r RearFS_data(3).S05.tibpost_r], 2);
MEAN_RearFS_data(1).S05.edl_r = mean([RearFS_data(1).S05.edl_r RearFS_data(2).S05.edl_r RearFS_data(3).S05.edl_r], 2);
MEAN_RearFS_data(1).S05.fdl_r = mean([RearFS_data(1).S05.fdl_r RearFS_data(2).S05.fdl_r RearFS_data(3).S05.fdl_r], 2);
MEAN_RearFS_data(1).S05.fhl_r = mean([RearFS_data(1).S05.fhl_r RearFS_data(2).S05.fhl_r RearFS_data(3).S05.fhl_r], 2);
MEAN_RearFS_data(1).S05.perbrev_r = mean([RearFS_data(1).S05.perbrev_r RearFS_data(2).S05.perbrev_r RearFS_data(3).S05.perbrev_r], 2);
MEAN_RearFS_data(1).S05.perlong_r = mean([RearFS_data(1).S05.perlong_r RearFS_data(2).S05.perlong_r RearFS_data(3).S05.perlong_r], 2);
MEAN_RearFS_data(1).S05.ehl_r = mean([RearFS_data(1).S05.ehl_r RearFS_data(2).S05.ehl_r RearFS_data(3).S05.ehl_r], 2);

MEAN_RearFS_data(1).S06.gaslat_r = mean([RearFS_data(1).S06.gaslat_r RearFS_data(2).S06.gaslat_r RearFS_data(3).S06.gaslat_r], 2);
MEAN_RearFS_data(1).S06.gasmed_r = mean([RearFS_data(1).S06.gasmed_r RearFS_data(2).S06.gasmed_r RearFS_data(3).S06.gasmed_r], 2);
MEAN_RearFS_data(1).S06.soleus_r = mean([RearFS_data(1).S06.soleus_r RearFS_data(2).S06.soleus_r RearFS_data(3).S06.soleus_r], 2);
MEAN_RearFS_data(1).S06.tibant_r = mean([RearFS_data(1).S06.tibant_r RearFS_data(2).S06.tibant_r RearFS_data(3).S06.tibant_r], 2);
MEAN_RearFS_data(1).S06.tibpost_r = mean([RearFS_data(1).S06.tibpost_r RearFS_data(2).S06.tibpost_r RearFS_data(3).S06.tibpost_r], 2);
MEAN_RearFS_data(1).S06.edl_r = mean([RearFS_data(1).S06.edl_r RearFS_data(2).S06.edl_r RearFS_data(3).S06.edl_r], 2);
MEAN_RearFS_data(1).S06.fdl_r = mean([RearFS_data(1).S06.fdl_r RearFS_data(2).S06.fdl_r RearFS_data(3).S06.fdl_r], 2);
MEAN_RearFS_data(1).S06.fhl_r = mean([RearFS_data(1).S06.fhl_r RearFS_data(2).S06.fhl_r RearFS_data(3).S06.fhl_r], 2);
MEAN_RearFS_data(1).S06.perbrev_r = mean([RearFS_data(1).S06.perbrev_r RearFS_data(2).S06.perbrev_r RearFS_data(3).S06.perbrev_r], 2);
MEAN_RearFS_data(1).S06.perlong_r = mean([RearFS_data(1).S06.perlong_r RearFS_data(2).S06.perlong_r RearFS_data(3).S06.perlong_r], 2);
MEAN_RearFS_data(1).S06.ehl_r = mean([RearFS_data(1).S06.ehl_r RearFS_data(2).S06.ehl_r RearFS_data(3).S06.ehl_r], 2);

MEAN_RearFS_data(1).S07.gaslat_r = mean([RearFS_data(1).S07.gaslat_r RearFS_data(2).S07.gaslat_r RearFS_data(3).S07.gaslat_r], 2);
MEAN_RearFS_data(1).S07.gasmed_r = mean([RearFS_data(1).S07.gasmed_r RearFS_data(2).S07.gasmed_r RearFS_data(3).S07.gasmed_r], 2);
MEAN_RearFS_data(1).S07.soleus_r = mean([RearFS_data(1).S07.soleus_r RearFS_data(2).S07.soleus_r RearFS_data(3).S07.soleus_r], 2);
MEAN_RearFS_data(1).S07.tibant_r = mean([RearFS_data(1).S07.tibant_r RearFS_data(2).S07.tibant_r RearFS_data(3).S07.tibant_r], 2);
MEAN_RearFS_data(1).S07.tibpost_r = mean([RearFS_data(1).S07.tibpost_r RearFS_data(2).S07.tibpost_r RearFS_data(3).S07.tibpost_r], 2);
MEAN_RearFS_data(1).S07.edl_r = mean([RearFS_data(1).S07.edl_r RearFS_data(2).S07.edl_r RearFS_data(3).S07.edl_r], 2);
MEAN_RearFS_data(1).S07.fdl_r = mean([RearFS_data(1).S07.fdl_r RearFS_data(2).S07.fdl_r RearFS_data(3).S07.fdl_r], 2);
MEAN_RearFS_data(1).S07.fhl_r = mean([RearFS_data(1).S07.fhl_r RearFS_data(2).S07.fhl_r RearFS_data(3).S07.fhl_r], 2);
MEAN_RearFS_data(1).S07.perbrev_r = mean([RearFS_data(1).S07.perbrev_r RearFS_data(2).S07.perbrev_r RearFS_data(3).S07.perbrev_r], 2);
MEAN_RearFS_data(1).S07.perlong_r = mean([RearFS_data(1).S07.perlong_r RearFS_data(2).S07.perlong_r RearFS_data(3).S07.perlong_r], 2);
MEAN_RearFS_data(1).S07.ehl_r = mean([RearFS_data(1).S07.ehl_r RearFS_data(2).S07.ehl_r RearFS_data(3).S07.ehl_r], 2);

MEAN_RearFS_data(1).S08.gaslat_r = mean([RearFS_data(1).S08.gaslat_r RearFS_data(2).S08.gaslat_r RearFS_data(3).S08.gaslat_r], 2);
MEAN_RearFS_data(1).S08.gasmed_r = mean([RearFS_data(1).S08.gasmed_r RearFS_data(2).S08.gasmed_r RearFS_data(3).S08.gasmed_r], 2);
MEAN_RearFS_data(1).S08.soleus_r = mean([RearFS_data(1).S08.soleus_r RearFS_data(2).S08.soleus_r RearFS_data(3).S08.soleus_r], 2);
MEAN_RearFS_data(1).S08.tibant_r = mean([RearFS_data(1).S08.tibant_r RearFS_data(2).S08.tibant_r RearFS_data(3).S08.tibant_r], 2);
MEAN_RearFS_data(1).S08.tibpost_r = mean([RearFS_data(1).S08.tibpost_r RearFS_data(2).S08.tibpost_r RearFS_data(3).S08.tibpost_r], 2);
MEAN_RearFS_data(1).S08.edl_r = mean([RearFS_data(1).S08.edl_r RearFS_data(2).S08.edl_r RearFS_data(3).S08.edl_r], 2);
MEAN_RearFS_data(1).S08.fdl_r = mean([RearFS_data(1).S08.fdl_r RearFS_data(2).S08.fdl_r RearFS_data(3).S08.fdl_r], 2);
MEAN_RearFS_data(1).S08.fhl_r = mean([RearFS_data(1).S08.fhl_r RearFS_data(2).S08.fhl_r RearFS_data(3).S08.fhl_r], 2);
MEAN_RearFS_data(1).S08.perbrev_r = mean([RearFS_data(1).S08.perbrev_r RearFS_data(2).S08.perbrev_r RearFS_data(3).S08.perbrev_r], 2);
MEAN_RearFS_data(1).S08.perlong_r = mean([RearFS_data(1).S08.perlong_r RearFS_data(2).S08.perlong_r RearFS_data(3).S08.perlong_r], 2);
MEAN_RearFS_data(1).S08.ehl_r = mean([RearFS_data(1).S08.ehl_r RearFS_data(2).S08.ehl_r RearFS_data(3).S08.ehl_r], 2);

MEAN_RearFS_data(1).S09.gaslat_r = mean([RearFS_data(1).S09.gaslat_r RearFS_data(2).S09.gaslat_r RearFS_data(3).S09.gaslat_r], 2);
MEAN_RearFS_data(1).S09.gasmed_r = mean([RearFS_data(1).S09.gasmed_r RearFS_data(2).S09.gasmed_r RearFS_data(3).S09.gasmed_r], 2);
MEAN_RearFS_data(1).S09.soleus_r = mean([RearFS_data(1).S09.soleus_r RearFS_data(2).S09.soleus_r RearFS_data(3).S09.soleus_r], 2);
MEAN_RearFS_data(1).S09.tibant_r = mean([RearFS_data(1).S09.tibant_r RearFS_data(2).S09.tibant_r RearFS_data(3).S09.tibant_r], 2);
MEAN_RearFS_data(1).S09.tibpost_r = mean([RearFS_data(1).S09.tibpost_r RearFS_data(2).S09.tibpost_r RearFS_data(3).S09.tibpost_r], 2);
MEAN_RearFS_data(1).S09.edl_r = mean([RearFS_data(1).S09.edl_r RearFS_data(2).S09.edl_r RearFS_data(3).S09.edl_r], 2);
MEAN_RearFS_data(1).S09.fdl_r = mean([RearFS_data(1).S09.fdl_r RearFS_data(2).S09.fdl_r RearFS_data(3).S09.fdl_r], 2);
MEAN_RearFS_data(1).S09.fhl_r = mean([RearFS_data(1).S09.fhl_r RearFS_data(2).S09.fhl_r RearFS_data(3).S09.fhl_r], 2);
MEAN_RearFS_data(1).S09.perbrev_r = mean([RearFS_data(1).S09.perbrev_r RearFS_data(2).S09.perbrev_r RearFS_data(3).S09.perbrev_r], 2);
MEAN_RearFS_data(1).S09.perlong_r = mean([RearFS_data(1).S09.perlong_r RearFS_data(2).S09.perlong_r RearFS_data(3).S09.perlong_r], 2);
MEAN_RearFS_data(1).S09.ehl_r = mean([RearFS_data(1).S09.ehl_r RearFS_data(2).S09.ehl_r RearFS_data(3).S09.ehl_r], 2);

MEAN_RearFS_data(1).S10.gaslat_r = mean([RearFS_data(1).S10.gaslat_r RearFS_data(2).S10.gaslat_r RearFS_data(3).S10.gaslat_r], 2);
MEAN_RearFS_data(1).S10.gasmed_r = mean([RearFS_data(1).S10.gasmed_r RearFS_data(2).S10.gasmed_r RearFS_data(3).S10.gasmed_r], 2);
MEAN_RearFS_data(1).S10.soleus_r = mean([RearFS_data(1).S10.soleus_r RearFS_data(2).S10.soleus_r RearFS_data(3).S10.soleus_r], 2);
MEAN_RearFS_data(1).S10.tibant_r = mean([RearFS_data(1).S10.tibant_r RearFS_data(2).S10.tibant_r RearFS_data(3).S10.tibant_r], 2);
MEAN_RearFS_data(1).S10.tibpost_r = mean([RearFS_data(1).S10.tibpost_r RearFS_data(2).S10.tibpost_r RearFS_data(3).S10.tibpost_r], 2);
MEAN_RearFS_data(1).S10.edl_r = mean([RearFS_data(1).S10.edl_r RearFS_data(2).S10.edl_r RearFS_data(3).S10.edl_r], 2);
MEAN_RearFS_data(1).S10.fdl_r = mean([RearFS_data(1).S10.fdl_r RearFS_data(2).S10.fdl_r RearFS_data(3).S10.fdl_r], 2);
MEAN_RearFS_data(1).S10.fhl_r = mean([RearFS_data(1).S10.fhl_r RearFS_data(2).S10.fhl_r RearFS_data(3).S10.fhl_r], 2);
MEAN_RearFS_data(1).S10.perbrev_r = mean([RearFS_data(1).S10.perbrev_r RearFS_data(2).S10.perbrev_r RearFS_data(3).S10.perbrev_r], 2);
MEAN_RearFS_data(1).S10.perlong_r = mean([RearFS_data(1).S10.perlong_r RearFS_data(2).S10.perlong_r RearFS_data(3).S10.perlong_r], 2);
MEAN_RearFS_data(1).S10.ehl_r = mean([RearFS_data(1).S10.ehl_r RearFS_data(2).S10.ehl_r RearFS_data(3).S10.ehl_r], 2);

MEAN_RearFS_data(1).S11.gaslat_r = mean([RearFS_data(1).S11.gaslat_r RearFS_data(2).S11.gaslat_r RearFS_data(3).S11.gaslat_r], 2);
MEAN_RearFS_data(1).S11.gasmed_r = mean([RearFS_data(1).S11.gasmed_r RearFS_data(2).S11.gasmed_r RearFS_data(3).S11.gasmed_r], 2);
MEAN_RearFS_data(1).S11.soleus_r = mean([RearFS_data(1).S11.soleus_r RearFS_data(2).S11.soleus_r RearFS_data(3).S11.soleus_r], 2);
MEAN_RearFS_data(1).S11.tibant_r = mean([RearFS_data(1).S11.tibant_r RearFS_data(2).S11.tibant_r RearFS_data(3).S11.tibant_r], 2);
MEAN_RearFS_data(1).S11.tibpost_r = mean([RearFS_data(1).S11.tibpost_r RearFS_data(2).S11.tibpost_r RearFS_data(3).S11.tibpost_r], 2);
MEAN_RearFS_data(1).S11.edl_r = mean([RearFS_data(1).S11.edl_r RearFS_data(2).S11.edl_r RearFS_data(3).S11.edl_r], 2);
MEAN_RearFS_data(1).S11.fdl_r = mean([RearFS_data(1).S11.fdl_r RearFS_data(2).S11.fdl_r RearFS_data(3).S11.fdl_r], 2);
MEAN_RearFS_data(1).S11.fhl_r = mean([RearFS_data(1).S11.fhl_r RearFS_data(2).S11.fhl_r RearFS_data(3).S11.fhl_r], 2);
MEAN_RearFS_data(1).S11.perbrev_r = mean([RearFS_data(1).S11.perbrev_r RearFS_data(2).S11.perbrev_r RearFS_data(3).S11.perbrev_r], 2);
MEAN_RearFS_data(1).S11.perlong_r = mean([RearFS_data(1).S11.perlong_r RearFS_data(2).S11.perlong_r RearFS_data(3).S11.perlong_r], 2);
MEAN_RearFS_data(1).S11.ehl_r = mean([RearFS_data(1).S11.ehl_r RearFS_data(2).S11.ehl_r RearFS_data(3).S11.ehl_r], 2);

MEAN_RearFS_data(1).S12.gaslat_r = mean([RearFS_data(1).S12.gaslat_r RearFS_data(2).S12.gaslat_r RearFS_data(3).S12.gaslat_r], 2);
MEAN_RearFS_data(1).S12.gasmed_r = mean([RearFS_data(1).S12.gasmed_r RearFS_data(2).S12.gasmed_r RearFS_data(3).S12.gasmed_r], 2);
MEAN_RearFS_data(1).S12.soleus_r = mean([RearFS_data(1).S12.soleus_r RearFS_data(2).S12.soleus_r RearFS_data(3).S12.soleus_r], 2);
MEAN_RearFS_data(1).S12.tibant_r = mean([RearFS_data(1).S12.tibant_r RearFS_data(2).S12.tibant_r RearFS_data(3).S12.tibant_r], 2);
MEAN_RearFS_data(1).S12.tibpost_r = mean([RearFS_data(1).S12.tibpost_r RearFS_data(2).S12.tibpost_r RearFS_data(3).S12.tibpost_r], 2);
MEAN_RearFS_data(1).S12.edl_r = mean([RearFS_data(1).S12.edl_r RearFS_data(2).S12.edl_r RearFS_data(3).S12.edl_r], 2);
MEAN_RearFS_data(1).S12.fdl_r = mean([RearFS_data(1).S12.fdl_r RearFS_data(2).S12.fdl_r RearFS_data(3).S12.fdl_r], 2);
MEAN_RearFS_data(1).S12.fhl_r = mean([RearFS_data(1).S12.fhl_r RearFS_data(2).S12.fhl_r RearFS_data(3).S12.fhl_r], 2);
MEAN_RearFS_data(1).S12.perbrev_r = mean([RearFS_data(1).S12.perbrev_r RearFS_data(2).S12.perbrev_r RearFS_data(3).S12.perbrev_r], 2);
MEAN_RearFS_data(1).S12.perlong_r = mean([RearFS_data(1).S12.perlong_r RearFS_data(2).S12.perlong_r RearFS_data(3).S12.perlong_r], 2);
MEAN_RearFS_data(1).S12.ehl_r = mean([RearFS_data(1).S12.ehl_r RearFS_data(2).S12.ehl_r RearFS_data(3).S12.ehl_r], 2);

MEAN_RearFS_data(1).S13.gaslat_r = mean([RearFS_data(1).S13.gaslat_r RearFS_data(2).S13.gaslat_r RearFS_data(3).S13.gaslat_r], 2);
MEAN_RearFS_data(1).S13.gasmed_r = mean([RearFS_data(1).S13.gasmed_r RearFS_data(2).S13.gasmed_r RearFS_data(3).S13.gasmed_r], 2);
MEAN_RearFS_data(1).S13.soleus_r = mean([RearFS_data(1).S13.soleus_r RearFS_data(2).S13.soleus_r RearFS_data(3).S13.soleus_r], 2);
MEAN_RearFS_data(1).S13.tibant_r = mean([RearFS_data(1).S13.tibant_r RearFS_data(2).S13.tibant_r RearFS_data(3).S13.tibant_r], 2);
MEAN_RearFS_data(1).S13.tibpost_r = mean([RearFS_data(1).S13.tibpost_r RearFS_data(2).S13.tibpost_r RearFS_data(3).S13.tibpost_r], 2);
MEAN_RearFS_data(1).S13.edl_r = mean([RearFS_data(1).S13.edl_r RearFS_data(2).S13.edl_r RearFS_data(3).S13.edl_r], 2);
MEAN_RearFS_data(1).S13.fdl_r = mean([RearFS_data(1).S13.fdl_r RearFS_data(2).S13.fdl_r RearFS_data(3).S13.fdl_r], 2);
MEAN_RearFS_data(1).S13.fhl_r = mean([RearFS_data(1).S13.fhl_r RearFS_data(2).S13.fhl_r RearFS_data(3).S13.fhl_r], 2);
MEAN_RearFS_data(1).S13.perbrev_r = mean([RearFS_data(1).S13.perbrev_r RearFS_data(2).S13.perbrev_r RearFS_data(3).S13.perbrev_r], 2);
MEAN_RearFS_data(1).S13.perlong_r = mean([RearFS_data(1).S13.perlong_r RearFS_data(2).S13.perlong_r RearFS_data(3).S13.perlong_r], 2);
MEAN_RearFS_data(1).S13.ehl_r = mean([RearFS_data(1).S13.ehl_r RearFS_data(2).S13.ehl_r RearFS_data(3).S13.ehl_r], 2);

MEAN_RearFS_data(1).S14.gaslat_r = mean([RearFS_data(1).S14.gaslat_r RearFS_data(2).S14.gaslat_r RearFS_data(3).S14.gaslat_r], 2);
MEAN_RearFS_data(1).S14.gasmed_r = mean([RearFS_data(1).S14.gasmed_r RearFS_data(2).S14.gasmed_r RearFS_data(3).S14.gasmed_r], 2);
MEAN_RearFS_data(1).S14.soleus_r = mean([RearFS_data(1).S14.soleus_r RearFS_data(2).S14.soleus_r RearFS_data(3).S14.soleus_r], 2);
MEAN_RearFS_data(1).S14.tibant_r = mean([RearFS_data(1).S14.tibant_r RearFS_data(2).S14.tibant_r RearFS_data(3).S14.tibant_r], 2);
MEAN_RearFS_data(1).S14.tibpost_r = mean([RearFS_data(1).S14.tibpost_r RearFS_data(2).S14.tibpost_r RearFS_data(3).S14.tibpost_r], 2);
MEAN_RearFS_data(1).S14.edl_r = mean([RearFS_data(1).S14.edl_r RearFS_data(2).S14.edl_r RearFS_data(3).S14.edl_r], 2);
MEAN_RearFS_data(1).S14.fdl_r = mean([RearFS_data(1).S14.fdl_r RearFS_data(2).S14.fdl_r RearFS_data(3).S14.fdl_r], 2);
MEAN_RearFS_data(1).S14.fhl_r = mean([RearFS_data(1).S14.fhl_r RearFS_data(2).S14.fhl_r RearFS_data(3).S14.fhl_r], 2);
MEAN_RearFS_data(1).S14.perbrev_r = mean([RearFS_data(1).S14.perbrev_r RearFS_data(2).S14.perbrev_r RearFS_data(3).S14.perbrev_r], 2);
MEAN_RearFS_data(1).S14.perlong_r = mean([RearFS_data(1).S14.perlong_r RearFS_data(2).S14.perlong_r RearFS_data(3).S14.perlong_r], 2);
MEAN_RearFS_data(1).S14.ehl_r = mean([RearFS_data(1).S14.ehl_r RearFS_data(2).S14.ehl_r RearFS_data(3).S14.ehl_r], 2);

MEAN_RearFS_data(1).S15.gaslat_r = mean([RearFS_data(1).S15.gaslat_r RearFS_data(2).S15.gaslat_r RearFS_data(3).S15.gaslat_r], 2);
MEAN_RearFS_data(1).S15.gasmed_r = mean([RearFS_data(1).S15.gasmed_r RearFS_data(2).S15.gasmed_r RearFS_data(3).S15.gasmed_r], 2);
MEAN_RearFS_data(1).S15.soleus_r = mean([RearFS_data(1).S15.soleus_r RearFS_data(2).S15.soleus_r RearFS_data(3).S15.soleus_r], 2);
MEAN_RearFS_data(1).S15.tibant_r = mean([RearFS_data(1).S15.tibant_r RearFS_data(2).S15.tibant_r RearFS_data(3).S15.tibant_r], 2);
MEAN_RearFS_data(1).S15.tibpost_r = mean([RearFS_data(1).S15.tibpost_r RearFS_data(2).S15.tibpost_r RearFS_data(3).S15.tibpost_r], 2);
MEAN_RearFS_data(1).S15.edl_r = mean([RearFS_data(1).S15.edl_r RearFS_data(2).S15.edl_r RearFS_data(3).S15.edl_r], 2);
MEAN_RearFS_data(1).S15.fdl_r = mean([RearFS_data(1).S15.fdl_r RearFS_data(2).S15.fdl_r RearFS_data(3).S15.fdl_r], 2);
MEAN_RearFS_data(1).S15.fhl_r = mean([RearFS_data(1).S15.fhl_r RearFS_data(2).S15.fhl_r RearFS_data(3).S15.fhl_r], 2);
MEAN_RearFS_data(1).S15.perbrev_r = mean([RearFS_data(1).S15.perbrev_r RearFS_data(2).S15.perbrev_r RearFS_data(3).S15.perbrev_r], 2);
MEAN_RearFS_data(1).S15.perlong_r = mean([RearFS_data(1).S15.perlong_r RearFS_data(2).S15.perlong_r RearFS_data(3).S15.perlong_r], 2);
MEAN_RearFS_data(1).S15.ehl_r = mean([RearFS_data(1).S15.ehl_r RearFS_data(2).S15.ehl_r RearFS_data(3).S15.ehl_r], 2);

MEAN_RearFS_data(1).S16.gaslat_r = mean([RearFS_data(1).S16.gaslat_r RearFS_data(2).S16.gaslat_r RearFS_data(3).S16.gaslat_r], 2);
MEAN_RearFS_data(1).S16.gasmed_r = mean([RearFS_data(1).S16.gasmed_r RearFS_data(2).S16.gasmed_r RearFS_data(3).S16.gasmed_r], 2);
MEAN_RearFS_data(1).S16.soleus_r = mean([RearFS_data(1).S16.soleus_r RearFS_data(2).S16.soleus_r RearFS_data(3).S16.soleus_r], 2);
MEAN_RearFS_data(1).S16.tibant_r = mean([RearFS_data(1).S16.tibant_r RearFS_data(2).S16.tibant_r RearFS_data(3).S16.tibant_r], 2);
MEAN_RearFS_data(1).S16.tibpost_r = mean([RearFS_data(1).S16.tibpost_r RearFS_data(2).S16.tibpost_r RearFS_data(3).S16.tibpost_r], 2);
MEAN_RearFS_data(1).S16.edl_r = mean([RearFS_data(1).S16.edl_r RearFS_data(2).S16.edl_r RearFS_data(3).S16.edl_r], 2);
MEAN_RearFS_data(1).S16.fdl_r = mean([RearFS_data(1).S16.fdl_r RearFS_data(2).S16.fdl_r RearFS_data(3).S16.fdl_r], 2);
MEAN_RearFS_data(1).S16.fhl_r = mean([RearFS_data(1).S16.fhl_r RearFS_data(2).S16.fhl_r RearFS_data(3).S16.fhl_r], 2);
MEAN_RearFS_data(1).S16.perbrev_r = mean([RearFS_data(1).S16.perbrev_r RearFS_data(2).S16.perbrev_r RearFS_data(3).S16.perbrev_r], 2);
MEAN_RearFS_data(1).S16.perlong_r = mean([RearFS_data(1).S16.perlong_r RearFS_data(2).S16.perlong_r RearFS_data(3).S16.perlong_r], 2);
MEAN_RearFS_data(1).S16.ehl_r = mean([RearFS_data(1).S16.ehl_r RearFS_data(2).S16.ehl_r RearFS_data(3).S16.ehl_r], 2);

MEAN_RearFS_data(1).S17.gaslat_r = mean([RearFS_data(1).S17.gaslat_r RearFS_data(2).S17.gaslat_r RearFS_data(3).S17.gaslat_r], 2);
MEAN_RearFS_data(1).S17.gasmed_r = mean([RearFS_data(1).S17.gasmed_r RearFS_data(2).S17.gasmed_r RearFS_data(3).S17.gasmed_r], 2);
MEAN_RearFS_data(1).S17.soleus_r = mean([RearFS_data(1).S17.soleus_r RearFS_data(2).S17.soleus_r RearFS_data(3).S17.soleus_r], 2);
MEAN_RearFS_data(1).S17.tibant_r = mean([RearFS_data(1).S17.tibant_r RearFS_data(2).S17.tibant_r RearFS_data(3).S17.tibant_r], 2);
MEAN_RearFS_data(1).S17.tibpost_r = mean([RearFS_data(1).S17.tibpost_r RearFS_data(2).S17.tibpost_r RearFS_data(3).S17.tibpost_r], 2);
MEAN_RearFS_data(1).S17.edl_r = mean([RearFS_data(1).S17.edl_r RearFS_data(2).S17.edl_r RearFS_data(3).S17.edl_r], 2);
MEAN_RearFS_data(1).S17.fdl_r = mean([RearFS_data(1).S17.fdl_r RearFS_data(2).S17.fdl_r RearFS_data(3).S17.fdl_r], 2);
MEAN_RearFS_data(1).S17.fhl_r = mean([RearFS_data(1).S17.fhl_r RearFS_data(2).S17.fhl_r RearFS_data(3).S17.fhl_r], 2);
MEAN_RearFS_data(1).S17.perbrev_r = mean([RearFS_data(1).S17.perbrev_r RearFS_data(2).S17.perbrev_r RearFS_data(3).S17.perbrev_r], 2);
MEAN_RearFS_data(1).S17.perlong_r = mean([RearFS_data(1).S17.perlong_r RearFS_data(2).S17.perlong_r RearFS_data(3).S17.perlong_r], 2);
MEAN_RearFS_data(1).S17.ehl_r = mean([RearFS_data(1).S17.ehl_r RearFS_data(2).S17.ehl_r RearFS_data(3).S17.ehl_r], 2);

MEAN_RearFS_data(1).S18.gaslat_r = mean([RearFS_data(1).S18.gaslat_r RearFS_data(2).S18.gaslat_r RearFS_data(3).S18.gaslat_r], 2);
MEAN_RearFS_data(1).S18.gasmed_r = mean([RearFS_data(1).S18.gasmed_r RearFS_data(2).S18.gasmed_r RearFS_data(3).S18.gasmed_r], 2);
MEAN_RearFS_data(1).S18.soleus_r = mean([RearFS_data(1).S18.soleus_r RearFS_data(2).S18.soleus_r RearFS_data(3).S18.soleus_r], 2);
MEAN_RearFS_data(1).S18.tibant_r = mean([RearFS_data(1).S18.tibant_r RearFS_data(2).S18.tibant_r RearFS_data(3).S18.tibant_r], 2);
MEAN_RearFS_data(1).S18.tibpost_r = mean([RearFS_data(1).S18.tibpost_r RearFS_data(2).S18.tibpost_r RearFS_data(3).S18.tibpost_r], 2);
MEAN_RearFS_data(1).S18.edl_r = mean([RearFS_data(1).S18.edl_r RearFS_data(2).S18.edl_r RearFS_data(3).S18.edl_r], 2);
MEAN_RearFS_data(1).S18.fdl_r = mean([RearFS_data(1).S18.fdl_r RearFS_data(2).S18.fdl_r RearFS_data(3).S18.fdl_r], 2);
MEAN_RearFS_data(1).S18.fhl_r = mean([RearFS_data(1).S18.fhl_r RearFS_data(2).S18.fhl_r RearFS_data(3).S18.fhl_r], 2);
MEAN_RearFS_data(1).S18.perbrev_r = mean([RearFS_data(1).S18.perbrev_r RearFS_data(2).S18.perbrev_r RearFS_data(3).S18.perbrev_r], 2);
MEAN_RearFS_data(1).S18.perlong_r = mean([RearFS_data(1).S18.perlong_r RearFS_data(2).S18.perlong_r RearFS_data(3).S18.perlong_r], 2);
MEAN_RearFS_data(1).S18.ehl_r = mean([RearFS_data(1).S18.ehl_r RearFS_data(2).S18.ehl_r RearFS_data(3).S18.ehl_r], 2);

MEAN_RearFS_data(1).S19.gaslat_r = mean([RearFS_data(1).S19.gaslat_r RearFS_data(2).S19.gaslat_r RearFS_data(3).S19.gaslat_r], 2);
MEAN_RearFS_data(1).S19.gasmed_r = mean([RearFS_data(1).S19.gasmed_r RearFS_data(2).S19.gasmed_r RearFS_data(3).S19.gasmed_r], 2);
MEAN_RearFS_data(1).S19.soleus_r = mean([RearFS_data(1).S19.soleus_r RearFS_data(2).S19.soleus_r RearFS_data(3).S19.soleus_r], 2);
MEAN_RearFS_data(1).S19.tibant_r = mean([RearFS_data(1).S19.tibant_r RearFS_data(2).S19.tibant_r RearFS_data(3).S19.tibant_r], 2);
MEAN_RearFS_data(1).S19.tibpost_r = mean([RearFS_data(1).S19.tibpost_r RearFS_data(2).S19.tibpost_r RearFS_data(3).S19.tibpost_r], 2);
MEAN_RearFS_data(1).S19.edl_r = mean([RearFS_data(1).S19.edl_r RearFS_data(2).S19.edl_r RearFS_data(3).S19.edl_r], 2);
MEAN_RearFS_data(1).S19.fdl_r = mean([RearFS_data(1).S19.fdl_r RearFS_data(2).S19.fdl_r RearFS_data(3).S19.fdl_r], 2);
MEAN_RearFS_data(1).S19.fhl_r = mean([RearFS_data(1).S19.fhl_r RearFS_data(2).S19.fhl_r RearFS_data(3).S19.fhl_r], 2);
MEAN_RearFS_data(1).S19.perbrev_r = mean([RearFS_data(1).S19.perbrev_r RearFS_data(2).S19.perbrev_r RearFS_data(3).S19.perbrev_r], 2);
MEAN_RearFS_data(1).S19.perlong_r = mean([RearFS_data(1).S19.perlong_r RearFS_data(2).S19.perlong_r RearFS_data(3).S19.perlong_r], 2);
MEAN_RearFS_data(1).S19.ehl_r = mean([RearFS_data(1).S19.ehl_r RearFS_data(2).S19.ehl_r RearFS_data(3).S19.ehl_r], 2);


%% Mean Natural foot strike
MEAN_NatFS_data(1).S01.gaslat_r = mean([NatFS_data(1).S01.gaslat_r NatFS_data(2).S01.gaslat_r NatFS_data(3).S01.gaslat_r], 2);
MEAN_NatFS_data(1).S01.gasmed_r = mean([NatFS_data(1).S01.gasmed_r NatFS_data(2).S01.gasmed_r NatFS_data(3).S01.gasmed_r], 2);
MEAN_NatFS_data(1).S01.soleus_r = mean([NatFS_data(1).S01.soleus_r NatFS_data(2).S01.soleus_r NatFS_data(3).S01.soleus_r], 2);
MEAN_NatFS_data(1).S01.tibant_r = mean([NatFS_data(1).S01.tibant_r NatFS_data(2).S01.tibant_r NatFS_data(3).S01.tibant_r], 2);
MEAN_NatFS_data(1).S01.tibpost_r = mean([NatFS_data(1).S01.tibpost_r NatFS_data(2).S01.tibpost_r NatFS_data(3).S01.tibpost_r], 2);
MEAN_NatFS_data(1).S01.edl_r = mean([NatFS_data(1).S01.edl_r NatFS_data(2).S01.edl_r NatFS_data(3).S01.edl_r], 2);
MEAN_NatFS_data(1).S01.fdl_r = mean([NatFS_data(1).S01.fdl_r NatFS_data(2).S01.fdl_r NatFS_data(3).S01.fdl_r], 2);
MEAN_NatFS_data(1).S01.fhl_r = mean([NatFS_data(1).S01.fhl_r NatFS_data(2).S01.fhl_r NatFS_data(3).S01.fhl_r], 2);
MEAN_NatFS_data(1).S01.perbrev_r = mean([NatFS_data(1).S01.perbrev_r NatFS_data(2).S01.perbrev_r NatFS_data(3).S01.perbrev_r], 2);
MEAN_NatFS_data(1).S01.perlong_r = mean([NatFS_data(1).S01.perlong_r NatFS_data(2).S01.perlong_r NatFS_data(3).S01.perlong_r], 2);
MEAN_NatFS_data(1).S01.ehl_r = mean([NatFS_data(1).S01.ehl_r NatFS_data(2).S01.ehl_r NatFS_data(3).S01.ehl_r], 2);

MEAN_NatFS_data(1).S02.gaslat_r = mean([NatFS_data(1).S02.gaslat_r NatFS_data(2).S02.gaslat_r NatFS_data(3).S02.gaslat_r], 2);
MEAN_NatFS_data(1).S02.gasmed_r = mean([NatFS_data(1).S02.gasmed_r NatFS_data(2).S02.gasmed_r NatFS_data(3).S02.gasmed_r], 2);
MEAN_NatFS_data(1).S02.soleus_r = mean([NatFS_data(1).S02.soleus_r NatFS_data(2).S02.soleus_r NatFS_data(3).S02.soleus_r], 2);
MEAN_NatFS_data(1).S02.tibant_r = mean([NatFS_data(1).S02.tibant_r NatFS_data(2).S02.tibant_r NatFS_data(3).S02.tibant_r], 2);
MEAN_NatFS_data(1).S02.tibpost_r = mean([NatFS_data(1).S02.tibpost_r NatFS_data(2).S02.tibpost_r NatFS_data(3).S02.tibpost_r], 2);
MEAN_NatFS_data(1).S02.edl_r = mean([NatFS_data(1).S02.edl_r NatFS_data(2).S02.edl_r NatFS_data(3).S02.edl_r], 2);
MEAN_NatFS_data(1).S02.fdl_r = mean([NatFS_data(1).S02.fdl_r NatFS_data(2).S02.fdl_r NatFS_data(3).S02.fdl_r], 2);
MEAN_NatFS_data(1).S02.fhl_r = mean([NatFS_data(1).S02.fhl_r NatFS_data(2).S02.fhl_r NatFS_data(3).S02.fhl_r], 2);
MEAN_NatFS_data(1).S02.perbrev_r = mean([NatFS_data(1).S02.perbrev_r NatFS_data(2).S02.perbrev_r NatFS_data(3).S02.perbrev_r], 2);
MEAN_NatFS_data(1).S02.perlong_r = mean([NatFS_data(1).S02.perlong_r NatFS_data(2).S02.perlong_r NatFS_data(3).S02.perlong_r], 2);
MEAN_NatFS_data(1).S02.ehl_r = mean([NatFS_data(1).S02.ehl_r NatFS_data(2).S02.ehl_r NatFS_data(3).S02.ehl_r], 2);

MEAN_NatFS_data(1).S03.gaslat_r = mean([NatFS_data(1).S03.gaslat_r NatFS_data(2).S03.gaslat_r NatFS_data(3).S03.gaslat_r], 2);
MEAN_NatFS_data(1).S03.gasmed_r = mean([NatFS_data(1).S03.gasmed_r NatFS_data(2).S03.gasmed_r NatFS_data(3).S03.gasmed_r], 2);
MEAN_NatFS_data(1).S03.soleus_r = mean([NatFS_data(1).S03.soleus_r NatFS_data(2).S03.soleus_r NatFS_data(3).S03.soleus_r], 2);
MEAN_NatFS_data(1).S03.tibant_r = mean([NatFS_data(1).S03.tibant_r NatFS_data(2).S03.tibant_r NatFS_data(3).S03.tibant_r], 2);
MEAN_NatFS_data(1).S03.tibpost_r = mean([NatFS_data(1).S03.tibpost_r NatFS_data(2).S03.tibpost_r NatFS_data(3).S03.tibpost_r], 2);
MEAN_NatFS_data(1).S03.edl_r = mean([NatFS_data(1).S03.edl_r NatFS_data(2).S03.edl_r NatFS_data(3).S03.edl_r], 2);
MEAN_NatFS_data(1).S03.fdl_r = mean([NatFS_data(1).S03.fdl_r NatFS_data(2).S03.fdl_r NatFS_data(3).S03.fdl_r], 2);
MEAN_NatFS_data(1).S03.fhl_r = mean([NatFS_data(1).S03.fhl_r NatFS_data(2).S03.fhl_r NatFS_data(3).S03.fhl_r], 2);
MEAN_NatFS_data(1).S03.perbrev_r = mean([NatFS_data(1).S03.perbrev_r NatFS_data(2).S03.perbrev_r NatFS_data(3).S03.perbrev_r], 2);
MEAN_NatFS_data(1).S03.perlong_r = mean([NatFS_data(1).S03.perlong_r NatFS_data(2).S03.perlong_r NatFS_data(3).S03.perlong_r], 2);
MEAN_NatFS_data(1).S03.ehl_r = mean([NatFS_data(1).S03.ehl_r NatFS_data(2).S03.ehl_r NatFS_data(3).S03.ehl_r], 2);

MEAN_NatFS_data(1).S04.gaslat_r = mean([NatFS_data(1).S04.gaslat_r NatFS_data(2).S04.gaslat_r NatFS_data(3).S04.gaslat_r], 2);
MEAN_NatFS_data(1).S04.gasmed_r = mean([NatFS_data(1).S04.gasmed_r NatFS_data(2).S04.gasmed_r NatFS_data(3).S04.gasmed_r], 2);
MEAN_NatFS_data(1).S04.soleus_r = mean([NatFS_data(1).S04.soleus_r NatFS_data(2).S04.soleus_r NatFS_data(3).S04.soleus_r], 2);
MEAN_NatFS_data(1).S04.tibant_r = mean([NatFS_data(1).S04.tibant_r NatFS_data(2).S04.tibant_r NatFS_data(3).S04.tibant_r], 2);
MEAN_NatFS_data(1).S04.tibpost_r = mean([NatFS_data(1).S04.tibpost_r NatFS_data(2).S04.tibpost_r NatFS_data(3).S04.tibpost_r], 2);
MEAN_NatFS_data(1).S04.edl_r = mean([NatFS_data(1).S04.edl_r NatFS_data(2).S04.edl_r NatFS_data(3).S04.edl_r], 2);
MEAN_NatFS_data(1).S04.fdl_r = mean([NatFS_data(1).S04.fdl_r NatFS_data(2).S04.fdl_r NatFS_data(3).S04.fdl_r], 2);
MEAN_NatFS_data(1).S04.fhl_r = mean([NatFS_data(1).S04.fhl_r NatFS_data(2).S04.fhl_r NatFS_data(3).S04.fhl_r], 2);
MEAN_NatFS_data(1).S04.perbrev_r = mean([NatFS_data(1).S04.perbrev_r NatFS_data(2).S04.perbrev_r NatFS_data(3).S04.perbrev_r], 2);
MEAN_NatFS_data(1).S04.perlong_r = mean([NatFS_data(1).S04.perlong_r NatFS_data(2).S04.perlong_r NatFS_data(3).S04.perlong_r], 2);
MEAN_NatFS_data(1).S04.ehl_r = mean([NatFS_data(1).S04.ehl_r NatFS_data(2).S04.ehl_r NatFS_data(3).S04.ehl_r], 2);

MEAN_NatFS_data(1).S05.gaslat_r = mean([NatFS_data(1).S05.gaslat_r NatFS_data(2).S05.gaslat_r NatFS_data(3).S05.gaslat_r], 2);
MEAN_NatFS_data(1).S05.gasmed_r = mean([NatFS_data(1).S05.gasmed_r NatFS_data(2).S05.gasmed_r NatFS_data(3).S05.gasmed_r], 2);
MEAN_NatFS_data(1).S05.soleus_r = mean([NatFS_data(1).S05.soleus_r NatFS_data(2).S05.soleus_r NatFS_data(3).S05.soleus_r], 2);
MEAN_NatFS_data(1).S05.tibant_r = mean([NatFS_data(1).S05.tibant_r NatFS_data(2).S05.tibant_r NatFS_data(3).S05.tibant_r], 2);
MEAN_NatFS_data(1).S05.tibpost_r = mean([NatFS_data(1).S05.tibpost_r NatFS_data(2).S05.tibpost_r NatFS_data(3).S05.tibpost_r], 2);
MEAN_NatFS_data(1).S05.edl_r = mean([NatFS_data(1).S05.edl_r NatFS_data(2).S05.edl_r NatFS_data(3).S05.edl_r], 2);
MEAN_NatFS_data(1).S05.fdl_r = mean([NatFS_data(1).S05.fdl_r NatFS_data(2).S05.fdl_r NatFS_data(3).S05.fdl_r], 2);
MEAN_NatFS_data(1).S05.fhl_r = mean([NatFS_data(1).S05.fhl_r NatFS_data(2).S05.fhl_r NatFS_data(3).S05.fhl_r], 2);
MEAN_NatFS_data(1).S05.perbrev_r = mean([NatFS_data(1).S05.perbrev_r NatFS_data(2).S05.perbrev_r NatFS_data(3).S05.perbrev_r], 2);
MEAN_NatFS_data(1).S05.perlong_r = mean([NatFS_data(1).S05.perlong_r NatFS_data(2).S05.perlong_r NatFS_data(3).S05.perlong_r], 2);
MEAN_NatFS_data(1).S05.ehl_r = mean([NatFS_data(1).S05.ehl_r NatFS_data(2).S05.ehl_r NatFS_data(3).S05.ehl_r], 2);

MEAN_NatFS_data(1).S06.gaslat_r = mean([NatFS_data(1).S06.gaslat_r NatFS_data(2).S06.gaslat_r NatFS_data(3).S06.gaslat_r], 2);
MEAN_NatFS_data(1).S06.gasmed_r = mean([NatFS_data(1).S06.gasmed_r NatFS_data(2).S06.gasmed_r NatFS_data(3).S06.gasmed_r], 2);
MEAN_NatFS_data(1).S06.soleus_r = mean([NatFS_data(1).S06.soleus_r NatFS_data(2).S06.soleus_r NatFS_data(3).S06.soleus_r], 2);
MEAN_NatFS_data(1).S06.tibant_r = mean([NatFS_data(1).S06.tibant_r NatFS_data(2).S06.tibant_r NatFS_data(3).S06.tibant_r], 2);
MEAN_NatFS_data(1).S06.tibpost_r = mean([NatFS_data(1).S06.tibpost_r NatFS_data(2).S06.tibpost_r NatFS_data(3).S06.tibpost_r], 2);
MEAN_NatFS_data(1).S06.edl_r = mean([NatFS_data(1).S06.edl_r NatFS_data(2).S06.edl_r NatFS_data(3).S06.edl_r], 2);
MEAN_NatFS_data(1).S06.fdl_r = mean([NatFS_data(1).S06.fdl_r NatFS_data(2).S06.fdl_r NatFS_data(3).S06.fdl_r], 2);
MEAN_NatFS_data(1).S06.fhl_r = mean([NatFS_data(1).S06.fhl_r NatFS_data(2).S06.fhl_r NatFS_data(3).S06.fhl_r], 2);
MEAN_NatFS_data(1).S06.perbrev_r = mean([NatFS_data(1).S06.perbrev_r NatFS_data(2).S06.perbrev_r NatFS_data(3).S06.perbrev_r], 2);
MEAN_NatFS_data(1).S06.perlong_r = mean([NatFS_data(1).S06.perlong_r NatFS_data(2).S06.perlong_r NatFS_data(3).S06.perlong_r], 2);
MEAN_NatFS_data(1).S06.ehl_r = mean([NatFS_data(1).S06.ehl_r NatFS_data(2).S06.ehl_r NatFS_data(3).S06.ehl_r], 2);

MEAN_NatFS_data(1).S07.gaslat_r = mean([NatFS_data(1).S07.gaslat_r NatFS_data(2).S07.gaslat_r NatFS_data(3).S07.gaslat_r], 2);
MEAN_NatFS_data(1).S07.gasmed_r = mean([NatFS_data(1).S07.gasmed_r NatFS_data(2).S07.gasmed_r NatFS_data(3).S07.gasmed_r], 2);
MEAN_NatFS_data(1).S07.soleus_r = mean([NatFS_data(1).S07.soleus_r NatFS_data(2).S07.soleus_r NatFS_data(3).S07.soleus_r], 2);
MEAN_NatFS_data(1).S07.tibant_r = mean([NatFS_data(1).S07.tibant_r NatFS_data(2).S07.tibant_r NatFS_data(3).S07.tibant_r], 2);
MEAN_NatFS_data(1).S07.tibpost_r = mean([NatFS_data(1).S07.tibpost_r NatFS_data(2).S07.tibpost_r NatFS_data(3).S07.tibpost_r], 2);
MEAN_NatFS_data(1).S07.edl_r = mean([NatFS_data(1).S07.edl_r NatFS_data(2).S07.edl_r NatFS_data(3).S07.edl_r], 2);
MEAN_NatFS_data(1).S07.fdl_r = mean([NatFS_data(1).S07.fdl_r NatFS_data(2).S07.fdl_r NatFS_data(3).S07.fdl_r], 2);
MEAN_NatFS_data(1).S07.fhl_r = mean([NatFS_data(1).S07.fhl_r NatFS_data(2).S07.fhl_r NatFS_data(3).S07.fhl_r], 2);
MEAN_NatFS_data(1).S07.perbrev_r = mean([NatFS_data(1).S07.perbrev_r NatFS_data(2).S07.perbrev_r NatFS_data(3).S07.perbrev_r], 2);
MEAN_NatFS_data(1).S07.perlong_r = mean([NatFS_data(1).S07.perlong_r NatFS_data(2).S07.perlong_r NatFS_data(3).S07.perlong_r], 2);
MEAN_NatFS_data(1).S07.ehl_r = mean([NatFS_data(1).S07.ehl_r NatFS_data(2).S07.ehl_r NatFS_data(3).S07.ehl_r], 2);

MEAN_NatFS_data(1).S08.gaslat_r = mean([NatFS_data(1).S08.gaslat_r NatFS_data(2).S08.gaslat_r NatFS_data(3).S08.gaslat_r], 2);
MEAN_NatFS_data(1).S08.gasmed_r = mean([NatFS_data(1).S08.gasmed_r NatFS_data(2).S08.gasmed_r NatFS_data(3).S08.gasmed_r], 2);
MEAN_NatFS_data(1).S08.soleus_r = mean([NatFS_data(1).S08.soleus_r NatFS_data(2).S08.soleus_r NatFS_data(3).S08.soleus_r], 2);
MEAN_NatFS_data(1).S08.tibant_r = mean([NatFS_data(1).S08.tibant_r NatFS_data(2).S08.tibant_r NatFS_data(3).S08.tibant_r], 2);
MEAN_NatFS_data(1).S08.tibpost_r = mean([NatFS_data(1).S08.tibpost_r NatFS_data(2).S08.tibpost_r NatFS_data(3).S08.tibpost_r], 2);
MEAN_NatFS_data(1).S08.edl_r = mean([NatFS_data(1).S08.edl_r NatFS_data(2).S08.edl_r NatFS_data(3).S08.edl_r], 2);
MEAN_NatFS_data(1).S08.fdl_r = mean([NatFS_data(1).S08.fdl_r NatFS_data(2).S08.fdl_r NatFS_data(3).S08.fdl_r], 2);
MEAN_NatFS_data(1).S08.fhl_r = mean([NatFS_data(1).S08.fhl_r NatFS_data(2).S08.fhl_r NatFS_data(3).S08.fhl_r], 2);
MEAN_NatFS_data(1).S08.perbrev_r = mean([NatFS_data(1).S08.perbrev_r NatFS_data(2).S08.perbrev_r NatFS_data(3).S08.perbrev_r], 2);
MEAN_NatFS_data(1).S08.perlong_r = mean([NatFS_data(1).S08.perlong_r NatFS_data(2).S08.perlong_r NatFS_data(3).S08.perlong_r], 2);
MEAN_NatFS_data(1).S08.ehl_r = mean([NatFS_data(1).S08.ehl_r NatFS_data(2).S08.ehl_r NatFS_data(3).S08.ehl_r], 2);

MEAN_NatFS_data(1).S09.gaslat_r = mean([NatFS_data(1).S09.gaslat_r NatFS_data(2).S09.gaslat_r NatFS_data(3).S09.gaslat_r], 2);
MEAN_NatFS_data(1).S09.gasmed_r = mean([NatFS_data(1).S09.gasmed_r NatFS_data(2).S09.gasmed_r NatFS_data(3).S09.gasmed_r], 2);
MEAN_NatFS_data(1).S09.soleus_r = mean([NatFS_data(1).S09.soleus_r NatFS_data(2).S09.soleus_r NatFS_data(3).S09.soleus_r], 2);
MEAN_NatFS_data(1).S09.tibant_r = mean([NatFS_data(1).S09.tibant_r NatFS_data(2).S09.tibant_r NatFS_data(3).S09.tibant_r], 2);
MEAN_NatFS_data(1).S09.tibpost_r = mean([NatFS_data(1).S09.tibpost_r NatFS_data(2).S09.tibpost_r NatFS_data(3).S09.tibpost_r], 2);
MEAN_NatFS_data(1).S09.edl_r = mean([NatFS_data(1).S09.edl_r NatFS_data(2).S09.edl_r NatFS_data(3).S09.edl_r], 2);
MEAN_NatFS_data(1).S09.fdl_r = mean([NatFS_data(1).S09.fdl_r NatFS_data(2).S09.fdl_r NatFS_data(3).S09.fdl_r], 2);
MEAN_NatFS_data(1).S09.fhl_r = mean([NatFS_data(1).S09.fhl_r NatFS_data(2).S09.fhl_r NatFS_data(3).S09.fhl_r], 2);
MEAN_NatFS_data(1).S09.perbrev_r = mean([NatFS_data(1).S09.perbrev_r NatFS_data(2).S09.perbrev_r NatFS_data(3).S09.perbrev_r], 2);
MEAN_NatFS_data(1).S09.perlong_r = mean([NatFS_data(1).S09.perlong_r NatFS_data(2).S09.perlong_r NatFS_data(3).S09.perlong_r], 2);
MEAN_NatFS_data(1).S09.ehl_r = mean([NatFS_data(1).S09.ehl_r NatFS_data(2).S09.ehl_r NatFS_data(3).S09.ehl_r], 2);

MEAN_NatFS_data(1).S10.gaslat_r = mean([NatFS_data(1).S10.gaslat_r NatFS_data(2).S10.gaslat_r NatFS_data(3).S10.gaslat_r], 2);
MEAN_NatFS_data(1).S10.gasmed_r = mean([NatFS_data(1).S10.gasmed_r NatFS_data(2).S10.gasmed_r NatFS_data(3).S10.gasmed_r], 2);
MEAN_NatFS_data(1).S10.soleus_r = mean([NatFS_data(1).S10.soleus_r NatFS_data(2).S10.soleus_r NatFS_data(3).S10.soleus_r], 2);
MEAN_NatFS_data(1).S10.tibant_r = mean([NatFS_data(1).S10.tibant_r NatFS_data(2).S10.tibant_r NatFS_data(3).S10.tibant_r], 2);
MEAN_NatFS_data(1).S10.tibpost_r = mean([NatFS_data(1).S10.tibpost_r NatFS_data(2).S10.tibpost_r NatFS_data(3).S10.tibpost_r], 2);
MEAN_NatFS_data(1).S10.edl_r = mean([NatFS_data(1).S10.edl_r NatFS_data(2).S10.edl_r NatFS_data(3).S10.edl_r], 2);
MEAN_NatFS_data(1).S10.fdl_r = mean([NatFS_data(1).S10.fdl_r NatFS_data(2).S10.fdl_r NatFS_data(3).S10.fdl_r], 2);
MEAN_NatFS_data(1).S10.fhl_r = mean([NatFS_data(1).S10.fhl_r NatFS_data(2).S10.fhl_r NatFS_data(3).S10.fhl_r], 2);
MEAN_NatFS_data(1).S10.perbrev_r = mean([NatFS_data(1).S10.perbrev_r NatFS_data(2).S10.perbrev_r NatFS_data(3).S10.perbrev_r], 2);
MEAN_NatFS_data(1).S10.perlong_r = mean([NatFS_data(1).S10.perlong_r NatFS_data(2).S10.perlong_r NatFS_data(3).S10.perlong_r], 2);
MEAN_NatFS_data(1).S10.ehl_r = mean([NatFS_data(1).S10.ehl_r NatFS_data(2).S10.ehl_r NatFS_data(3).S10.ehl_r], 2);

MEAN_NatFS_data(1).S11.gaslat_r = mean([NatFS_data(1).S11.gaslat_r NatFS_data(2).S11.gaslat_r NatFS_data(3).S11.gaslat_r], 2);
MEAN_NatFS_data(1).S11.gasmed_r = mean([NatFS_data(1).S11.gasmed_r NatFS_data(2).S11.gasmed_r NatFS_data(3).S11.gasmed_r], 2);
MEAN_NatFS_data(1).S11.soleus_r = mean([NatFS_data(1).S11.soleus_r NatFS_data(2).S11.soleus_r NatFS_data(3).S11.soleus_r], 2);
MEAN_NatFS_data(1).S11.tibant_r = mean([NatFS_data(1).S11.tibant_r NatFS_data(2).S11.tibant_r NatFS_data(3).S11.tibant_r], 2);
MEAN_NatFS_data(1).S11.tibpost_r = mean([NatFS_data(1).S11.tibpost_r NatFS_data(2).S11.tibpost_r NatFS_data(3).S11.tibpost_r], 2);
MEAN_NatFS_data(1).S11.edl_r = mean([NatFS_data(1).S11.edl_r NatFS_data(2).S11.edl_r NatFS_data(3).S11.edl_r], 2);
MEAN_NatFS_data(1).S11.fdl_r = mean([NatFS_data(1).S11.fdl_r NatFS_data(2).S11.fdl_r NatFS_data(3).S11.fdl_r], 2);
MEAN_NatFS_data(1).S11.fhl_r = mean([NatFS_data(1).S11.fhl_r NatFS_data(2).S11.fhl_r NatFS_data(3).S11.fhl_r], 2);
MEAN_NatFS_data(1).S11.perbrev_r = mean([NatFS_data(1).S11.perbrev_r NatFS_data(2).S11.perbrev_r NatFS_data(3).S11.perbrev_r], 2);
MEAN_NatFS_data(1).S11.perlong_r = mean([NatFS_data(1).S11.perlong_r NatFS_data(2).S11.perlong_r NatFS_data(3).S11.perlong_r], 2);
MEAN_NatFS_data(1).S11.ehl_r = mean([NatFS_data(1).S11.ehl_r NatFS_data(2).S11.ehl_r NatFS_data(3).S11.ehl_r], 2);

MEAN_NatFS_data(1).S12.gaslat_r = mean([NatFS_data(1).S12.gaslat_r NatFS_data(2).S12.gaslat_r NatFS_data(3).S12.gaslat_r], 2);
MEAN_NatFS_data(1).S12.gasmed_r = mean([NatFS_data(1).S12.gasmed_r NatFS_data(2).S12.gasmed_r NatFS_data(3).S12.gasmed_r], 2);
MEAN_NatFS_data(1).S12.soleus_r = mean([NatFS_data(1).S12.soleus_r NatFS_data(2).S12.soleus_r NatFS_data(3).S12.soleus_r], 2);
MEAN_NatFS_data(1).S12.tibant_r = mean([NatFS_data(1).S12.tibant_r NatFS_data(2).S12.tibant_r NatFS_data(3).S12.tibant_r], 2);
MEAN_NatFS_data(1).S12.tibpost_r = mean([NatFS_data(1).S12.tibpost_r NatFS_data(2).S12.tibpost_r NatFS_data(3).S12.tibpost_r], 2);
MEAN_NatFS_data(1).S12.edl_r = mean([NatFS_data(1).S12.edl_r NatFS_data(2).S12.edl_r NatFS_data(3).S12.edl_r], 2);
MEAN_NatFS_data(1).S12.fdl_r = mean([NatFS_data(1).S12.fdl_r NatFS_data(2).S12.fdl_r NatFS_data(3).S12.fdl_r], 2);
MEAN_NatFS_data(1).S12.fhl_r = mean([NatFS_data(1).S12.fhl_r NatFS_data(2).S12.fhl_r NatFS_data(3).S12.fhl_r], 2);
MEAN_NatFS_data(1).S12.perbrev_r = mean([NatFS_data(1).S12.perbrev_r NatFS_data(2).S12.perbrev_r NatFS_data(3).S12.perbrev_r], 2);
MEAN_NatFS_data(1).S12.perlong_r = mean([NatFS_data(1).S12.perlong_r NatFS_data(2).S12.perlong_r NatFS_data(3).S12.perlong_r], 2);
MEAN_NatFS_data(1).S12.ehl_r = mean([NatFS_data(1).S12.ehl_r NatFS_data(2).S12.ehl_r NatFS_data(3).S12.ehl_r], 2);

MEAN_NatFS_data(1).S13.gaslat_r = mean([NatFS_data(1).S13.gaslat_r NatFS_data(2).S13.gaslat_r NatFS_data(3).S13.gaslat_r], 2);
MEAN_NatFS_data(1).S13.gasmed_r = mean([NatFS_data(1).S13.gasmed_r NatFS_data(2).S13.gasmed_r NatFS_data(3).S13.gasmed_r], 2);
MEAN_NatFS_data(1).S13.soleus_r = mean([NatFS_data(1).S13.soleus_r NatFS_data(2).S13.soleus_r NatFS_data(3).S13.soleus_r], 2);
MEAN_NatFS_data(1).S13.tibant_r = mean([NatFS_data(1).S13.tibant_r NatFS_data(2).S13.tibant_r NatFS_data(3).S13.tibant_r], 2);
MEAN_NatFS_data(1).S13.tibpost_r = mean([NatFS_data(1).S13.tibpost_r NatFS_data(2).S13.tibpost_r NatFS_data(3).S13.tibpost_r], 2);
MEAN_NatFS_data(1).S13.edl_r = mean([NatFS_data(1).S13.edl_r NatFS_data(2).S13.edl_r NatFS_data(3).S13.edl_r], 2);
MEAN_NatFS_data(1).S13.fdl_r = mean([NatFS_data(1).S13.fdl_r NatFS_data(2).S13.fdl_r NatFS_data(3).S13.fdl_r], 2);
MEAN_NatFS_data(1).S13.fhl_r = mean([NatFS_data(1).S13.fhl_r NatFS_data(2).S13.fhl_r NatFS_data(3).S13.fhl_r], 2);
MEAN_NatFS_data(1).S13.perbrev_r = mean([NatFS_data(1).S13.perbrev_r NatFS_data(2).S13.perbrev_r NatFS_data(3).S13.perbrev_r], 2);
MEAN_NatFS_data(1).S13.perlong_r = mean([NatFS_data(1).S13.perlong_r NatFS_data(2).S13.perlong_r NatFS_data(3).S13.perlong_r], 2);
MEAN_NatFS_data(1).S13.ehl_r = mean([NatFS_data(1).S13.ehl_r NatFS_data(2).S13.ehl_r NatFS_data(3).S13.ehl_r], 2);

MEAN_NatFS_data(1).S14.gaslat_r = mean([NatFS_data(1).S14.gaslat_r NatFS_data(2).S14.gaslat_r NatFS_data(3).S14.gaslat_r], 2);
MEAN_NatFS_data(1).S14.gasmed_r = mean([NatFS_data(1).S14.gasmed_r NatFS_data(2).S14.gasmed_r NatFS_data(3).S14.gasmed_r], 2);
MEAN_NatFS_data(1).S14.soleus_r = mean([NatFS_data(1).S14.soleus_r NatFS_data(2).S14.soleus_r NatFS_data(3).S14.soleus_r], 2);
MEAN_NatFS_data(1).S14.tibant_r = mean([NatFS_data(1).S14.tibant_r NatFS_data(2).S14.tibant_r NatFS_data(3).S14.tibant_r], 2);
MEAN_NatFS_data(1).S14.tibpost_r = mean([NatFS_data(1).S14.tibpost_r NatFS_data(2).S14.tibpost_r NatFS_data(3).S14.tibpost_r], 2);
MEAN_NatFS_data(1).S14.edl_r = mean([NatFS_data(1).S14.edl_r NatFS_data(2).S14.edl_r NatFS_data(3).S14.edl_r], 2);
MEAN_NatFS_data(1).S14.fdl_r = mean([NatFS_data(1).S14.fdl_r NatFS_data(2).S14.fdl_r NatFS_data(3).S14.fdl_r], 2);
MEAN_NatFS_data(1).S14.fhl_r = mean([NatFS_data(1).S14.fhl_r NatFS_data(2).S14.fhl_r NatFS_data(3).S14.fhl_r], 2);
MEAN_NatFS_data(1).S14.perbrev_r = mean([NatFS_data(1).S14.perbrev_r NatFS_data(2).S14.perbrev_r NatFS_data(3).S14.perbrev_r], 2);
MEAN_NatFS_data(1).S14.perlong_r = mean([NatFS_data(1).S14.perlong_r NatFS_data(2).S14.perlong_r NatFS_data(3).S14.perlong_r], 2);
MEAN_NatFS_data(1).S14.ehl_r = mean([NatFS_data(1).S14.ehl_r NatFS_data(2).S14.ehl_r NatFS_data(3).S14.ehl_r], 2);

MEAN_NatFS_data(1).S15.gaslat_r = mean([NatFS_data(1).S15.gaslat_r NatFS_data(2).S15.gaslat_r NatFS_data(3).S15.gaslat_r], 2);
MEAN_NatFS_data(1).S15.gasmed_r = mean([NatFS_data(1).S15.gasmed_r NatFS_data(2).S15.gasmed_r NatFS_data(3).S15.gasmed_r], 2);
MEAN_NatFS_data(1).S15.soleus_r = mean([NatFS_data(1).S15.soleus_r NatFS_data(2).S15.soleus_r NatFS_data(3).S15.soleus_r], 2);
MEAN_NatFS_data(1).S15.tibant_r = mean([NatFS_data(1).S15.tibant_r NatFS_data(2).S15.tibant_r NatFS_data(3).S15.tibant_r], 2);
MEAN_NatFS_data(1).S15.tibpost_r = mean([NatFS_data(1).S15.tibpost_r NatFS_data(2).S15.tibpost_r NatFS_data(3).S15.tibpost_r], 2);
MEAN_NatFS_data(1).S15.edl_r = mean([NatFS_data(1).S15.edl_r NatFS_data(2).S15.edl_r NatFS_data(3).S15.edl_r], 2);
MEAN_NatFS_data(1).S15.fdl_r = mean([NatFS_data(1).S15.fdl_r NatFS_data(2).S15.fdl_r NatFS_data(3).S15.fdl_r], 2);
MEAN_NatFS_data(1).S15.fhl_r = mean([NatFS_data(1).S15.fhl_r NatFS_data(2).S15.fhl_r NatFS_data(3).S15.fhl_r], 2);
MEAN_NatFS_data(1).S15.perbrev_r = mean([NatFS_data(1).S15.perbrev_r NatFS_data(2).S15.perbrev_r NatFS_data(3).S15.perbrev_r], 2);
MEAN_NatFS_data(1).S15.perlong_r = mean([NatFS_data(1).S15.perlong_r NatFS_data(2).S15.perlong_r NatFS_data(3).S15.perlong_r], 2);
MEAN_NatFS_data(1).S15.ehl_r = mean([NatFS_data(1).S15.ehl_r NatFS_data(2).S15.ehl_r NatFS_data(3).S15.ehl_r], 2);

MEAN_NatFS_data(1).S16.gaslat_r = mean([NatFS_data(1).S16.gaslat_r NatFS_data(2).S16.gaslat_r NatFS_data(3).S16.gaslat_r], 2);
MEAN_NatFS_data(1).S16.gasmed_r = mean([NatFS_data(1).S16.gasmed_r NatFS_data(2).S16.gasmed_r NatFS_data(3).S16.gasmed_r], 2);
MEAN_NatFS_data(1).S16.soleus_r = mean([NatFS_data(1).S16.soleus_r NatFS_data(2).S16.soleus_r NatFS_data(3).S16.soleus_r], 2);
MEAN_NatFS_data(1).S16.tibant_r = mean([NatFS_data(1).S16.tibant_r NatFS_data(2).S16.tibant_r NatFS_data(3).S16.tibant_r], 2);
MEAN_NatFS_data(1).S16.tibpost_r = mean([NatFS_data(1).S16.tibpost_r NatFS_data(2).S16.tibpost_r NatFS_data(3).S16.tibpost_r], 2);
MEAN_NatFS_data(1).S16.edl_r = mean([NatFS_data(1).S16.edl_r NatFS_data(2).S16.edl_r NatFS_data(3).S16.edl_r], 2);
MEAN_NatFS_data(1).S16.fdl_r = mean([NatFS_data(1).S16.fdl_r NatFS_data(2).S16.fdl_r NatFS_data(3).S16.fdl_r], 2);
MEAN_NatFS_data(1).S16.fhl_r = mean([NatFS_data(1).S16.fhl_r NatFS_data(2).S16.fhl_r NatFS_data(3).S16.fhl_r], 2);
MEAN_NatFS_data(1).S16.perbrev_r = mean([NatFS_data(1).S16.perbrev_r NatFS_data(2).S16.perbrev_r NatFS_data(3).S16.perbrev_r], 2);
MEAN_NatFS_data(1).S16.perlong_r = mean([NatFS_data(1).S16.perlong_r NatFS_data(2).S16.perlong_r NatFS_data(3).S16.perlong_r], 2);
MEAN_NatFS_data(1).S16.ehl_r = mean([NatFS_data(1).S16.ehl_r NatFS_data(2).S16.ehl_r NatFS_data(3).S16.ehl_r], 2);

MEAN_NatFS_data(1).S17.gaslat_r = mean([NatFS_data(1).S17.gaslat_r NatFS_data(2).S17.gaslat_r NatFS_data(3).S17.gaslat_r], 2);
MEAN_NatFS_data(1).S17.gasmed_r = mean([NatFS_data(1).S17.gasmed_r NatFS_data(2).S17.gasmed_r NatFS_data(3).S17.gasmed_r], 2);
MEAN_NatFS_data(1).S17.soleus_r = mean([NatFS_data(1).S17.soleus_r NatFS_data(2).S17.soleus_r NatFS_data(3).S17.soleus_r], 2);
MEAN_NatFS_data(1).S17.tibant_r = mean([NatFS_data(1).S17.tibant_r NatFS_data(2).S17.tibant_r NatFS_data(3).S17.tibant_r], 2);
MEAN_NatFS_data(1).S17.tibpost_r = mean([NatFS_data(1).S17.tibpost_r NatFS_data(2).S17.tibpost_r NatFS_data(3).S17.tibpost_r], 2);
MEAN_NatFS_data(1).S17.edl_r = mean([NatFS_data(1).S17.edl_r NatFS_data(2).S17.edl_r NatFS_data(3).S17.edl_r], 2);
MEAN_NatFS_data(1).S17.fdl_r = mean([NatFS_data(1).S17.fdl_r NatFS_data(2).S17.fdl_r NatFS_data(3).S17.fdl_r], 2);
MEAN_NatFS_data(1).S17.fhl_r = mean([NatFS_data(1).S17.fhl_r NatFS_data(2).S17.fhl_r NatFS_data(3).S17.fhl_r], 2);
MEAN_NatFS_data(1).S17.perbrev_r = mean([NatFS_data(1).S17.perbrev_r NatFS_data(2).S17.perbrev_r NatFS_data(3).S17.perbrev_r], 2);
MEAN_NatFS_data(1).S17.perlong_r = mean([NatFS_data(1).S17.perlong_r NatFS_data(2).S17.perlong_r NatFS_data(3).S17.perlong_r], 2);
MEAN_NatFS_data(1).S17.ehl_r = mean([NatFS_data(1).S17.ehl_r NatFS_data(2).S17.ehl_r NatFS_data(3).S17.ehl_r], 2);

MEAN_NatFS_data(1).S18.gaslat_r = mean([NatFS_data(1).S18.gaslat_r NatFS_data(2).S18.gaslat_r NatFS_data(3).S18.gaslat_r], 2);
MEAN_NatFS_data(1).S18.gasmed_r = mean([NatFS_data(1).S18.gasmed_r NatFS_data(2).S18.gasmed_r NatFS_data(3).S18.gasmed_r], 2);
MEAN_NatFS_data(1).S18.soleus_r = mean([NatFS_data(1).S18.soleus_r NatFS_data(2).S18.soleus_r NatFS_data(3).S18.soleus_r], 2);
MEAN_NatFS_data(1).S18.tibant_r = mean([NatFS_data(1).S18.tibant_r NatFS_data(2).S18.tibant_r NatFS_data(3).S18.tibant_r], 2);
MEAN_NatFS_data(1).S18.tibpost_r = mean([NatFS_data(1).S18.tibpost_r NatFS_data(2).S18.tibpost_r NatFS_data(3).S18.tibpost_r], 2);
MEAN_NatFS_data(1).S18.edl_r = mean([NatFS_data(1).S18.edl_r NatFS_data(2).S18.edl_r NatFS_data(3).S18.edl_r], 2);
MEAN_NatFS_data(1).S18.fdl_r = mean([NatFS_data(1).S18.fdl_r NatFS_data(2).S18.fdl_r NatFS_data(3).S18.fdl_r], 2);
MEAN_NatFS_data(1).S18.fhl_r = mean([NatFS_data(1).S18.fhl_r NatFS_data(2).S18.fhl_r NatFS_data(3).S18.fhl_r], 2);
MEAN_NatFS_data(1).S18.perbrev_r = mean([NatFS_data(1).S18.perbrev_r NatFS_data(2).S18.perbrev_r NatFS_data(3).S18.perbrev_r], 2);
MEAN_NatFS_data(1).S18.perlong_r = mean([NatFS_data(1).S18.perlong_r NatFS_data(2).S18.perlong_r NatFS_data(3).S18.perlong_r], 2);
MEAN_NatFS_data(1).S18.ehl_r = mean([NatFS_data(1).S18.ehl_r NatFS_data(2).S18.ehl_r NatFS_data(3).S18.ehl_r], 2);

MEAN_NatFS_data(1).S19.gaslat_r = mean([NatFS_data(1).S19.gaslat_r NatFS_data(2).S19.gaslat_r NatFS_data(3).S19.gaslat_r], 2);
MEAN_NatFS_data(1).S19.gasmed_r = mean([NatFS_data(1).S19.gasmed_r NatFS_data(2).S19.gasmed_r NatFS_data(3).S19.gasmed_r], 2);
MEAN_NatFS_data(1).S19.soleus_r = mean([NatFS_data(1).S19.soleus_r NatFS_data(2).S19.soleus_r NatFS_data(3).S19.soleus_r], 2);
MEAN_NatFS_data(1).S19.tibant_r = mean([NatFS_data(1).S19.tibant_r NatFS_data(2).S19.tibant_r NatFS_data(3).S19.tibant_r], 2);
MEAN_NatFS_data(1).S19.tibpost_r = mean([NatFS_data(1).S19.tibpost_r NatFS_data(2).S19.tibpost_r NatFS_data(3).S19.tibpost_r], 2);
MEAN_NatFS_data(1).S19.edl_r = mean([NatFS_data(1).S19.edl_r NatFS_data(2).S19.edl_r NatFS_data(3).S19.edl_r], 2);
MEAN_NatFS_data(1).S19.fdl_r = mean([NatFS_data(1).S19.fdl_r NatFS_data(2).S19.fdl_r NatFS_data(3).S19.fdl_r], 2);
MEAN_NatFS_data(1).S19.fhl_r = mean([NatFS_data(1).S19.fhl_r NatFS_data(2).S19.fhl_r NatFS_data(3).S19.fhl_r], 2);
MEAN_NatFS_data(1).S19.perbrev_r = mean([NatFS_data(1).S19.perbrev_r NatFS_data(2).S19.perbrev_r NatFS_data(3).S19.perbrev_r], 2);
MEAN_NatFS_data(1).S19.perlong_r = mean([NatFS_data(1).S19.perlong_r NatFS_data(2).S19.perlong_r NatFS_data(3).S19.perlong_r], 2);
MEAN_NatFS_data(1).S19.ehl_r = mean([NatFS_data(1).S19.ehl_r NatFS_data(2).S19.ehl_r NatFS_data(3).S19.ehl_r], 2);

%% Total mean for each subject (ForeFS)

Total_MEAN_ForeFS_data(1).gaslat_r = [MEAN_ForeFS_data(1).S01.gaslat_r MEAN_ForeFS_data(1).S02.gaslat_r MEAN_ForeFS_data(1).S03.gaslat_r MEAN_ForeFS_data(1).S04.gaslat_r...
    MEAN_ForeFS_data(1).S05.gaslat_r MEAN_ForeFS_data(1).S06.gaslat_r MEAN_ForeFS_data(1).S07.gaslat_r MEAN_ForeFS_data(1).S08.gaslat_r MEAN_ForeFS_data(1).S09.gaslat_r...
    MEAN_ForeFS_data(1).S10.gaslat_r MEAN_ForeFS_data(1).S11.gaslat_r MEAN_ForeFS_data(1).S12.gaslat_r MEAN_ForeFS_data(1).S13.gaslat_r MEAN_ForeFS_data(1).S14.gaslat_r...
    MEAN_ForeFS_data(1).S15.gaslat_r MEAN_ForeFS_data(1).S16.gaslat_r MEAN_ForeFS_data(1).S17.gaslat_r MEAN_ForeFS_data(1).S18.gaslat_r MEAN_ForeFS_data(1).S19.gaslat_r ];

Total_MEAN_ForeFS_data(1).gasmed_r = [MEAN_ForeFS_data(1).S01.gasmed_r MEAN_ForeFS_data(1).S02.gasmed_r MEAN_ForeFS_data(1).S03.gasmed_r MEAN_ForeFS_data(1).S04.gasmed_r...
    MEAN_ForeFS_data(1).S05.gasmed_r MEAN_ForeFS_data(1).S06.gasmed_r MEAN_ForeFS_data(1).S07.gasmed_r MEAN_ForeFS_data(1).S08.gasmed_r MEAN_ForeFS_data(1).S09.gasmed_r...
    MEAN_ForeFS_data(1).S10.gasmed_r MEAN_ForeFS_data(1).S11.gasmed_r MEAN_ForeFS_data(1).S12.gasmed_r MEAN_ForeFS_data(1).S13.gasmed_r MEAN_ForeFS_data(1).S14.gasmed_r...
    MEAN_ForeFS_data(1).S15.gasmed_r MEAN_ForeFS_data(1).S16.gasmed_r MEAN_ForeFS_data(1).S17.gasmed_r MEAN_ForeFS_data(1).S18.gasmed_r MEAN_ForeFS_data(1).S19.gasmed_r ];

Total_MEAN_ForeFS_data(1).soleus_r = [MEAN_ForeFS_data(1).S01.soleus_r MEAN_ForeFS_data(1).S02.soleus_r MEAN_ForeFS_data(1).S03.soleus_r MEAN_ForeFS_data(1).S04.soleus_r...
    MEAN_ForeFS_data(1).S05.soleus_r MEAN_ForeFS_data(1).S06.soleus_r MEAN_ForeFS_data(1).S07.soleus_r MEAN_ForeFS_data(1).S08.soleus_r MEAN_ForeFS_data(1).S09.soleus_r...
    MEAN_ForeFS_data(1).S10.soleus_r MEAN_ForeFS_data(1).S11.soleus_r MEAN_ForeFS_data(1).S12.soleus_r MEAN_ForeFS_data(1).S13.soleus_r MEAN_ForeFS_data(1).S14.soleus_r...
    MEAN_ForeFS_data(1).S15.soleus_r MEAN_ForeFS_data(1).S16.soleus_r MEAN_ForeFS_data(1).S17.soleus_r MEAN_ForeFS_data(1).S18.soleus_r MEAN_ForeFS_data(1).S19.soleus_r ];

Total_MEAN_ForeFS_data(1).tibant_r = [MEAN_ForeFS_data(1).S01.tibant_r MEAN_ForeFS_data(1).S02.tibant_r MEAN_ForeFS_data(1).S03.tibant_r MEAN_ForeFS_data(1).S04.tibant_r...
    MEAN_ForeFS_data(1).S05.tibant_r MEAN_ForeFS_data(1).S06.tibant_r MEAN_ForeFS_data(1).S07.tibant_r MEAN_ForeFS_data(1).S08.tibant_r MEAN_ForeFS_data(1).S09.tibant_r...
    MEAN_ForeFS_data(1).S10.tibant_r MEAN_ForeFS_data(1).S11.tibant_r MEAN_ForeFS_data(1).S12.tibant_r MEAN_ForeFS_data(1).S13.tibant_r MEAN_ForeFS_data(1).S14.tibant_r...
    MEAN_ForeFS_data(1).S15.tibant_r MEAN_ForeFS_data(1).S16.tibant_r MEAN_ForeFS_data(1).S17.tibant_r MEAN_ForeFS_data(1).S18.tibant_r MEAN_ForeFS_data(1).S19.tibant_r ];

Total_MEAN_ForeFS_data(1).tibpost_r = [MEAN_ForeFS_data(1).S01.tibpost_r MEAN_ForeFS_data(1).S02.tibpost_r MEAN_ForeFS_data(1).S03.tibpost_r MEAN_ForeFS_data(1).S04.tibpost_r...
    MEAN_ForeFS_data(1).S05.tibpost_r MEAN_ForeFS_data(1).S06.tibpost_r MEAN_ForeFS_data(1).S07.tibpost_r MEAN_ForeFS_data(1).S08.tibpost_r MEAN_ForeFS_data(1).S09.tibpost_r...
    MEAN_ForeFS_data(1).S10.tibpost_r MEAN_ForeFS_data(1).S11.tibpost_r MEAN_ForeFS_data(1).S12.tibpost_r MEAN_ForeFS_data(1).S13.tibpost_r MEAN_ForeFS_data(1).S14.tibpost_r...
    MEAN_ForeFS_data(1).S15.tibpost_r MEAN_ForeFS_data(1).S16.tibpost_r MEAN_ForeFS_data(1).S17.tibpost_r MEAN_ForeFS_data(1).S18.tibpost_r MEAN_ForeFS_data(1).S19.tibpost_r ];

Total_MEAN_ForeFS_data(1).edl_r = [MEAN_ForeFS_data(1).S01.edl_r MEAN_ForeFS_data(1).S02.edl_r MEAN_ForeFS_data(1).S03.edl_r MEAN_ForeFS_data(1).S04.edl_r...
    MEAN_ForeFS_data(1).S05.edl_r MEAN_ForeFS_data(1).S06.edl_r MEAN_ForeFS_data(1).S07.edl_r MEAN_ForeFS_data(1).S08.edl_r MEAN_ForeFS_data(1).S09.edl_r...
    MEAN_ForeFS_data(1).S10.edl_r MEAN_ForeFS_data(1).S11.edl_r MEAN_ForeFS_data(1).S12.edl_r MEAN_ForeFS_data(1).S13.edl_r MEAN_ForeFS_data(1).S14.edl_r...
    MEAN_ForeFS_data(1).S15.edl_r MEAN_ForeFS_data(1).S16.edl_r MEAN_ForeFS_data(1).S17.edl_r MEAN_ForeFS_data(1).S18.edl_r MEAN_ForeFS_data(1).S19.edl_r ];

Total_MEAN_ForeFS_data(1).fdl_r = [MEAN_ForeFS_data(1).S01.fdl_r MEAN_ForeFS_data(1).S02.fdl_r MEAN_ForeFS_data(1).S03.fdl_r MEAN_ForeFS_data(1).S04.fdl_r...
    MEAN_ForeFS_data(1).S05.fdl_r MEAN_ForeFS_data(1).S06.fdl_r MEAN_ForeFS_data(1).S07.fdl_r MEAN_ForeFS_data(1).S08.fdl_r MEAN_ForeFS_data(1).S09.fdl_r...
    MEAN_ForeFS_data(1).S10.fdl_r MEAN_ForeFS_data(1).S11.fdl_r MEAN_ForeFS_data(1).S12.fdl_r MEAN_ForeFS_data(1).S13.fdl_r MEAN_ForeFS_data(1).S14.fdl_r...
    MEAN_ForeFS_data(1).S15.fdl_r MEAN_ForeFS_data(1).S16.fdl_r MEAN_ForeFS_data(1).S17.fdl_r MEAN_ForeFS_data(1).S18.fdl_r MEAN_ForeFS_data(1).S19.fdl_r ];

Total_MEAN_ForeFS_data(1).fhl_r = [MEAN_ForeFS_data(1).S01.fhl_r MEAN_ForeFS_data(1).S02.fhl_r MEAN_ForeFS_data(1).S03.fhl_r MEAN_ForeFS_data(1).S04.fhl_r...
    MEAN_ForeFS_data(1).S05.fhl_r MEAN_ForeFS_data(1).S06.fhl_r MEAN_ForeFS_data(1).S07.fhl_r MEAN_ForeFS_data(1).S08.fhl_r MEAN_ForeFS_data(1).S09.fhl_r...
    MEAN_ForeFS_data(1).S10.fhl_r MEAN_ForeFS_data(1).S11.fhl_r MEAN_ForeFS_data(1).S12.fhl_r MEAN_ForeFS_data(1).S13.fhl_r MEAN_ForeFS_data(1).S14.fhl_r...
    MEAN_ForeFS_data(1).S15.fhl_r MEAN_ForeFS_data(1).S16.fhl_r MEAN_ForeFS_data(1).S17.fhl_r MEAN_ForeFS_data(1).S18.fhl_r MEAN_ForeFS_data(1).S19.fhl_r ];

Total_MEAN_ForeFS_data(1).perbrev_r = [MEAN_ForeFS_data(1).S01.perbrev_r MEAN_ForeFS_data(1).S02.perbrev_r MEAN_ForeFS_data(1).S03.perbrev_r MEAN_ForeFS_data(1).S04.perbrev_r...
    MEAN_ForeFS_data(1).S05.perbrev_r MEAN_ForeFS_data(1).S06.perbrev_r MEAN_ForeFS_data(1).S07.perbrev_r MEAN_ForeFS_data(1).S08.perbrev_r MEAN_ForeFS_data(1).S09.perbrev_r...
    MEAN_ForeFS_data(1).S10.perbrev_r MEAN_ForeFS_data(1).S11.perbrev_r MEAN_ForeFS_data(1).S12.perbrev_r MEAN_ForeFS_data(1).S13.perbrev_r MEAN_ForeFS_data(1).S14.perbrev_r...
    MEAN_ForeFS_data(1).S15.perbrev_r MEAN_ForeFS_data(1).S16.perbrev_r MEAN_ForeFS_data(1).S17.perbrev_r MEAN_ForeFS_data(1).S18.perbrev_r MEAN_ForeFS_data(1).S19.perbrev_r ];

Total_MEAN_ForeFS_data(1).perlong_r = [MEAN_ForeFS_data(1).S01.perlong_r MEAN_ForeFS_data(1).S02.perlong_r MEAN_ForeFS_data(1).S03.perlong_r MEAN_ForeFS_data(1).S04.perlong_r...
    MEAN_ForeFS_data(1).S05.perlong_r MEAN_ForeFS_data(1).S06.perlong_r MEAN_ForeFS_data(1).S07.perlong_r MEAN_ForeFS_data(1).S08.perlong_r MEAN_ForeFS_data(1).S09.perlong_r...
    MEAN_ForeFS_data(1).S10.perlong_r MEAN_ForeFS_data(1).S11.perlong_r MEAN_ForeFS_data(1).S12.perlong_r MEAN_ForeFS_data(1).S13.perlong_r MEAN_ForeFS_data(1).S14.perlong_r...
    MEAN_ForeFS_data(1).S15.perlong_r MEAN_ForeFS_data(1).S16.perlong_r MEAN_ForeFS_data(1).S17.perlong_r MEAN_ForeFS_data(1).S18.perlong_r MEAN_ForeFS_data(1).S19.perlong_r ];

Total_MEAN_ForeFS_data(1).ehl_r = [MEAN_ForeFS_data(1).S01.ehl_r MEAN_ForeFS_data(1).S02.ehl_r MEAN_ForeFS_data(1).S03.ehl_r MEAN_ForeFS_data(1).S04.ehl_r...
    MEAN_ForeFS_data(1).S05.ehl_r MEAN_ForeFS_data(1).S06.ehl_r MEAN_ForeFS_data(1).S07.ehl_r MEAN_ForeFS_data(1).S08.ehl_r MEAN_ForeFS_data(1).S09.ehl_r...
    MEAN_ForeFS_data(1).S10.ehl_r MEAN_ForeFS_data(1).S11.ehl_r MEAN_ForeFS_data(1).S12.ehl_r MEAN_ForeFS_data(1).S13.ehl_r MEAN_ForeFS_data(1).S14.ehl_r...
    MEAN_ForeFS_data(1).S15.ehl_r MEAN_ForeFS_data(1).S16.ehl_r MEAN_ForeFS_data(1).S17.ehl_r MEAN_ForeFS_data(1).S18.ehl_r MEAN_ForeFS_data(1).S19.ehl_r ];


%% Total mean for each subject (RearFS)

Total_MEAN_RearFS_data(1).gaslat_r = [MEAN_RearFS_data(1).S01.gaslat_r MEAN_RearFS_data(1).S02.gaslat_r MEAN_RearFS_data(1).S03.gaslat_r MEAN_RearFS_data(1).S04.gaslat_r...
    MEAN_RearFS_data(1).S05.gaslat_r MEAN_RearFS_data(1).S06.gaslat_r MEAN_RearFS_data(1).S07.gaslat_r MEAN_RearFS_data(1).S08.gaslat_r MEAN_RearFS_data(1).S09.gaslat_r...
    MEAN_RearFS_data(1).S10.gaslat_r MEAN_RearFS_data(1).S11.gaslat_r MEAN_RearFS_data(1).S12.gaslat_r MEAN_RearFS_data(1).S13.gaslat_r MEAN_RearFS_data(1).S14.gaslat_r...
    MEAN_RearFS_data(1).S15.gaslat_r MEAN_RearFS_data(1).S16.gaslat_r MEAN_RearFS_data(1).S17.gaslat_r MEAN_RearFS_data(1).S18.gaslat_r MEAN_RearFS_data(1).S19.gaslat_r ];

Total_MEAN_RearFS_data(1).gasmed_r = [MEAN_RearFS_data(1).S01.gasmed_r MEAN_RearFS_data(1).S02.gasmed_r MEAN_RearFS_data(1).S03.gasmed_r MEAN_RearFS_data(1).S04.gasmed_r...
    MEAN_RearFS_data(1).S05.gasmed_r MEAN_RearFS_data(1).S06.gasmed_r MEAN_RearFS_data(1).S07.gasmed_r MEAN_RearFS_data(1).S08.gasmed_r MEAN_RearFS_data(1).S09.gasmed_r...
    MEAN_RearFS_data(1).S10.gasmed_r MEAN_RearFS_data(1).S11.gasmed_r MEAN_RearFS_data(1).S12.gasmed_r MEAN_RearFS_data(1).S13.gasmed_r MEAN_RearFS_data(1).S14.gasmed_r...
    MEAN_RearFS_data(1).S15.gasmed_r MEAN_RearFS_data(1).S16.gasmed_r MEAN_RearFS_data(1).S17.gasmed_r MEAN_RearFS_data(1).S18.gasmed_r MEAN_RearFS_data(1).S19.gasmed_r ];

Total_MEAN_RearFS_data(1).soleus_r = [MEAN_RearFS_data(1).S01.soleus_r MEAN_RearFS_data(1).S02.soleus_r MEAN_RearFS_data(1).S03.soleus_r MEAN_RearFS_data(1).S04.soleus_r...
    MEAN_RearFS_data(1).S05.soleus_r MEAN_RearFS_data(1).S06.soleus_r MEAN_RearFS_data(1).S07.soleus_r MEAN_RearFS_data(1).S08.soleus_r MEAN_RearFS_data(1).S09.soleus_r...
    MEAN_RearFS_data(1).S10.soleus_r MEAN_RearFS_data(1).S11.soleus_r MEAN_RearFS_data(1).S12.soleus_r MEAN_RearFS_data(1).S13.soleus_r MEAN_RearFS_data(1).S14.soleus_r...
    MEAN_RearFS_data(1).S15.soleus_r MEAN_RearFS_data(1).S16.soleus_r MEAN_RearFS_data(1).S17.soleus_r MEAN_RearFS_data(1).S18.soleus_r MEAN_RearFS_data(1).S19.soleus_r ];

Total_MEAN_RearFS_data(1).tibant_r = [MEAN_RearFS_data(1).S01.tibant_r MEAN_RearFS_data(1).S02.tibant_r MEAN_RearFS_data(1).S03.tibant_r MEAN_RearFS_data(1).S04.tibant_r...
    MEAN_RearFS_data(1).S05.tibant_r MEAN_RearFS_data(1).S06.tibant_r MEAN_RearFS_data(1).S07.tibant_r MEAN_RearFS_data(1).S08.tibant_r MEAN_RearFS_data(1).S09.tibant_r...
    MEAN_RearFS_data(1).S10.tibant_r MEAN_RearFS_data(1).S11.tibant_r MEAN_RearFS_data(1).S12.tibant_r MEAN_RearFS_data(1).S13.tibant_r MEAN_RearFS_data(1).S14.tibant_r...
    MEAN_RearFS_data(1).S15.tibant_r MEAN_RearFS_data(1).S16.tibant_r MEAN_RearFS_data(1).S17.tibant_r MEAN_RearFS_data(1).S18.tibant_r MEAN_RearFS_data(1).S19.tibant_r ];

Total_MEAN_RearFS_data(1).tibpost_r = [MEAN_RearFS_data(1).S01.tibpost_r MEAN_RearFS_data(1).S02.tibpost_r MEAN_RearFS_data(1).S03.tibpost_r MEAN_RearFS_data(1).S04.tibpost_r...
    MEAN_RearFS_data(1).S05.tibpost_r MEAN_RearFS_data(1).S06.tibpost_r MEAN_RearFS_data(1).S07.tibpost_r MEAN_RearFS_data(1).S08.tibpost_r MEAN_RearFS_data(1).S09.tibpost_r...
    MEAN_RearFS_data(1).S10.tibpost_r MEAN_RearFS_data(1).S11.tibpost_r MEAN_RearFS_data(1).S12.tibpost_r MEAN_RearFS_data(1).S13.tibpost_r MEAN_RearFS_data(1).S14.tibpost_r...
    MEAN_RearFS_data(1).S15.tibpost_r MEAN_RearFS_data(1).S16.tibpost_r MEAN_RearFS_data(1).S17.tibpost_r MEAN_RearFS_data(1).S18.tibpost_r MEAN_RearFS_data(1).S19.tibpost_r ];

Total_MEAN_RearFS_data(1).edl_r = [MEAN_RearFS_data(1).S01.edl_r MEAN_RearFS_data(1).S02.edl_r MEAN_RearFS_data(1).S03.edl_r MEAN_RearFS_data(1).S04.edl_r...
    MEAN_RearFS_data(1).S05.edl_r MEAN_RearFS_data(1).S06.edl_r MEAN_RearFS_data(1).S07.edl_r MEAN_RearFS_data(1).S08.edl_r MEAN_RearFS_data(1).S09.edl_r...
    MEAN_RearFS_data(1).S10.edl_r MEAN_RearFS_data(1).S11.edl_r MEAN_RearFS_data(1).S12.edl_r MEAN_RearFS_data(1).S13.edl_r MEAN_RearFS_data(1).S14.edl_r...
    MEAN_RearFS_data(1).S15.edl_r MEAN_RearFS_data(1).S16.edl_r MEAN_RearFS_data(1).S17.edl_r MEAN_RearFS_data(1).S18.edl_r MEAN_RearFS_data(1).S19.edl_r ];

Total_MEAN_RearFS_data(1).fdl_r = [MEAN_RearFS_data(1).S01.fdl_r MEAN_RearFS_data(1).S02.fdl_r MEAN_RearFS_data(1).S03.fdl_r MEAN_RearFS_data(1).S04.fdl_r...
    MEAN_RearFS_data(1).S05.fdl_r MEAN_RearFS_data(1).S06.fdl_r MEAN_RearFS_data(1).S07.fdl_r MEAN_RearFS_data(1).S08.fdl_r MEAN_RearFS_data(1).S09.fdl_r...
    MEAN_RearFS_data(1).S10.fdl_r MEAN_RearFS_data(1).S11.fdl_r MEAN_RearFS_data(1).S12.fdl_r MEAN_RearFS_data(1).S13.fdl_r MEAN_RearFS_data(1).S14.fdl_r...
    MEAN_RearFS_data(1).S15.fdl_r MEAN_RearFS_data(1).S16.fdl_r MEAN_RearFS_data(1).S17.fdl_r MEAN_RearFS_data(1).S18.fdl_r MEAN_RearFS_data(1).S19.fdl_r ];

Total_MEAN_RearFS_data(1).fhl_r = [MEAN_RearFS_data(1).S01.fhl_r MEAN_RearFS_data(1).S02.fhl_r MEAN_RearFS_data(1).S03.fhl_r MEAN_RearFS_data(1).S04.fhl_r...
    MEAN_RearFS_data(1).S05.fhl_r MEAN_RearFS_data(1).S06.fhl_r MEAN_RearFS_data(1).S07.fhl_r MEAN_RearFS_data(1).S08.fhl_r MEAN_RearFS_data(1).S09.fhl_r...
    MEAN_RearFS_data(1).S10.fhl_r MEAN_RearFS_data(1).S11.fhl_r MEAN_RearFS_data(1).S12.fhl_r MEAN_RearFS_data(1).S13.fhl_r MEAN_RearFS_data(1).S14.fhl_r...
    MEAN_RearFS_data(1).S15.fhl_r MEAN_RearFS_data(1).S16.fhl_r MEAN_RearFS_data(1).S17.fhl_r MEAN_RearFS_data(1).S18.fhl_r MEAN_RearFS_data(1).S19.fhl_r ];

Total_MEAN_RearFS_data(1).perbrev_r = [MEAN_RearFS_data(1).S01.perbrev_r MEAN_RearFS_data(1).S02.perbrev_r MEAN_RearFS_data(1).S03.perbrev_r MEAN_RearFS_data(1).S04.perbrev_r...
    MEAN_RearFS_data(1).S05.perbrev_r MEAN_RearFS_data(1).S06.perbrev_r MEAN_RearFS_data(1).S07.perbrev_r MEAN_RearFS_data(1).S08.perbrev_r MEAN_RearFS_data(1).S09.perbrev_r...
    MEAN_RearFS_data(1).S10.perbrev_r MEAN_RearFS_data(1).S11.perbrev_r MEAN_RearFS_data(1).S12.perbrev_r MEAN_RearFS_data(1).S13.perbrev_r MEAN_RearFS_data(1).S14.perbrev_r...
    MEAN_RearFS_data(1).S15.perbrev_r MEAN_RearFS_data(1).S16.perbrev_r MEAN_RearFS_data(1).S17.perbrev_r MEAN_RearFS_data(1).S18.perbrev_r MEAN_RearFS_data(1).S19.perbrev_r ];

Total_MEAN_RearFS_data(1).perlong_r = [MEAN_RearFS_data(1).S01.perlong_r MEAN_RearFS_data(1).S02.perlong_r MEAN_RearFS_data(1).S03.perlong_r MEAN_RearFS_data(1).S04.perlong_r...
    MEAN_RearFS_data(1).S05.perlong_r MEAN_RearFS_data(1).S06.perlong_r MEAN_RearFS_data(1).S07.perlong_r MEAN_RearFS_data(1).S08.perlong_r MEAN_RearFS_data(1).S09.perlong_r...
    MEAN_RearFS_data(1).S10.perlong_r MEAN_RearFS_data(1).S11.perlong_r MEAN_RearFS_data(1).S12.perlong_r MEAN_RearFS_data(1).S13.perlong_r MEAN_RearFS_data(1).S14.perlong_r...
    MEAN_RearFS_data(1).S15.perlong_r MEAN_RearFS_data(1).S16.perlong_r MEAN_RearFS_data(1).S17.perlong_r MEAN_RearFS_data(1).S18.perlong_r MEAN_RearFS_data(1).S19.perlong_r ];

Total_MEAN_RearFS_data(1).ehl_r = [MEAN_RearFS_data(1).S01.ehl_r MEAN_RearFS_data(1).S02.ehl_r MEAN_RearFS_data(1).S03.ehl_r MEAN_RearFS_data(1).S04.ehl_r...
    MEAN_RearFS_data(1).S05.ehl_r MEAN_RearFS_data(1).S06.ehl_r MEAN_RearFS_data(1).S07.ehl_r MEAN_RearFS_data(1).S08.ehl_r MEAN_RearFS_data(1).S09.ehl_r...
    MEAN_RearFS_data(1).S10.ehl_r MEAN_RearFS_data(1).S11.ehl_r MEAN_RearFS_data(1).S12.ehl_r MEAN_RearFS_data(1).S13.ehl_r MEAN_RearFS_data(1).S14.ehl_r...
    MEAN_RearFS_data(1).S15.ehl_r MEAN_RearFS_data(1).S16.ehl_r MEAN_RearFS_data(1).S17.ehl_r MEAN_RearFS_data(1).S18.ehl_r MEAN_RearFS_data(1).S19.ehl_r ];


%% Total mean for each subject (NatFS)

Total_MEAN_NatFS_data(1).gaslat_r = [MEAN_NatFS_data(1).S01.gaslat_r MEAN_NatFS_data(1).S02.gaslat_r MEAN_NatFS_data(1).S03.gaslat_r MEAN_NatFS_data(1).S04.gaslat_r...
    MEAN_NatFS_data(1).S05.gaslat_r MEAN_NatFS_data(1).S06.gaslat_r MEAN_NatFS_data(1).S07.gaslat_r MEAN_NatFS_data(1).S08.gaslat_r MEAN_NatFS_data(1).S09.gaslat_r...
    MEAN_NatFS_data(1).S10.gaslat_r MEAN_NatFS_data(1).S11.gaslat_r MEAN_NatFS_data(1).S12.gaslat_r MEAN_NatFS_data(1).S13.gaslat_r MEAN_NatFS_data(1).S14.gaslat_r...
    MEAN_NatFS_data(1).S15.gaslat_r MEAN_NatFS_data(1).S16.gaslat_r MEAN_NatFS_data(1).S17.gaslat_r MEAN_NatFS_data(1).S18.gaslat_r MEAN_NatFS_data(1).S19.gaslat_r ];

Total_MEAN_NatFS_data(1).gasmed_r = [MEAN_NatFS_data(1).S01.gasmed_r MEAN_NatFS_data(1).S02.gasmed_r MEAN_NatFS_data(1).S03.gasmed_r MEAN_NatFS_data(1).S04.gasmed_r...
    MEAN_NatFS_data(1).S05.gasmed_r MEAN_NatFS_data(1).S06.gasmed_r MEAN_NatFS_data(1).S07.gasmed_r MEAN_NatFS_data(1).S08.gasmed_r MEAN_NatFS_data(1).S09.gasmed_r...
    MEAN_NatFS_data(1).S10.gasmed_r MEAN_NatFS_data(1).S11.gasmed_r MEAN_NatFS_data(1).S12.gasmed_r MEAN_NatFS_data(1).S13.gasmed_r MEAN_NatFS_data(1).S14.gasmed_r...
    MEAN_NatFS_data(1).S15.gasmed_r MEAN_NatFS_data(1).S16.gasmed_r MEAN_NatFS_data(1).S17.gasmed_r MEAN_NatFS_data(1).S18.gasmed_r MEAN_NatFS_data(1).S19.gasmed_r ];

Total_MEAN_NatFS_data(1).soleus_r = [MEAN_NatFS_data(1).S01.soleus_r MEAN_NatFS_data(1).S02.soleus_r MEAN_NatFS_data(1).S03.soleus_r MEAN_NatFS_data(1).S04.soleus_r...
    MEAN_NatFS_data(1).S05.soleus_r MEAN_NatFS_data(1).S06.soleus_r MEAN_NatFS_data(1).S07.soleus_r MEAN_NatFS_data(1).S08.soleus_r MEAN_NatFS_data(1).S09.soleus_r...
    MEAN_NatFS_data(1).S10.soleus_r MEAN_NatFS_data(1).S11.soleus_r MEAN_NatFS_data(1).S12.soleus_r MEAN_NatFS_data(1).S13.soleus_r MEAN_NatFS_data(1).S14.soleus_r...
    MEAN_NatFS_data(1).S15.soleus_r MEAN_NatFS_data(1).S16.soleus_r MEAN_NatFS_data(1).S17.soleus_r MEAN_NatFS_data(1).S18.soleus_r MEAN_NatFS_data(1).S19.soleus_r ];

Total_MEAN_NatFS_data(1).tibant_r = [MEAN_NatFS_data(1).S01.tibant_r MEAN_NatFS_data(1).S02.tibant_r MEAN_NatFS_data(1).S03.tibant_r MEAN_NatFS_data(1).S04.tibant_r...
    MEAN_NatFS_data(1).S05.tibant_r MEAN_NatFS_data(1).S06.tibant_r MEAN_NatFS_data(1).S07.tibant_r MEAN_NatFS_data(1).S08.tibant_r MEAN_NatFS_data(1).S09.tibant_r...
    MEAN_NatFS_data(1).S10.tibant_r MEAN_NatFS_data(1).S11.tibant_r MEAN_NatFS_data(1).S12.tibant_r MEAN_NatFS_data(1).S13.tibant_r MEAN_NatFS_data(1).S14.tibant_r...
    MEAN_NatFS_data(1).S15.tibant_r MEAN_NatFS_data(1).S16.tibant_r MEAN_NatFS_data(1).S17.tibant_r MEAN_NatFS_data(1).S18.tibant_r MEAN_NatFS_data(1).S19.tibant_r ];

Total_MEAN_NatFS_data(1).tibpost_r = [MEAN_NatFS_data(1).S01.tibpost_r MEAN_NatFS_data(1).S02.tibpost_r MEAN_NatFS_data(1).S03.tibpost_r MEAN_NatFS_data(1).S04.tibpost_r...
    MEAN_NatFS_data(1).S05.tibpost_r MEAN_NatFS_data(1).S06.tibpost_r MEAN_NatFS_data(1).S07.tibpost_r MEAN_NatFS_data(1).S08.tibpost_r MEAN_NatFS_data(1).S09.tibpost_r...
    MEAN_NatFS_data(1).S10.tibpost_r MEAN_NatFS_data(1).S11.tibpost_r MEAN_NatFS_data(1).S12.tibpost_r MEAN_NatFS_data(1).S13.tibpost_r MEAN_NatFS_data(1).S14.tibpost_r...
    MEAN_NatFS_data(1).S15.tibpost_r MEAN_NatFS_data(1).S16.tibpost_r MEAN_NatFS_data(1).S17.tibpost_r MEAN_NatFS_data(1).S18.tibpost_r MEAN_NatFS_data(1).S19.tibpost_r ];

Total_MEAN_NatFS_data(1).edl_r = [MEAN_NatFS_data(1).S01.edl_r MEAN_NatFS_data(1).S02.edl_r MEAN_NatFS_data(1).S03.edl_r MEAN_NatFS_data(1).S04.edl_r...
    MEAN_NatFS_data(1).S05.edl_r MEAN_NatFS_data(1).S06.edl_r MEAN_NatFS_data(1).S07.edl_r MEAN_NatFS_data(1).S08.edl_r MEAN_NatFS_data(1).S09.edl_r...
    MEAN_NatFS_data(1).S10.edl_r MEAN_NatFS_data(1).S11.edl_r MEAN_NatFS_data(1).S12.edl_r MEAN_NatFS_data(1).S13.edl_r MEAN_NatFS_data(1).S14.edl_r...
    MEAN_NatFS_data(1).S15.edl_r MEAN_NatFS_data(1).S16.edl_r MEAN_NatFS_data(1).S17.edl_r MEAN_NatFS_data(1).S18.edl_r MEAN_NatFS_data(1).S19.edl_r ];

Total_MEAN_NatFS_data(1).fdl_r = [MEAN_NatFS_data(1).S01.fdl_r MEAN_NatFS_data(1).S02.fdl_r MEAN_NatFS_data(1).S03.fdl_r MEAN_NatFS_data(1).S04.fdl_r...
    MEAN_NatFS_data(1).S05.fdl_r MEAN_NatFS_data(1).S06.fdl_r MEAN_NatFS_data(1).S07.fdl_r MEAN_NatFS_data(1).S08.fdl_r MEAN_NatFS_data(1).S09.fdl_r...
    MEAN_NatFS_data(1).S10.fdl_r MEAN_NatFS_data(1).S11.fdl_r MEAN_NatFS_data(1).S12.fdl_r MEAN_NatFS_data(1).S13.fdl_r MEAN_NatFS_data(1).S14.fdl_r...
    MEAN_NatFS_data(1).S15.fdl_r MEAN_NatFS_data(1).S16.fdl_r MEAN_NatFS_data(1).S17.fdl_r MEAN_NatFS_data(1).S18.fdl_r MEAN_NatFS_data(1).S19.fdl_r ];

Total_MEAN_NatFS_data(1).fhl_r = [MEAN_NatFS_data(1).S01.fhl_r MEAN_NatFS_data(1).S02.fhl_r MEAN_NatFS_data(1).S03.fhl_r MEAN_NatFS_data(1).S04.fhl_r...
    MEAN_NatFS_data(1).S05.fhl_r MEAN_NatFS_data(1).S06.fhl_r MEAN_NatFS_data(1).S07.fhl_r MEAN_NatFS_data(1).S08.fhl_r MEAN_NatFS_data(1).S09.fhl_r...
    MEAN_NatFS_data(1).S10.fhl_r MEAN_NatFS_data(1).S11.fhl_r MEAN_NatFS_data(1).S12.fhl_r MEAN_NatFS_data(1).S13.fhl_r MEAN_NatFS_data(1).S14.fhl_r...
    MEAN_NatFS_data(1).S15.fhl_r MEAN_NatFS_data(1).S16.fhl_r MEAN_NatFS_data(1).S17.fhl_r MEAN_NatFS_data(1).S18.fhl_r MEAN_NatFS_data(1).S19.fhl_r ];

Total_MEAN_NatFS_data(1).perbrev_r = [MEAN_NatFS_data(1).S01.perbrev_r MEAN_NatFS_data(1).S02.perbrev_r MEAN_NatFS_data(1).S03.perbrev_r MEAN_NatFS_data(1).S04.perbrev_r...
    MEAN_NatFS_data(1).S05.perbrev_r MEAN_NatFS_data(1).S06.perbrev_r MEAN_NatFS_data(1).S07.perbrev_r MEAN_NatFS_data(1).S08.perbrev_r MEAN_NatFS_data(1).S09.perbrev_r...
    MEAN_NatFS_data(1).S10.perbrev_r MEAN_NatFS_data(1).S11.perbrev_r MEAN_NatFS_data(1).S12.perbrev_r MEAN_NatFS_data(1).S13.perbrev_r MEAN_NatFS_data(1).S14.perbrev_r...
    MEAN_NatFS_data(1).S15.perbrev_r MEAN_NatFS_data(1).S16.perbrev_r MEAN_NatFS_data(1).S17.perbrev_r MEAN_NatFS_data(1).S18.perbrev_r MEAN_NatFS_data(1).S19.perbrev_r ];

Total_MEAN_NatFS_data(1).perlong_r = [MEAN_NatFS_data(1).S01.perlong_r MEAN_NatFS_data(1).S02.perlong_r MEAN_NatFS_data(1).S03.perlong_r MEAN_NatFS_data(1).S04.perlong_r...
    MEAN_NatFS_data(1).S05.perlong_r MEAN_NatFS_data(1).S06.perlong_r MEAN_NatFS_data(1).S07.perlong_r MEAN_NatFS_data(1).S08.perlong_r MEAN_NatFS_data(1).S09.perlong_r...
    MEAN_NatFS_data(1).S10.perlong_r MEAN_NatFS_data(1).S11.perlong_r MEAN_NatFS_data(1).S12.perlong_r MEAN_NatFS_data(1).S13.perlong_r MEAN_NatFS_data(1).S14.perlong_r...
    MEAN_NatFS_data(1).S15.perlong_r MEAN_NatFS_data(1).S16.perlong_r MEAN_NatFS_data(1).S17.perlong_r MEAN_NatFS_data(1).S18.perlong_r MEAN_NatFS_data(1).S19.perlong_r ];

Total_MEAN_NatFS_data(1).ehl_r = [MEAN_NatFS_data(1).S01.ehl_r MEAN_NatFS_data(1).S02.ehl_r MEAN_NatFS_data(1).S03.ehl_r MEAN_NatFS_data(1).S04.ehl_r...
    MEAN_NatFS_data(1).S05.ehl_r MEAN_NatFS_data(1).S06.ehl_r MEAN_NatFS_data(1).S07.ehl_r MEAN_NatFS_data(1).S08.ehl_r MEAN_NatFS_data(1).S09.ehl_r...
    MEAN_NatFS_data(1).S10.ehl_r MEAN_NatFS_data(1).S11.ehl_r MEAN_NatFS_data(1).S12.ehl_r MEAN_NatFS_data(1).S13.ehl_r MEAN_NatFS_data(1).S14.ehl_r...
    MEAN_NatFS_data(1).S15.ehl_r MEAN_NatFS_data(1).S16.ehl_r MEAN_NatFS_data(1).S17.ehl_r MEAN_NatFS_data(1).S18.ehl_r MEAN_NatFS_data(1).S19.ehl_r ];

save('Total_MEAN_ForeFS_data.mat');
save('Total_MEAN_RearFS_data.mat');
save('Total_MEAN_NatFS_data.mat');


%% Graph Check!!
% mass normalisation
all_mass = [mass.S01; mass.S02; mass.S03; mass.S04; mass.S05; mass.S06; mass.S07; mass.S08; mass.S09; mass.S10; mass.S11; mass.S12; mass.S13; mass.S14; mass.S15...
    ; mass.S16; mass.S17; mass.S18; mass.S19];
% ForeFS
% GL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_ForeFS_data.gaslat_r(:,t) = Total_MEAN_ForeFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_ForeFS_data.gaslat_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL(Fore)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_ForeFS_data.gaslat_r);


%GM
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_ForeFS_data.gasmed_r(:,t) = Total_MEAN_ForeFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_ForeFS_data.gasmed_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GM(Fore)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_ForeFS_data.gasmed_r);

%SOL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_ForeFS_data.soleus_r(:,t) = Total_MEAN_ForeFS_data.soleus_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_ForeFS_data.soleus_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('SOL(Fore)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_ForeFS_data.soleus_r);


% RearFS
% GL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_RearFS_data.gaslat_r(:,t) = Total_MEAN_RearFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_RearFS_data.gaslat_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL(Rear)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_RearFS_data.gaslat_r);

%GM
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_RearFS_data.gasmed_r(:,t) = Total_MEAN_RearFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_RearFS_data.gasmed_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GM(Rear)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_RearFS_data.gasmed_r);

%SOL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_RearFS_data.soleus_r(:,t) = Total_MEAN_RearFS_data.soleus_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_RearFS_data.soleus_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('SOL(Rear)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_RearFS_data.soleus_r);

% NatFS
% GL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_NatFS_data.gaslat_r(:,t) = Total_MEAN_NatFS_data.gaslat_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_NatFS_data.gaslat_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL(Nat)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_NatFS_data.gaslat_r);

%GM
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_NatFS_data.gasmed_r(:,t) = Total_MEAN_NatFS_data.gasmed_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_NatFS_data.gasmed_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GM(Nat)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_NatFS_data.gasmed_r);

%SOL
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3]) 
hold on
for t=1:19
    mass_Total_MEAN_NatFS_data.soleus_r(:,t) = Total_MEAN_NatFS_data.soleus_r(:,t)/(all_mass(t)*grav);
    figure;plot(mass_Total_MEAN_NatFS_data.soleus_r(:,t));
    tt = num2str(t);
    legend(['S' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('SOL(Nat)');
    % title(Tname1);
    set(gca,'FontSize',14);

end
plot(mass_Total_MEAN_NatFS_data.soleus_r);



%% Error (individual)
% S02_fore_1/2/3 == gaslat_r error
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3])
hold on
plot([ForeFS_data(1).S02.gaslat_r ForeFS_data(2).S02.gaslat_r ForeFS_data(3).S02.gaslat_r]);

for t=1:length(ForeFS_data_S02)
    
    figure;plot(ForeFS_data(t).S02.gaslat_r);
    tt = num2str(t);
    legend(['Trial' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL');
    % title(Tname1);
    set(gca,'FontSize',14);
hold off
end

% S16_fore_1/2/3 == gaslat_r error  
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3])
hold on
plot([ForeFS_data(1).S16.gaslat_r ForeFS_data(2).S16.gaslat_r ForeFS_data(3).S16.gaslat_r]);

for t=1:length(ForeFS_data_S16)
    
    figure;plot(ForeFS_data(t).S16.gaslat_r);
    tt = num2str(t);
    legend(['Trial' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL');
    % title(Tname1);
    set(gca,'FontSize',14);
hold off
end

% S7_fore_1/2/3 == gaslat_r error  
figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3])
hold on
plot([ForeFS_data(1).S07.gaslat_r ForeFS_data(2).S07.gaslat_r ForeFS_data(3).S07.gaslat_r]);

for t=1:length(ForeFS_data_S07)
    
    figure;plot(ForeFS_data(t).S07.gaslat_r);
    tt = num2str(t);
    legend(['Trial' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL');
    % title(Tname1);
    set(gca,'FontSize',14);
hold off
end



figure('units', 'normalized', 'position', [0.25 0.55 0.35 0.3])
hold on
plot([ForeFS_data(1).S07.gaslat_r ForeFS_data(2).S07.gaslat_r ForeFS_data(3).S07.gaslat_r]);

for t=1:length(ForeFS_data_S02)
    
    figure;plot(ForeFS_data(t).S02.gaslat_r);
    tt = num2str(t);
    legend(['Trial' tt]);
    xlim([1,101]); xlabel('Time (% stance)');
    ylabel ('GL');
    % title(Tname1);
    set(gca,'FontSize',14);
hold off
end



