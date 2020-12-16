A = readtable('ks-projects-201801.csv');
summary(A);
A(:,1) = []; A(:,2) = []; A(:,3) = []; A(:,4) = []; A(:,5) = []; A(:,8) = [];

Y = A(:,5);
A(:,5) = [];

backers = A(:,5);
A(:,5) = [];

Y2 = table2array(Y);
A2 = table2array(A);
Y2 = string(Y2);

for i = 1:4
    s1 = Y2(i,1);
    if strcmp(s1,'succesful')
        Y2(i,1) = 1;
    elseif strcmp(s1,'failed') || strcmp(s1,'cancelled')
        Y2(i,1) = 0;
    end
end
        







ind = Y2(:,1) == 'succesful';


% mean_Alldata = mean(A);
% std_Alldata = std(A);





% for i = 1:378661
%     str = Y(i,1);
%     if strcmp(str,'succesful')
%         Y(i,1) = 1;
%     elseif strcmp(str,'failed')
%         Y(i,1) = 0;
%     elseif strcmp(str,'cancelled')
%         Y(i,1) = 0;
%     end
% end
        