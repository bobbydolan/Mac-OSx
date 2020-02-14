
display display dialog "text" ¬
  default answer "default answer" ¬
  with icon 1 ¬
  buttons {"Cancel", "OK"} ¬
  default button ""
set button_pressed to button returned of result
set text_typed to text returned of result
if button_pressed is "" then
  -- statements for default button
else
	-- statements for cancel button
end if
