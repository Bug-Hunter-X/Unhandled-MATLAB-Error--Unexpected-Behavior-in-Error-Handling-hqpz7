function result = myFunction(input)
  % Some code here
  if input < 0
    error('Input must be non-negative');
  end
  % More code here
end

%Improved error handling
try
    input = -1;
    result = myFunction(input);
catch ME
    % Handle the error gracefully
    fprintf('Error: %s\n', ME.message);
    %Perform alternative action or re-prompt the user
    result = 0;
    disp('Returning a default value');
end