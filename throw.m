function [out] = throw(prob)
    
    if prob>100
        disp('Probability re adjusted to 100')
       
        prob=100;
    end
    r = randi([1 100],1);
    if r<=prob
        out=1;
    else
        out=0;
    end
end

