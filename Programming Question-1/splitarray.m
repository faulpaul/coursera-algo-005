function [array_a, array_b] =  splitarray(array)
	border=0;
	%%find the half, especially if the length is uneven
	length_array=length(array);
	border=fix(length_array / 2);

	%%split in subarrays
	array_a=array(1:border);
	array_b=array((border+1):length_array);
end
