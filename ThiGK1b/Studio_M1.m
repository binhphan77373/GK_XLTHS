clear all;
B_1('studio_M1.wav',1);
function B_1(VT,STT)
Chuan = [0.87,0.94,1.26,1.33,1.59,1.66,1.78,1.82,2.06];
[x,Fs] = audioread(VT);
%1 frame 20 ms
frame_time = 20;
% So mau cua 1 frame
N = Fs.*frame_time./1000; 
T = -0.02;
% So frame cua x ung voi thoi gian time
n = (length(x))/(N);
% Mang thoi gian thuc ung voi mau
for i= 1:length(x)
    realtime(i) = 1./Fs*i;
end
ste = 0;
for i =1:n
    ste = [ste,0];
end

zcr = ste;
%Tinh STE
m = 1;
for i = 1 : round(n) 
    for j = 1 : N
        ste(i) = ste(i) + x(m).^2;
        m = m+1;
        if (m>length(x))
            break;
        end
    end
end
%Tinh ZCR
m = 2;
for i = 1 : round(n) 
    for j = 1 : N
        zcr(i) = zcr(i) + abs(sgn(x(m))-sgn(x(m-1)));
        m = m + 1;
        if (m>length(x))
            break;
        end
    end
end
% Chuan Hoa STE
for i = 1: n
        ChuanHoa_STE(i) = ste(i)./(max(ste));
end
% Chuan Hoa ZCR
for i = 1: n
    ChuanHoa_ZCR(i) = zcr(i)./(max(zcr));
end
%Thoi gian ung voi tung frame
for i=1:n
    t(i) = i.*frame_time./1000;
end
%Chuan Hoa Ve 1 Ham
ChuanHoa = ChuanHoa_STE - ChuanHoa_ZCR;
% Giao Diem Giua STE va ZCR
k=1;
check = 0; % Ktr la 0 khi unvoice la 1 khi voice
matran =0;% Luu gia tri t khi trung voi nguong
if(ChuanHoa(i) >= T)
    check = 1;
end
for i= 2:length(ChuanHoa)
    if(ChuanHoa(i) >= T)
        if(check==0 )
            matran(k)=frame_time*i/1000; 
            check = 1;
        end
    else
        if(check==1 )
            matran(k)=frame_time*i/1000;   
            check = 0;
        end
    end
    k=k+1;
end
figure(STT)
subplot(5, 1, 1)
plot(realtime,x,'LineWidth',1.1)
hold on
plot(t,ChuanHoa_STE,'LineWidth',1.1)
legend({'Speech','Short-Time Energy'});
hold off
title('Short-Time Energy')
subplot(5, 1, 2)
plot(realtime,x,'LineWidth',1.1)
hold on
plot(t,ChuanHoa_ZCR,'LineWidth',1.1)
legend({'Speech','Zero Crossing Rate'});
hold off
title('Zero Crossing Rate')
subplot(5, 1, 3)
grid on
plot(realtime,x);
hold on
for i = 1:length(matran)
    xline(matran(i),'r','LineWidth',1.2);
end
title('Voice/Unvoice')
subplot(5, 1, 4)
grid on
plot(realtime,x);
hold off
for  i=1:length(Chuan)
    xline(Chuan(i),'color','green','Linestyle','-');
end
title('Chuan Cho Truoc')
min(ChuanHoa)
max(ChuanHoa)
mean(ChuanHoa)
function trave = sgn(bien)
    if(bien>=0)
        trave = 1;
    else
        trave = -1;
    end
end

end