%% Set some parameters for doing analyses and configure path

% Initialization
clear all %#ok<*CLALL>
% Restores the MATLAB search path to default
restoredefaultpath
% Add present directory to search path
addpath(genpath('D:\CodesUpload\Generalization'));

% Perform bootstrap analyses (if true, this can be slow) or load bootstrap results (if false)
computeBootstrap = true;
% Location of scripts folder
basedir = which('A1_ConfigureAnalysisOptions.m');
% Location of base folder
basedir = basedir(1:end-30);
% Some subjects have missing data in ROIs (and are excluded from some
% analyses), this suppressing warning about low variance
warning off stats:pdist:ConstantPoints

% Restores the MATLAB search path to default
restoredefaultpath
% Add basepath and subfolders
addpath(genpath(basedir));
% Add ROIs directory
addpath(genpath('D:\CodesUpload\Generalization\ROIs'))
% Add spm directory
addpath(genpath('D:\Applications\NeuToolbox\spm12')); % Download from "https://www.fil.ion.ucl.ac.uk/spm/software/spm12"
% Add canlab core codes
addpath(genpath('D:\Applications\NeuToolbox\CanlabCore-master')); % Download from "https://github.com/canlab/CanlabCore"