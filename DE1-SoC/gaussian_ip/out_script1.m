start_index = find(sof_out==1);
start_index = start_index(1);
end_index = find(eof_out==1);
end_index = end_index(2);
pixel_out2 = pixel_out(start_index:end_index);
valid_out2 = valid_out(start_index:end_index);

pixel_out2 = pixel_out2(find(valid_out2==1));
img_out = round(reshape(pixel_out2, 640, 480)');
figure, imshow(uint8(img_out));

%pixel_diff2 = pixel_diff(start_index:end_index);
%img_diff = pixel_diff2(valid_out2 == 1);
%img_diff = round(reshape(img_diff, 636, 476)');

%img_in = cast(gray_im(3:478,3:638), 'double');
%img_diff2 = img_in - img_out;
