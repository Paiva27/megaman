pkg load image;
load('megaman.mat');
  for i = 1:100
  image=RGB{i};
  hsv=rgb2hsv(image);
  hm=hsv(:,:,1);
  vm=hsv(:,:,3);
  f=280/360;
  h=ones(10)*f;
  s=ones(10);
  v=ones(10);
  hsv2(1:10,1:10,1)=h;
  hsv2(1:10,1:10,2)=s;
  hsv2(1:10,1:10,3)=v;
  rgb=hsv2rgb(hsv2);

  azul=hm>=(180/360) & hm<=(280/360) & (vm>.8);
  azul=imclose(azul,ones(2));

  sx = sum(azul);
  sy = sum(azul');
  [~,mx]=max(sx);
  [~,my]=max(sy);
  
  disp(mx);
  disp(my);
  imshow(azul,[]);
 
 end
  
  
