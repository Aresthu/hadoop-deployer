#!/bin/env echo "Warning: this file should be sourced"
# -- UTF-8 --

if [ -z $DEPLOYER_HOME ]; then
  die "deployer is not installed or install fail"
fi
. $DEPLOYER_HOME/support/PUB.sh

HBASE_TAR=`find_tar hbase*cdh`
HBASE_VERSION=${HBASE_TAR%.tar.gz} ||:;

##### conf file #####
HBASE_TMP_DIR="$HOME/hbase_temp"

HBASE_MASTER_PORT="${HBASE_PORT_PREFIX}600"
HBASE_MASTER_INFO_PORT="${HBASE_PORT_PREFIX}610"
HBASE_RS_PORT="${HBASE_PORT_PREFIX}620"
HBASE_RS_INFO_PORT="${HBASE_PORT_PREFIX}630"

HBASE_HREGION_M_F_SIZE=67108864
HBASE_HREGION_M_FILESIZE=268435456
HBASE_HSTORE.BLOCKINGWAITTIME=90000

#HBASE_ZK_QUORUM=
#HBASE_ZK_PEERPORT="${HBASE_PORT_PREFIX}288"
#HBASE_ZK_LEADERPORT="${HBASE_PORT_PREFIX}388"
#HBASE_ZK_PP_CLIENTPORT="${HBASE_PORT_PREFIX}181"

HBASE_REST_PORT="${HBASE_PORT_PREFIX}880"
