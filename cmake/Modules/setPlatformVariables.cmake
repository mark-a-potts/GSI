function (setWCOSS)
  message("Setting paths for WCOSS")
  set(HDF5_USE_STATIC_LIBRARIES "OFF")
  #if ibmpe module is not loaded last, CMake tries to use intel mpi. Force use of ibmhpc
  set( MPI_Fortran_COMPILER /opt/ibmhpc/pe13010/base/bin/mpif90 CACHE FILEPATH "Forced use of ibm wrapper" FORCE )
  set( MPI_C_COMPILER /opt/ibmhpc/pe13010/base/bin/mpicc CACHE FILEPATH "Forced use of ibm wrapper" FORCE )
  set( MPI_CXX_COMPILER /opt/ibmhpc/pe13010/base/bin/mpicxx CACHE FILEPATH "Forced use of ibm wrapper" FORCE )
  if( NOT DEFINED ENV{COREPATH} )
    set(COREPATH "/nwprod/lib" PARENT_SCOPE )
  else()
    set(COREPATH $ENV{COREPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{CRTM_INC} )
    set(CRTM_BASE "/nwprod2/lib" PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{WRFPATH} )
    set(WRFPATH "/nwprod/sorc/wrf_shared.fd" PARENT_SCOPE )
  else()
    set(WRFPATH $ENV{WRFPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "3.6.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "10.2.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.2.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.2.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.0.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.0.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.0.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.0.6" PARENT_SCOPE)
  endif()
endfunction()
function (setTHEIA)
  message("Setting paths for THEIA")
  set(HDF5_USE_STATIC_LIBRARIES "OFF")
  if( NOT DEFINED ENV{COREPATH} )
    set(COREPATH "/scratch3/NCEPDEV/nwprod/lib" PARENT_SCOPE )
  else()
    set(COREPATH $ENV{COREPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{CRTM_INC} )
    set(CRTM_BASE "/scratch4/NCEPDEV/da/save/Michael.Lueken/nwprod/lib/crtm" PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{WRFPATH} )
    set(WRFPATH "/scratch3/NCEPDEV/nceplibs/ext/WRF/3.7/WRFV3" PARENT_SCOPE )
  else()
    set(WRFPATH $ENV{WRFPATH} PARENT_SCOPE )
  endif()

  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "3.6.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "10.2.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.2.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.2.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.0.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.0.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.0.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.0.6" PARENT_SCOPE)
  endif()
endfunction()

function (setS4)
  message("Setting paths for S4")
  set(HDF5_USE_STATIC_LIBRARIES "OFF")
  if( NOT DEFINED ENV{COREPATH} )
    set(COREPATH "/usr/local/jcsda/nwprod_gdas_2014/lib" PARENT_SCOPE )
  else()
    set(COREPATH $ENV{COREPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{CRTM_INC} )
    set(CRTM_BASE "/usr/local/jcsda/NESDIS-JCSDA/tools_R2O/nwprod_2016q1/GFS_LIBs/CRTM_REL-2.2.3/crtm_v2.2.3" PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{WRFPATH} )
    set(WRFPATH "/usr/local/jcsda/nwprod_gdas_2014/sorc/nam_nmm_real_fcst.fd" PARENT_SCOPE )
  else()
    set(WRFPATH $ENV{WRFPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "4.3.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "10.2.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.2.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.2.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.0.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.0.1_beta" PARENT_SCOPE)
    set(ENV{SIGIO_LIB4} "/usr/local/jcsda/nwprod_gdas_2014/lib/sorc/sigio_v2.0.1_beta/sigio_v2.0.1_beta/libsigio_v2.0.1_beta.a")
    set(ENV{SIGIO_INC4} "/usr/local/jcsda/nwprod_gdas_2014/lib/sorc/sigio_v2.0.1_beta/sigio_v2.0.1_beta/incmod/sigio_v2.0.1_beta" )
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.0.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.0.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.0.6" PARENT_SCOPE)
  endif()
endfunction()
function (setCRAY)
  message("Setting paths for Cray")
  set(HDF5_USE_STATIC_LIBRARIES "ON")
# set( OMPFLAG "-openmp" PARENT_SCOPE )
  if( NOT DEFINED ENV{COREPATH} )
    set(COREPATH "/gpfs/hps/nco/ops/nwprod/lib" PARENT_SCOPE )
  else()
    set(COREPATH $ENV{COREPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{CRTM_INC} )
    set(CRTM_BASE "/gpfs/hps/nco/ops/nwprod/lib/crtm" PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{WRFPATH} )
    if(CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
      set(WRFPATH "/gpfs/hps/nco/ops/nwprod/wrf_shared.v1.1.0-intel" PARENT_SCOPE )
    else()
      set(WRFPATH "/gpfs/hps/nco/ops/nwprod/wrf_shared.v1.1.0-cray" PARENT_SCOPE )
    endif()
  else()
    set(WRFPATH $ENV{WRFPATH} PARENT_SCOPE )
  endif()
  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "3.6.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "11.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.2.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.2.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.0.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.0.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.2.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.0.6" PARENT_SCOPE)
  endif()
endfunction()
function (setGeneric)
  message("Setting paths for Generic System")
  set(HDF5_USE_STATIC_LIBRARIES "OFF")
  set(COREPATH $ENV{COREPATH} PARENT_SCOPE )
  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "3.6.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "10.2.5" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.2.3" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.2.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.1.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.0.1" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.0.2" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.2.0" PARENT_SCOPE)
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.0.6" PARENT_SCOPE)
  endif()
endfunction()
