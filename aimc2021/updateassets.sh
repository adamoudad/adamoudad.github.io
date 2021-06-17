#!/bin/bash
assets_path=~/Codes/aimc2021/assets
# mkdir ~/Codes/aimc2021/assets/baseline-2bars/ ~/Codes/aimc2021/assets/hierarchicaltree_gru-2bars/ ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-2bars/ ~/Codes/aimc2021/assets/sharedhierarchicaltree_flat-2bars/ ~/Codes/aimc2021/assets/mergedtree-2bars/
# 2bars
cp ~/Mounts/biotite/models/21_04_14-1712-b7eeba5-vanilla/*.{wav,png}  ~/Codes/aimc2021/assets/baseline-2bars/
cp ~/Mounts/biotite/models/21_04_14-1721-b7eeba5-hierarchical/*.{wav,png}  ~/Codes/aimc2021/assets/hierarchicaltree_gru-2bars/
cp ~/Mounts/biotite/models/21_04_14-1718-b7eeba5-hierarchical/*.{wav,png}  ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-2bars/
cp ~/Mounts/biotite/models/21_04_14-1719-b7eeba5-hierarchical/*.{wav,png}  ~/Codes/aimc2021/assets/sharedhierarchicaltree_flat-2bars/
cp ~/Mounts/biotite/models/21_04_14-1716-b7eeba5-stacked/*.{wav,png}  ~/Codes/aimc2021/assets/mergedtree-2bars/

# mkdir ~/Codes/aimc2021/assets/baseline-1bar/ ~/Codes/aimc2021/assets/hierarchicaltree_flat-1bar/ ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-1bar/ ~/Codes/aimc2021/assets/mergedtree-1bar/
# 1bar
cp ~/Mounts/biotite/models/21_04_13-0429-2c03f6b-vanilla/*.{wav,png} ~/Codes/aimc2021/assets/baseline-1bar/
cp ~/Mounts/biotite/models/21_04_13-0014-2c03f6b-symphonic/*.{wav,png} ~/Codes/aimc2021/assets/hierarchicaltree_flat-1bar/
cp ~/Mounts/biotite/models/21_04_13-0003-2c03f6b-symphonic/*.{wav,png} ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-1bar/
cp ~/Mounts/biotite/models/21_04_13-0004-2c03f6b-stacked-merged_kl/*.{wav,png}  ~/Codes/aimc2021/assets/mergedtree-1bar/




# Reconstructions 1 bar
cp -i ~/Mounts/biotite/models/21_04_13-0004-2c03f6b-stacked-merged_kl/tf0-0_original_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/mergedtree-1bar/
cp -i ~/Mounts/biotite/models/21_04_13-0004-2c03f6b-stacked-merged_kl/tf0-0_reconstruction_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/mergedtree-1bar/
cp -i ~/Mounts/biotite/models/21_04_13-0429-2c03f6b-vanilla/tf0-0_reconstruction_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/baseline-1bar/
cp -i ~/Mounts/biotite/models/21_04_05-1208-e122299-vanilla/tf0-0_reconstruction_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/hierarchicaltree_flat-1bar/
# cp -i ~/Mounts/biotite/models/21_04_09-0036-dbda9ad-symphonic-shared_autoencoders/tf0-0_reconstruction_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/sharedhierarchicaltree_flat-1bar/
cp -i ~/Mounts/biotite/models/21_04_09-0040-dbda9ad-symphonic-shared_autoencoders/tf0-0_reconstruction_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-1bar/


# Reconstructions 2bars
cp -i ~/Mounts/biotite/models/21_04_14-1716-b7eeba5-stacked/tf0-0_original_{3,4,5,6,8}.wav ~/Codes/aimc2021/assets/mergedtree-2bars/
cp -i ~/Mounts/biotite/models/21_04_14-1716-b7eeba5-stacked/tf0-0_reconstruction_{3,4,5,6,8}.wav ~/Codes/aimc2021/assets/mergedtree-2bars/
cp -i ~/Mounts/biotite/models/21_04_14-1712-b7eeba5-vanilla/tf0-0_reconstruction_{3,4,5,6,8}.wav ~/Codes/aimc2021/assets/baseline-2bars/
cp -i ~/Mounts/biotite/models/21_04_14-1718-b7eeba5-hierarchical/tf0-0_reconstruction_{3,4,5,6,8}.wav ~/Codes/aimc2021/assets/sharedhierarchicaltree_gru-2bars/
cp -i ~/Mounts/biotite/models/21_04_14-1721-b7eeba5-hierarchical/tf0-0_reconstruction_{3,4,5,6,8}.wav ~/Codes/aimc2021/assets/hierarchicaltree_gru-2bars/
# Generations
cp -i ~/Mounts/biotite/models/21_04_14-1716-b7eeba5-stacked/generation_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/mergedtree-2bars/
cp -i ~/Mounts/biotite/models/21_04_14-1712-b7eeba5-vanilla/generation_{0,1,2,3,4}.wav ~/Codes/aimc2021/assets/baseline-2bars/


# Interpolation
mv -i Mounts/biotite/models/21_04_19-1642-491524e-stacked/tf0-0_points3_interpolation_{0,4,7,8}.wav  Codes/aimc2021/assets/mergedtree-2bars/
cd ~/Codes/aimc2021/assets/mergedtree-2bars/
mv -i tf0-0_points3_interpolation_4.wav tf0-0_points3_interpolation_1.wav
mv -i tf0-0_points3_interpolation_7.wav tf0-0_points3_interpolation_2.wav
mv -i tf0-0_points3_interpolation_8.wav tf0-0_points3_interpolation_3.wav

mv -i -i ~/Mounts/biotite/models/21_04_19-1658-491524e-vanilla/tf0-0_points3_interpolation_{0,4,7,8}.wav  ~/Codes/aimc2021/assets/baseline-2bars/
cd Codes/aimc2021/assets/baseline-2bars/

