function normY = normalizer(Y, n, method)
% NORMALIZER: normY = normalizer(Y, n, method)
%
%   Normalize Y array to n data points using method ('linear' or 'spline').
%   n = 101 and method = 'linear' are default.
%
%	Created by: Matthew R. Walker  
%	<matthewwalker_1@hotmail.com> 
%   Last modified: March 1, 2005 


if nargin<1, error('normalizer: Not enough inputs.'); end
if nargin<2, n = 101; end
if nargin<3, method = 'linear'; end

%Y = columns(Y);
Ylength = size(Y, 1);
x = (1 : Ylength)';
xi = (linspace(1, Ylength, n))';

normY = interp1(x,Y,xi,method);
%--------------------------------------------------------------------------