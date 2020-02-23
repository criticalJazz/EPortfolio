function E16(file)
f = imread(file);
%f = imresize(f,0.25);
ff = rgb2gray(f);
ff = ff(1:4:end, 1:4:end);

g = ff;
can = edge(ff, 'Canny');
figure; imshow(can);
figure; imshow(ff);
R = size(ff,1);
C = size(ff,2);
d = ceil((sqrt((R*R)+(C*C))));
p = 0;
% d = uint8(d);
a = zeros(2*d+1, 180);
figure; imshow(g);




for r = 1: R
    for c = 1: C
        if(can(r,c)==1)
            for theta = 0:179
                p = ceil(c*cosd(theta)+ r*sind(theta));
                p = p + d+1;
                a(p,theta+1)=a(p,theta+1)+1;
                  
               
            end
            
        end
    end
end
imagesc(a); colormap jet;
figure; imshow(a,[]);
highestLoc = zeros(4,2);
highestValue = zeros(4);



g = cat ( 3, g, g, g );

for o = 1:9




array = zeros(5,5);
maxTemp = 0;
max = 0;
maxr = 0;
maxc=0;
maxre = 0;
maxce = 0;

for r=3: 2*d-4
   for c=3: 177
    maxTemp = 0;   
    for i = 1:5
       for e = 1:5
           maxTemp = maxTemp + a(r,c);
       end
    end
      if(maxTemp>max)
          max = maxTemp;
          maxr = r;
          maxc = c;
      end
   end
end

for r = 1: R
    for c = 1: C

        if(can(r,c)==1)
            for theta = 0:179
                maxre = 0;
                maxce = 0;
                p = ceil(c*cosd(theta)+ r*sind(theta));
                p = p + d+1;
                
                if(p==maxr)
                    if(theta+1==maxc)
                        g(r,c,1)=255;
                        
                    end
                end
%                 maxre = abs(p-maxr);
%                 maxce = abs(theta-maxc+1);
%                 if(maxce<5)
%                     if(maxre<5)
%                         g(r,c,1)=255;
%                     end
%                 end
               
                  
               
            end
        end
    end
end
a(maxr,maxc) = 0;
% a(maxr,maxc+1) = 0;
% a(maxr+1,maxc) = 0;
% a(maxr+1,maxc+1) = 0;
% a(maxr-1,maxc) = 0;
% a(maxr,maxc-1) = 0;
end
figure; imshow(g);
end


% for r = 1:size(f,1)
%     for c = 1:size(f,2)
%         if(g(r,c)==255)
%             f(r,c,1) = 255;
%         end
%     end
% end
% figure; imshow(f);