clear
clc
disp('Initial chance is 20 percent ')
prob = 20;
count = randi([1 4],1);
ch=1;
f=0;

    while ch==1 && count>0
        prompt2='Is this a curvy ball? Y/N ';
        answer2=input(prompt2,'s');
        if answer2=='Y'
            prob=prob+5;
        elseif answer2 == 'N'
            prob=prob;
        end
    
        if f==1
            prob=prob+5;
        end
        out=throw(prob);
        count=count-1;
        if out==1
            disp('Pokemon Caught, Stay Happy')
            ch=0;
            count=0;
        elseif out==0
            disp('Pokemon broke free')
            prompt= 'Do you want to feed the pokemon with fruit? Y/N ' ;
            answer= input(prompt,'s');
            if answer=='Y'
                ch=1;
                f=1;
            elseif answer == 'N'
                ch=1;
                %disp('Ok Bye!')
            end
        end
    end


if count==0
    if ch==1
        disp('Pokemon ran away')
    end
end


