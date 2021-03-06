%% Copyright 2014 MERCIER David
function Kc = toughness_KIc(Gamma, E, nu, varargin)
%% Calculation of toughness
% From A. G. Evans et al., "The cracking and decohesion of thin films", 
% Journal of Materials Research, 3(5), 1043-1049, 1988.
% From J. W. Hutchinson and Z. Suo, "Mixed mode cracking in layered materials",
% Advances in applied mechanics, 29(63), 191, 1992.
% From A. Favache et al., "Fracture toughness measurement of ultra-thin hard
% films deposited on a polymer interlayer", Thin Solid Films, 550, 464-471, 2014.

% Kc: Fracture toughness in MPa.m^(0.5)

% Gamma: Energy released in J/m2 = 1 N/m = 1Pa.m = 1e-3 GPa.�m = 1e-6 MPa.m
% E: Elastic modulus in GPa
% nu: Poisson's coefficient

% author: david9684@gmail.com

if nargin < 1
    Gamma = 11.8;
    E = 245;
    nu = 0.3;
end

Kc = ((Gamma*1e-6) * (E*1e3)/(1-nu^2))^(0.5);

end