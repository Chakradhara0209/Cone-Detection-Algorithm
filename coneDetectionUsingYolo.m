function coneDetectionUsingYolo()
     %ModFile = 'yolov2ConeDetector.mat';
     persistent model;
     if isempty(model)
         model = coder.loadDeepLearningNetwork('matlab.mat');
     end

     hwobj = jetson();
     vidName = 'C:\Users\amogh\OneDrive\Documents\MATLAB\trail gT.mp4';

     vObj = VideoReader(hwobj,vidName,'Width',416,'Height',416);

     dispObj = hwobj.imageDisplay;

     while vObj.hasFrame
         img = vObj.readFrame();

         [bboxes,~,labels] = model.detect(img,'Threashold',0.7);
         
         if ~isempty(bboxes)
             outlmg = insertObjectAnnotation(img,'rectangle',bboxes,cellstr(labels));
         else
             outlmg = img;
         end

         outlmg = imrotate(outlmg,90);
         outlmg = outlmg(end:-1:1,:,:);

         image(dispObj,outlmg);
     end
end
