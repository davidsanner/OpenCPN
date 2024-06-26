# - Try to find gps library
# Once done this will define
#
#  GPS_FOUND - system has gps
#  GPS_INCLUDE_DIR - the gps include directory
#  GPS_LIBRARY - Link this to use gps

#=============================================================================
# Copyright 2000-2009 Kitware, Inc., Insight Software Consortium
# Copyright 2006-2009 Kitware, Inc.
# Copyright 2006 Alexander Neundorf <neundorf@kde.org>
# Copyright 2010 David Register
#
#
# All rights reserved.
#
#Redistribution and use in source and binary forms, with or without
#modification, are permitted provided that the following conditions
#are met:
#
#* Redistributions of source code must retain the above copyright
#  notice, this list of conditions and the following disclaimer.
#
#* Redistributions in binary form must reproduce the above copyright
#  notice, this list of conditions and the following disclaimer in the
#  documentation and/or other materials provided with the distribution.
#
#* Neither the names of Kitware, Inc., the Insight Software Consortium,
#  nor the names of their contributors may be used to endorse or promote
#  products derived from this software without specific prior written
#  permission.

#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
#"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
#LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
#A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
#HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
#LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
#DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
#THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
#OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#------------------------------------------------------------------------------

#The above copyright and license notice applies to distributions of
#CMake in source and binary form.  Some source files contain additional
#notices of original copyright by their contributors; see each source
#for details.  Third-party software packages supplied with CMake under
#compatible licenses provide their own copyright notices documented in
#corresponding subdirectories.
#
#------------------------------------------------------------------------------
#
#CMake was initially developed by Kitware with the following sponsorship:
#
# * National Library of Medicine at the National Institutes of Health
#   as part of the Insight Segmentation and Registration Toolkit (ITK).
#
# * US National Labs (Los Alamos, Livermore, Sandia) ASC Parallel
#   Visualization Initiative.
#
# * National Alliance for Medical Image Computing (NAMIC) is funded by the
#   National Institutes of Health through the NIH Roadmap for Medical Research,
#   Grant U54 EB005149.
#
# * Kitware, Inc.





IF (GPS_INCLUDE_DIR AND GPS_LIBRARY)
    SET(GPS_FIND_QUIETLY TRUE)
ENDIF (GPS_INCLUDE_DIR AND GPS_LIBRARY)

FIND_PATH(GPS_INCLUDE_DIR gps.h /usr/include /usr/include/gps /usr/local/include/gps /opt/local/include)

FIND_LIBRARY(GPS_LIBRARY NAMES gps PATH /usr/lib /usr/local/lib /opt/local/lib)

IF (GPS_INCLUDE_DIR AND GPS_LIBRARY)
   SET(GPS_FOUND TRUE)
ENDIF (GPS_INCLUDE_DIR AND GPS_LIBRARY)

IF (GPS_FOUND)
   IF (NOT GPS_FIND_QUIETLY)
      MESSAGE(STATUS "Found gps: ${GPS_LIBRARY}")
   ENDIF (NOT GPS_FIND_QUIETLY)
ELSE (GPS_FOUND)
   IF (GPS_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find gps library")
   ENDIF (GPS_FIND_REQUIRED)
ENDIF (GPS_FOUND)




