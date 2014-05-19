function data=swap(data,a,b)

	temp = data(a);
	data(a) = data(b);
	data(b) = temp;
	data;

end
