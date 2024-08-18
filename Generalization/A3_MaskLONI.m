% Mask data within GM
gm_mask=fmri_data(which('TPM.nii')); %tissue probability map from SPM distribution
gm_mask.dat=gm_mask.dat(:,1)>.5; %threshold at prob GM > 50%

%% Adult
[masked_dat_g3A]=apply_mask(g3A.FullDataSet,gm_mask); %then apply GM mask

% some contrasts have no ACC activity, clean up for analysis CHECK THIS
masked_dat_g3A.Y=masked_dat_g3A.Y(~masked_dat_g3A.removed_images);
g3A.FullDataSet.Y=g3A.FullDataSet.Y(~masked_dat_g3A.removed_images);
masked_dat_g3A=remove_empty(masked_dat_g3A);

%% Child Low
[masked_dat_g1C]=apply_mask(g1C.FullDataSet,gm_mask); %then apply GM mask

% some contrasts have no ACC activity, clean up for analysis CHECK THIS
masked_dat_g1C.Y=masked_dat_g1C.Y(~masked_dat_g1C.removed_images);
g1C.FullDataSet.Y=g1C.FullDataSet.Y(~masked_dat_g1C.removed_images);
masked_dat_g1C=remove_empty(masked_dat_g1C);

%% Child High
[masked_dat_g2C]=apply_mask(g2C.FullDataSet,gm_mask); %then apply GM mask

% some contrasts have no ACC activity, clean up for analysis CHECK THIS
masked_dat_g2C.Y=masked_dat_g2C.Y(~masked_dat_g2C.removed_images);
g2C.FullDataSet.Y=g2C.FullDataSet.Y(~masked_dat_g2C.removed_images);
masked_dat_g2C=remove_empty(masked_dat_g2C);
