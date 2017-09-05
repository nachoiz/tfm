function Main

%% Preprocess
nunkn = 2;
nstre = 3;

mesh = Mesh();
bc = BC(nunkn);

%% Process
geometry = Geometry(mesh);
triangleLinear = Triangle_Linear();
dof = DOF(triangleLinear,mesh.connec,nunkn,mesh.npnod,bc.displacements);

element = Element_Elastic();
element = element.computeLHS(nstre,nunkn,mesh.nelem,triangleLinear.nnode,geometry);
element = element.computeRHS(nunkn,mesh.nelem,triangleLinear.nnode,bc,dof.idx);

%% Postprocess

a = 1;
end