# caiman-jobexample

The need for image analysis is ever growing in many fields and cancer is not an exception. With the advent of new imaging techniques such as intravital, confocal and multiphoton microscopy, just to mention a few, researchers can visualise physiological and pharmacological processes together with the traditional anatomical images that have been improving resolution. Yet, once the imaging of subjects has been achieved, sometimes there is a lack of resources to properly analyse and process the data and the wealth of the information contained in images and videos remains to be extracted in the near future. The development of methods of analysis that extract meaningful and quantitative information from these images is an important part in the search of understanding biological processes


CAIMAN is an Image Analysis internet-based project that combines the strength of open-source web-based scripting languages, the powerful  high-level technical computing language MATLAB, and the vast literature on image analysis and computer vision to provide a user-friendly web-page where any person can upload cancer-related images and execute analysis algorithms and obtain quantitative measurements related to their images.


Follow this link for the paper where CAIMAN is described in detail:
Reyes-Aldasoro, C.C., Griffiths, M.K., Savas, D. & Tozer, G.M. (2010) CAIMAN: An online algorithm repository for Cancer Image Analysis. Comput. Meth. Prog. Bio. in press, doi:10.1016/j.cmpb.2010.07.007.


## The algorithms available at the moment at CAIMAN are:

measuring cellular migration for scratch wound assays,
vasculature tracing with a scale space ridge tracing,
shading correction based on a signal envelope estimation retrospective algorithm,
chromatic analysis based on 2D/3D chromatic histograms of the HSV colour space,
Endothelial cell segmentation using a chromatic segmentation algorithm.

## To run the job 

Install docker on your system
https://docs.docker.com/engine/install/

Pull the docker repo from docker hub (see command 1 below)
https://hub.docker.com/r/mikeg64/caiman

1. docker pull mikeg64/caiman:4.0
2. use the docker command shown below 

Either 
1. copy and paste the command below 
2. run the script file directly from the  folder containing the jobfile

May need to update the $PWD with the directory path for the working directory

docker run -v $PWD:/home/caiman mikeg64/caiman:4.0  /caiman-matlab/run_caiman_standalone.sh /opt/mcr/v910

if you have built the docker image on your own system then use the command
docker run -v $PWD:/home/caiman caiman:4.0  /caiman-matlab/run_caiman_standalone.sh /opt/mcr/v910

1. https://github.com/mikeg64/caiman-jobexample
2. https://www.sciencedirect.com/science/article/pii/S016926071000194X
3. http://caiman.shef.ac.uk/

