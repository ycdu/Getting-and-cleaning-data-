Codebook
========

This codebook is for the dataset in `clean_data.txt`


Variable list and descriptions
------------------------------

Variable name    | Type | Description
-----------------|------|------
activity.name   | Character      | Name of activity. There are 6 activities - Laying, Sitting, Standing, Walking, Walking_Downstairs, Walking_Upstairs  
subject.code    | Integer | ID of the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity.code | Integer | ID of activity. Its range is from 1 to 6.
time.bodyacc.mean.x | Numeric | Mean body acceleration time in x direction
time.bodyacc.mean.y  |  Numeric |Mean body acceleration time in y direction
time.bodyacc.mean.z |  Numeric |Mean body acceleration time in z direction
time.bodyacc.std.x |  Numeric |Standard deviation of body acceleration time in x direction
time.bodyacc.std.y  |  Numeric |Standard deviation of body acceleration time in y direction
time.bodyacc.std.z    | Numeric | Standard deviation of body acceleration time in z direction
time.gravityacc.mean.x |  Numeric |Mean gravity acceleration time in x direction
time.gravityacc.mean.y |  Numeric |Mean gravity acceleration time in y direction 
time.gravityacc.mean.z |  Numeric |Mean gravity acceleration time in z direction
time.gravityacc.std.x|  Numeric |Standard deviation of gravity acceleration time in x direction
time.gravityacc.std.y|  Numeric |Standard deviation of gravity acceleration time in y direction
time.gravityacc.std.z|  Numeric |Standard deviation of gravity acceleration time in z direction
time.bodyaccjerk.mean.x|  Numeric |Mean body acceleration jerk time in x direction
time.bodyaccjerk.mean.y|  Numeric |Mean body acceleration jerk time in y direction
time.bodyaccjerk.mean.z|  Numeric |Mean body acceleration jerk time in z direction
time.bodyaccjerk.std.x|  Numeric |Standard deviation of body acceleration jerk time in x direction
time.bodyaccjerk.std.y|  Numeric |Standard deviation of body acceleration jerk time in y direction
time.bodyaccjerk.std.z|  Numeric |Standard deviation of body acceleration jerk time in z direction
time.bodygyro.mean.x|  Numeric |Mean body gyroscope time in x direction
time.bodygyro.mean.y|  Numeric |Mean body gyroscope time in y direction
time.bodygyro.mean.z|  Numeric |Mean body gyroscope time in z direction
time.bodygyro.std.x|  Numeric |Standard deviation of body gyroscope time in x direction
time.bodygyro.std.y|  Numeric |Standard deviation of body gyroscope time in y direction
time.bodygyro.std.z|  Numeric |Standard deviation of body gyroscope time in z direction
time.bodygyrojerk.mean.x|  Numeric |Mean body gyroscope jerk time in x direction
time.bodygyrojerk.mean.y|  Numeric |Mean body gyroscope jerk time in y direction
time.bodygyrojerk.mean.z|  Numeric |Mean body gyroscope jerk time in z direction
time.bodygyrojerk.std.x|  Numeric |Standard deviation of body gyroscope jerk time in x direction
time.bodygyrojerk.std.y|  Numeric |Standard deviation of body gyroscope jerk time in y direction
time.bodygyrojerk.std.z|  Numeric |Standard deviation of body gyroscope jerk time in z direction
time.bodyaccmag.mean|  Numeric |Mean body acceleration magnitude time
time.bodyaccmag.std|  Numeric |Standard deviation of body acceleration magnitude time
time.gravityaccmag.mean|  Numeric |Mean gravity acceleration magnitude time
time.gravityaccmag.std|  Numeric |Standard deviation of gravity acceleration magnitude time
time.bodyaccjerkmag.mean|  Numeric |Mean body acceleration jerk magnitude time
time.bodyaccjerkmag.std|  Numeric |Standard deviation of body acceleration jerk magnitude time
time.bodygyromag.mean|  Numeric |Mean body gyroscope magnitude time
time.bodygyromag.std|  Numeric |Standard deviation of body gyroscope magnitude time
time.bodygyrojerkmag.mean|  Numeric | Mean body gyroscope jerk magnitude time
time.bodygyrojerkmag.std|  Numeric |Standard deviation body gyroscope jerk magnitude time
frequency.bodyacc.mean.x|  Numeric |Mean frequenty of body acceleration in direction x
frequency.bodyacc.mean.y|  Numeric |Mean frequenty of body acceleration in direction y
frequency.bodyacc.mean.z|  Numeric |Mean frequenty of body acceleration in direction z
frequency.bodyacc.std.x|  Numeric |Standard deviation of frequenty of body acceleration in direction x
frequency.bodyacc.std.y|  Numeric |Standard deviation of frequenty of body acceleration in direction y
frequency.bodyacc.std.z|  Numeric |Standard deviation of frequenty of body acceleration in direction z
frequency.bodyaccjerk.mean.x|  Numeric |Mean frequency of body acceleration jerk in direction x
frequency.bodyaccjerk.mean.y|  Numeric |Mean frequency of body acceleration jerk in direction y
frequency.bodyaccjerk.mean.z|  Numeric |Mean frequency of body acceleration jerk in direction z
frequency.bodyaccjerk.std.x|  Numeric |Standard deviation of frequency of body acceleration jerk in direction x
frequency.bodyaccjerk.std.y|  Numeric |Standard deviation of frequency of body acceleration jerk in direction y
frequency.bodyaccjerk.std.z|  Numeric |Standard deviation of frequency of body acceleration jerk in direction z
frequency.bodygyro.mean.x|  Numeric |Mean frequency of body gyroscope in direction x
frequency.bodygyro.mean.y|  Numeric |Mean frequency of body gyroscope in direction y
frequency.bodygyro.mean.z|  Numeric |Mean frequency of body gyroscope in direction z
frequency.bodygyro.std.x|  Numeric |Standard deviation of frequency of body gyroscope in direction x
frequency.bodygyro.std.y|  Numeric |Standard deviation of frequency of body gyroscope in direction y
frequency.bodygyro.std.z|  Numeric |Standard deviation of frequency of body gyroscope in direction z
frequency.bodyaccmag.mean|  Numeric |Mean frequency of body acceleration magnitude
frequency.bodyaccmag.std|  Numeric |Standard deviation of frequency of body acceleration magnitude
frequency.bodybodyaccjerkmag.mean|  Numeric |Mean frequency of body to body acceleration jerk magnitude
frequency.bodybodyaccjerkmag.std|  Numeric |Standard deviation of frequency of body to body acceleration jerk magnitude
frequency.bodybodygyromag.mean|  Numeric |Mean frequency of body to body gyroscope magnitude
frequency.bodybodygyromag.std|  Numeric |Standard deviation of frequency of body to body gyroscope magnitude
frequency.bodybodygyrojerkmag.mean|  Numeric |Mean frequency of body to body gyroscope jerk magnitude
frequency.bodybodygyrojerkmag.std|  Numeric |Standard deviation of frequency of body to body gyroscope jerk magnitude


Transformation on Data
----------------------
Refer to `README.md` on the details of getting, cleaning and transformation of the raw data into the tidy data in `clean_data.txt`