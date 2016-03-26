def convert_temp(v, input_scale: 'celsius', output_scale: 'celsius')
  k = 0.0
  if input_scale == 'celsius' and output_scale == 'fahrenheit' then
    k = 9.0 * v / 5 + 32.0
  elsif input_scale == 'celsius' and output_scale == 'kelvin' then
    k = v + 273.15
  elsif input_scale == 'kelvin' and output_scale == 'fahrenheit' then
    k = 9.0 * (v - 273.15) / 5.0 + 32.0
  elsif input_scale == 'kelvin' and output_scale == 'celsius' then
    k = v - 273.15
  elsif input_scale == 'fahrenheit' and output_scale == 'celsius' then
    k = 5.0 * (v - 32) / 9.0
  elsif input_scale == 'fahrenheit' and output_scale == 'kelvin' then
    k = 5.0 * (v - 32) / 9.0 + 273.15
  else
    k = v
  end
end