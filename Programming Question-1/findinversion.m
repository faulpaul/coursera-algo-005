function inversion=findinversion(data)
	data_a=zeros(1);
	data_b=zeros(1);
	length_data=length(data);
	if (length_data < 2)
		inversion = 0;
	else 
		%% Split arrays for easier computation
		border=0;
        	%%find the half, especially if the length is uneven
        	border=fix(length_data / 2);
        	%%split in subarrays
        	data_a=data(1:border);
        	data_b=data((border+1):length_data);
	

		%% Recursively call findinversion on data_ & data_b
		inversion = findinversion(data_a);
		inversion = inversion + findinversion(data_b);
		%% Find splitinversions via mergesort
		inversion = inversion + findsplitinversion(data_a, data_b) 
	end
end
