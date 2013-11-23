function [CMoments] = getImageCm_2(InputImage, Mask)
% FUNCTION [CMOMENTS] = COLORMOMENTS(INPUTIMAGE,Mask)
% InputImage: Image in any format (Three-Dimensional matrix)
% Mask: A binary mask specifying the region
% CMoments: Three moments for each channel

[~, ~, channel] = size(InputImage);
%if channel==1 % Single vector input
%    channel = col; col = 1;
%end
CMoments = zeros(channel*3,1);

%Number_of_nonzero_elements = nnz(Mask);
 %Mask = Mask & Mask; %converts all nonzero values to one
%ROI = InputImage.*repmat(M,[1,1,channel]); %highlights the ROI (region of interest) in the image

for i=1:channel
  %s  if col ~= 1
        temp = InputImage(:,:,i);
        CMoments((i-1)*3+1:i*3) = Moments(temp(Mask~=0)); %Moments(ROI(ROI~=0));
  %  else
  %      CMoments((i-1)*3+1:i*3) = Moments(InputImage(:,i));
  %  end
end


% To perform on HSV Regions set InputImage to Nx1x3 where N is number of
% pixels in region and 3 is HSV channels.  This allows a single region
% vector.
