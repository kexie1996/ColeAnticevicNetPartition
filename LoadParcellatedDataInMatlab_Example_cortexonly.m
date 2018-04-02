
%Setting the parcel files to be the 360 Glasser2016 cortical parcels
L_parcelCIFTIFile='SeparateHemispheres/Q1-Q6_RelatedParcellation210.L.CorticalAreas_dil_Colors.32k_fs_LR.dlabel.nii';
R_parcelCIFTIFile='SeparateHemispheres/Q1-Q6_RelatedParcellation210.R.CorticalAreas_dil_Colors.32k_fs_LR.dlabel.nii';

L_parcelTSFilename='Output_Atlas.L.Parcels.32k_fs_LR.ptseries.nii';
R_parcelTSFilename='Output_Atlas.R.Parcels.32k_fs_LR.ptseries.nii';

%Set this to be your input fMRI data CIFTI file
inputFile='Run1_fMRIData_Atlas.dtseries.nii';

eval(['!wb_command -cifti-parcellate ' inputFile ' ' L_parcelCIFTIFile ' COLUMN ' L_parcelTSFilename ' -method MEAN'])
eval(['!wb_command -cifti-parcellate ' inputFile ' ' R_parcelCIFTIFile ' COLUMN ' R_parcelTSFilename ' -method MEAN'])

%Load parcellated data (requires the ciftiopen function from the HCP website, FieldTrip)
L_dat = ciftiopen(L_parcelTSFilename,'wb_command');
R_dat = ciftiopen(R_parcelTSFilename,'wb_command');

NUMPARCELS=360;
tseriesMatSubj=zeros(NUMPARCELS,size(L_dat.cdata,2));
tseriesMatSubj(1:180,:)=L_dat.cdata;
tseriesMatSubj(181:end,:)=R_dat.cdata;

%Loading other relevant files
load('cortex_community_order.mat');
netorder=readtable('network_labelfile.txt','ReadVariableNames',false);
netassignments=table2array(readtable('cortex_parcel_network_assignments.txt','ReadVariableNames',false));

%Computing functional connectivity and vizualizing the data (assuming preprocessing has already been done)
FCmat=corrcoef(tseriesMatSubj');
FCmat_sorted=FCmat(indsort,indsort);
figure;imagesc(FCmat_sorted)
