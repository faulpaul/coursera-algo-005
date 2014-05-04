function inversion=findsplitinversion(data_a_sorted, data_b_sorted)
	i = 1;
	j = 1;
	k = 1;
	data_sorted=zeros(1);
	inversion = 0;
	stop = length(data_a_sorted) + length(data_b_sorted);
	for k = 1:stop,
        	if (i <= length(data_a_sorted)) && (j <= length(data_b_sorted))
                	if (data_a_sorted(i) < data_b_sorted(j))
                        	data_sorted(k) = data_a_sorted(i);
                        	i++;
               		else
                        	data_sorted(k) = data_b_sorted(j);
                        	%%inversion in case data_a is not done
                        	inversion = inversion + (length(data_a_sorted) - (i-1)); 
                        	j++;
                	end
        	elseif (i > length(data_a_sorted)) && (j <= length(data_b_sorted))
                	%%data_a_sorted is empty
                	data_sorted(k) = data_b_sorted(j);
                	j++;
        	elseif (i <= length(data_a_sorted)) && (j > length(data_b_sorted))
                	%%data_b_sorted is empty
                	data_sorted(k) = data_a_sorted(i);
                	inversion = inversion + (length(data_a_sorted) - (i-1));
                	i++;
        	end
	end

end
