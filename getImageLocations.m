function imagePosCell = getImageLocations(x,y)
%x=1024; y=1024;


topLeft   = [x/4,y/4];
topMiddle = [x/2,y/4]; 
topRight  = [((x/4) + (x/2)),y/4];

centerLeft  = [x/4, y/2];
trueCenter  = [x/2, y/2];
centerRight = [((x/4) + (x/2)), y/2];

bottomLeft   = [x/4,((y/4) + (y/2))];
bottomMiddle = [x/2,((y/4) + (y/2))];
bottomRight  = [((x/4) + (x/2)),((y/4) + (y/2))];

imagePosCell = cell(3,3,2);

[imagePosCell(:,:,1)] = deal([{topLeft},    {topMiddle},    {topRight},
                              {centerLeft}, {trueCenter},   {centerRight},
                              {bottomLeft}, {bottomMiddle}, {bottomRight}]);

[imagePosCell(:,:,2)] = deal([{"Top Left"},    {"Top Middle"},    {"Top Right"},
                              {"Center Left"}, {"Center"},        {"Center Right"},
                              {"Bottom Left"}, {"Bottom Middle"}, {"Bottom Right"}]);



disp(imagePosCell(:,:,1));


end


%structure.field2(strcmp(structure.field1,'string'))

%imageLocationStruct.LocationValues(find(strcmp(imageLocationStruct.LocationNames,stimLocation)))