function inversion=findinversion(data)
	data_a=zeros(1);
	data_b=zeros(1);
	data_a_sorted=zeros(1);
	data_b_sorted=zeros(1);
	length_data=length(data);
	if (length_data < 2)
		inversion = 0;
	#elseif ((length_data >= 2) && (length_data <= ))
	#	inversion = findinternalinversion(data);
	else 
		inversion = 0;
		%% Split arrays for easier computation
		[data_a, data_b] = splitarray(data);
		%% Recursively call findinversion on data_ & data_b
		inversion = inversion + findinversion(data_a);
		inversion = inversion + findinversion(data_b);
		%% Sort both subarrays
		data_a_sorted=sort(data_a);
		data_b_sorted=sort(data_b);
		%% Find splitinversions via mergesort
		inversion = inversion + findsplitinversion(data_a_sorted, data_b_sorted) 
	end
end
