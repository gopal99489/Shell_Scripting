#!/bin/bash

#The `create_structure` function aims to efficiently generate a predefined directory structure within a specified base directory, facilitating organised file storage and management.


create_structure() {

local base_dir=$1
mkdir -p  "$base_dir"/{dir1,dir2,dir3}

echo "Directory Structure created under $base_dir directory"

}

create_structure "/home/Gopal/Shell_Scripting/Shell_Scripts/functions"


