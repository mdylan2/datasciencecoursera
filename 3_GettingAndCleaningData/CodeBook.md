# Code Book

This code book summarizes the resulting data fields in `TidyData.txt`.

## Identifiers
These are the identifiers for the data (Columns 1 and 2 when you read the table).
The data was grouped according to these identifiers and averaged for the measurements (below).

* `Subject` - The ID of the test subject
* `Activity` - The type of activity performed when the corresponding measurements were taken

## Measurements
The mean of each of these measurements was taken for each subject-activity grouping.
X, Y and Z represent 3-dimensional axes along which the measurement was taken.
There are 88 total variables. 
Variables like meanGravity and meanFrequency were intentionally included.

* `TimeBodyAccelerometerMean_X `
* `TimeBodyAccelerometerMean_Y `
* `TimeBodyAccelerometerMean_Z `
* `TimeBodyAccelerometerSTD_X `
* `TimeBodyAccelerometerSTD_Y `
* `TimeBodyAccelerometerSTD_Z `
* `TimeGravityAccelerometerMean_X `
* `TimeGravityAccelerometerMean_Y `
* `TimeGravityAccelerometerMean_Z `
* `TimeGravityAccelerometerSTD_X `
* `TimeGravityAccelerometerSTD_Y `
* `TimeGravityAccelerometerSTD_Z `
* `TimeBodyAccelerometerJerkMean_X `
* `TimeBodyAccelerometerJerkMean_Y `
* `TimeBodyAccelerometerJerkMean_Z `
* `TimeBodyAccelerometerJerkSTD_X `
* `TimeBodyAccelerometerJerkSTD_Y `
* `TimeBodyAccelerometerJerkSTD_Z `
* `TimeBodyGyroscopeMean_X `
* `TimeBodyGyroscopeMean_Y `
* `TimeBodyGyroscopeMean_Z `
* `TimeBodyGyroscopeSTD_X `
* `TimeBodyGyroscopeSTD_Y `
* `TimeBodyGyroscopeSTD_Z `
* `TimeBodyGyroscopeJerkMean_X `
* `TimeBodyGyroscopeJerkMean_Y `
* `TimeBodyGyroscopeJerkMean_Z `
* `TimeBodyGyroscopeJerkSTD_X `
* `TimeBodyGyroscopeJerkSTD_Y `
* `TimeBodyGyroscopeJerkSTD_Z `
* `TimeBodyAccelerometerMagnitudeMean `
* `TimeBodyAccelerometerMagnitudeSTD `
* `TimeGravityAccelerometerMagnitudeMean `
* `TimeGravityAccelerometerMagnitudeSTD `
* `TimeBodyAccelerometerJerkMagnitudeMean `
* `TimeBodyAccelerometerJerkMagnitudeSTD `
* `TimeBodyGyroscopeMagnitudeMean `
* `TimeBodyGyroscopeMagnitudeSTD `
* `TimeBodyGyroscopeJerkMagnitudeMean `
* `TimeBodyGyroscopeJerkMagnitudeSTD `
* `ForceBodyAccelerometerMean_X `
* `ForceBodyAccelerometerMean_Y `
* `ForceBodyAccelerometerMean_Z `
* `ForceBodyAccelerometerSTD_X `
* `ForceBodyAccelerometerSTD_Y `
* `ForceBodyAccelerometerSTD_Z `
* `ForceBodyAccelerometerMeanFrequency_X `
* `ForceBodyAccelerometerMeanFrequency_Y `
* `ForceBodyAccelerometerMeanFrequency_Z `
* `ForceBodyAccelerometerJerkMean_X `
* `ForceBodyAccelerometerJerkMean_Y `
* `ForceBodyAccelerometerJerkMean_Z `
* `ForceBodyAccelerometerJerkSTD_X `
* `ForceBodyAccelerometerJerkSTD_Y `
* `ForceBodyAccelerometerJerkSTD_Z `
* `ForceBodyAccelerometerJerkMeanFrequency_X `
* `ForceBodyAccelerometerJerkMeanFrequency_Y `
* `ForceBodyAccelerometerJerkMeanFrequency_Z `
* `ForceBodyGyroscopeMean_X `
* `ForceBodyGyroscopeMean_Y `
* `ForceBodyGyroscopeMean_Z `
* `ForceBodyGyroscopeSTD_X `
* `ForceBodyGyroscopeSTD_Y `
* `ForceBodyGyroscopeSTD_Z `
* `ForceBodyGyroscopeMeanFrequency_X `
* `ForceBodyGyroscopeMeanFrequency_Y `
* `ForceBodyGyroscopeMeanFrequency_Z `
* `ForceBodyAccelerometerMagnitudeMean `
* `ForceBodyAccelerometerMagnitudeSTD `
* `ForceBodyAccelerometerMagnitudeMeanFrequency `
* `ForceBodyBodyAccelerometerJerkMagnitudeMean `
* `ForceBodyBodyAccelerometerJerkMagnitudeSTD `
* `ForceBodyBodyAccelerometerJerkMagnitudeMeanFrequency `
* `ForceBodyBodyGyroscopeMagnitudeMean `
* `ForceBodyBodyGyroscopeMagnitudeSTD `
* `ForceBodyBodyGyroscopeMagnitudeMeanFrequency `
* `ForceBodyBodyGyroscopeJerkMagnitudeMean `
* `ForceBodyBodyGyroscopeJerkMagnitudeSTD `
* `ForceBodyBodyGyroscopeJerkMagnitudeMeanFrequency `
* `AngletBodyAccelerometerMeanGravity`
* `AngletBodyAccelerometerJerkMeanGravityMean`         
* `AngletBodyGyroscopeMeanGravityMean`                
* `AngletBodyGyroscopeJerkMeanGravityMean`
* `Angle_XGravityMean`                                
* `Angle_YGravityMean`            
* `Angle_ZGravityMean`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test