pkg load image;
load('megaman.mat');
  %for i = 1:100
    
    image=RGB{1};
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

    objeto=vm>.5;
    objeto=imclose(objeto, ones(5));
    bw=bwlabel(objeto);
    
    cenario = (bw==1);
    
    sx = sum(cenario);
    sy = sum(cenario');
    [~,mx]=max(sx);
    [~,my]=max(sy);
    %plot(mx,my,'ob');
    
    %sx = sum(azul);
    %sy = sum(azul');
    %[~,mx]=max(sx);
    %[~,my]=max(sy);
    
    
    
    disp(mx);
    disp(my);
    %plot(mx,my,'ob');
    %imshow(azul);
    %drawnow;
    
  %end
  
  
