

function data=LoadData()

    dataset=load('D:\Project\Feature Selection\data');
    data.x=dataset.input;
    data.t=dataset.target;
    
    data.nx=size(data.x,2);
end