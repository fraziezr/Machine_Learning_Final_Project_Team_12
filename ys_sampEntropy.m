%�������� author by YangSong 2010.11.16 C230
function sampEntropy=ys_sampEntropy(xdata)
m=2;
n=length(xdata);
r=0.2*std(xdata);%ƥ��ģ��������ֵ
%r=0.05;
cr=[];
gn=1;
gnmax=m;
while gn<=gnmax
      d=zeros(n-m+1,n-m);% ��ž������ľ���  
      x2m=zeros(n-m+1,m);%��ű任�������      
      cr1=zeros(1,n-m+1);%��Ž���ľ���
      k=1;
      
      for i=1:n-m+1

          for j=1:m
              x2m(i,j)=xdata(i+j-1);
          end
          
      end
      x2m;


      for i=1:n-m+1

          for j=1:n-m+1

              if i~=j
                 d(i,k)=max(abs(x2m(i,:)-x2m(j,:)));%�������Ԫ�غ���ӦԪ�صľ���
                 k=k+1;
              end
              
          end

          k=1;
      end
      d;

      for i=1:n-m+1
          [k,l]=size(find(d(i,:)<r));%����RС�ĸ������͸�L
          cr1(1,i)=l;
      end
      cr1;

      cr1=(1/(n-m))*cr1;
      sum1=0;
      
      for i=1:n-m+1

          if cr1(i)~=0
             %sum1=sum1+log(cr1(i));
             sum1=sum1+cr1(i);
          end  %if����
          
      end  %for����
      
      cr1=1/(n-m+1)*sum1;
      cr(1,gn)=cr1;
      gn=gn+1;
      m=m+1;
end        %while����
cr;

sampEntropy=log(cr(1,1))-log(cr(1,2));

