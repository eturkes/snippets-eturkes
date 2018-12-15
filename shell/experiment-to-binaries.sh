#!/bin/sh

# Copyright 2018 Emir Turkes
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Move all Intellicage .experiment files to binaries folder
# To be used in top-level of Intellicage Archive

for d in */ ; do
    ARCHIVE_EXPERIMENTS=${PWD}/"${d}"Experiments
    BINARIES_EXPERIMENTS=../../binaries/"${PWD#${PWD%/*/*}/}"/"${d}"Experiments
    
    ls "${ARCHIVE_EXPERIMENTS}"
    
    mkdir -p "${BINARIES_EXPERIMENTS}" 
    mv "${ARCHIVE_EXPERIMENTS}"/*experiment "${BINARIES_EXPERIMENTS}"
    ln -sr "${BINARIES_EXPERIMENTS}"/*experiment "${ARCHIVE_EXPERIMENTS}"
done
