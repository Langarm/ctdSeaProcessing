%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create tree
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Variables
output_drive_name  = 'c:'; % normally this is the server on French vessels
acquisition_computer = 'c:'; % "CTD" computer
name_mission         = 'SOLSTICE-EK188'; 
%% Create directories
% mkdir(acquisition_computer, 'SEASOFT');											% these 3 lines create data directories on acquisition_computer
% mkdir([acquisition_computer filesep 'SEASOFT'], name_mission);					% in this case, these already exist, hence they are commented out
% mkdir([acquisition_computer filesep 'SEASOFT' filesep name_mission], 'data');     % CTD data must either get saved directly into this folder (by SEASAVE) or
                                                                                    % copied across before processing starts

mkdir([output_drive_name filesep name_mission], 'data-raw');					% the following lines create output folders for backup 
mkdir([output_drive_name filesep name_mission filesep 'data-raw'], 'CTD');      % of CTD (raw) & processed data-processing

mkdir([output_drive_name filesep name_mission], 'data-processing');
    mkdir([output_drive_name filesep name_mission filesep 'data-processing'], 'CTD');
        
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD'], 'batch');
        
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD'], 'data');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'data'], 'raw');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'data'], 'reports');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep , 'data'], 'asc');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep , 'data'], 'btl');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep , 'data'], 'cnv');
            mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep , 'data'], 'tmp');

        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD'], 'psa');

        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' ], 'plots');
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'plots' ], 'downcast');
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'plots' ], 'TS');
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'plots' ], 'upcast');
        mkdir([output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'plots' ], 'fluos');

%% Copy batch % psa files
copyfile('psa', [output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'psa' ])
copyfile('*.batch', [output_drive_name filesep name_mission filesep 'data-processing' filesep 'CTD' filesep 'batch' ])