img = imread('/Users/victor/Pictures/lenna.jpg');

filtroPassaBaixa = 2 + 2
A = zeros(4:2)

A = [0.12, 0.12, 0.12 ; 0.12, 0.12, 0.12; 0.12, 0.12, 0.12]


% Add gaussian noise to an image
img = imread('/Users/victor/Pictures/lenna.jpg');
% img(lin, col, layer)
img_r = img(:,:,1);
img_g = img(:,:,2);
img_b = img(:,:,3);
colormap(gray);
image(img_r);
nmean = 10;
nvar = 1000;
img_r_n = img_r + sqrt(nvar)*randn(256,256)+nmean;
figure(2);
colormap(gray);
image(img_r_n);

%criando filtro passa baixa
filtroPassaBaixa = [0.12, 0.12, 0.12 ; 0.12, 0.12, 0.12; 0.12, 0.12, 0.12]

%criando filtro passa alta
filtroPassaAlta = [0, -1, 0; -1, 5, -1; 0, -1, 0]

%plot(x,y1,'b-')
%linspce(1,256,256)
%':' é até
% mean - merdia
%std - desvio padrao

matriz = [1,2;
          3,4]

%circshift(matriz, [0,-1])
%ans = 2,1; 
%      4,3

%circshift(matriz, [0,1])
%ans = 2,1; 
%      4,3
          
%circshift(matriz, [1,0])
%ans = 3,4;
%      1,2
          
%circshift(matriz, [-1,0])
%ans = 3,4;
%      1,2
          
%circshift(matriz, [1,1])
%ans = 4,3;
%      2,1
          
%circshift(matriz, [0,0])
%ans = 1,2;
%      3,4

          
%para retornar a posica
%matriz(1,2)
%matriz(2,1)

%multiplicacao elemento por elemento
%result = img .* filtroPassaBaixass


x=1
y=2
teste = [1,1;1,1]
a = filtroPassaBaixa(x,y)*teste(x+1,y-1)

   
    %for linha 0:3
     %   for coluna 0:3
    %       teste(linha,coluna) = img(linha+1,coluna-1)*filtroPassaBaixa(linha,coluna) 
   %     end
  %  end



teste = 0

%while teste <= 5

%    imagem(1,1) = filtroPassaBaixa(2,2)*img(1,1)+filtroPassaBaixa(2,3)*img(1,2)+filtroPassaBaixa(3,2)*img(2,1)+filtroPassaBaixa(3,3)*img(2,2)
%    circshift(img, [1,1])    
%    teste = teste + 1;

%end

for i = 0:5
    for x = 0:5
        imagem(i, x) = filtroPassaBaixa(2,2)*img(1,1)+filtroPassaBaixa(2,3)*img(1,2)+filtroPassaBaixa(3,2)*img(2,1)+filtroPassaBaixa(3,3)*img(2,2)
        %circshift(img, [1,0])
    end
    circshift(img, [0,1])
end

