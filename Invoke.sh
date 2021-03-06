#!/bin/sh

REGION=$REGION 
HA=$HA 
SEC_GROUP=$SEC_GROUP 
AMI_NAME=$AMI_NAME 
VPC_ID=$VPC_ID 
INSTANCE_TYPE=$INSTANCE_TYPE 
HOST_NAME=$HOST_NAME 
VPC_SUBNET=$VPC_SUBNET 
INSTALL_TYPE=$INSTALL_TYPE  
DB_TYPE=$DB_TYPE 
KEY_NAME=$KEY_NAME 
DB_NAME=$DB_NAME 
SYS_PASS=$SYS_PASS 
STANDBY_VPC_SUBNET=$STANDBY_VPC_SUBNET 
STANDBY_HOST_NAME=$STANDBY_HOST_NAME
DB_SERVICE=$DB_SERVICE
DATA_VOL_SIZE=$DATA_VOL_SIZE
REDO_VOL_SIZE=$REDO_VOL_SIZE
ARCH_VOL_SIZE=$ARCH_VOL_SIZE
ENV=$ENV
TIMEZONE=$TIMEZONE
IAMROLE=$IAMROLE

ParameterAll=""

if [ "$REGION" != "" ]; then
REGION="-REGION $REGION"
fi

if [ "$DATA_VOL_SIZE" != "" ]; then
DATA_VOL_SIZE="-DATA_VOL_SIZE $DATA_VOL_SIZE"
fi

if [ "$REDO_VOL_SIZE" != "" ]; then
REDO_VOL_SIZE="-REDO_VOL_SIZE $REDO_VOL_SIZE"
fi

if [ "$ARCH_VOL_SIZE" != "" ]; then
ARCH_VOL_SIZE="-ARCH_VOL_SIZE $ARCH_VOL_SIZE"
fi

if [ "$ENV" != "" ]; then
ENV="-ENV $ENV"
fi

if [ "$TIMEZONE" != "" ]; then
TIMEZONE="-TIMEZONE $TIMEZONE"
fi

if [ "$IAMROLE" != "" ]; then
IAMROLE="-IAMROLE $IAMROLE"
fi

if [ "$DB_SERVICE" != "" ]; then
DB_SERVICE="-DB_SERVICE $DB_SERVICE"
fi

if [ "$HA" != "" ]; then
HA="-HA $HA"
fi

if [ "$AMI_NAME" != "" ]; then
AMI_NAME="-AMI_NAME $AMI_NAME"
fi

if [ "$VPC_ID" != "" ]; then
VPC_ID="-VPC_ID $VPC_ID"
fi

if [ "$INSTANCE_TYPE" != "" ]; then
INSTANCE_TYPE="-INSTANCE_TYPE $INSTANCE_TYPE"
fi

if [ "$HOST_NAME" != "" ]; then
HOST_NAME="-HOST_NAME $HOST_NAME"
fi

if [ "$VPC_SUBNET" != "" ]; then
VPC_SUBNET="-VPC_SUBNET $VPC_SUBNET"
fi

if [ "$INSTALL_TYPE" != "" ]; then
INSTALL_TYPE="-INSTALL_TYPE $INSTALL_TYPE"
fi

if [ "$DB_TYPE" != "" ]; then
DB_TYPE="-DB_TYPE $DB_TYPE"
fi

if [ "$KEY_NAME" != "" ]; then
KEY_NAME="-KEY_NAME $KEY_NAME"
fi

if [ "$DB_NAME" != "" ]; then
DB_NAME="-DB_NAME $DB_NAME"
fi

if [ "$SYS_PASS" != "" ]; then
SYS_PASS="-SYS_PASS $SYS_PASS"
fi

if [ "$STANDBY_VPC_SUBNET" != "" ]; then
STANDBY_VPC_SUBNET="-STANDBY_VPC_SUBNET $STANDBY_VPC_SUBNET"
fi

if [ "$STANDBY_HOST_NAME" != "" ]; then
STANDBY_HOST_NAME="-STANDBY_HOST_NAME $STANDBY_HOST_NAME"
fi

ParameterAll="$REGION $HA $AMI_NAME $VPC_ID $INSTANCE_TYPE $HOST_NAME $VPC_SUBNET $INSTALL_TYPE $DB_TYPE $KEY_NAME $DB_NAME $SYS_PASS $STANDBY_HOST_NAME $STANDBY_VPC_SUBNET $DB_SERVICE $IAMROLE $ENV $TIMEZONE $DATA_VOL_SIZE $REDO_VOL_SIZE $ARCH_VOL_SIZE"

/root/AWS_ORACLE_AUTOMATION/AWS_Automation_Install_Silent.sh_standby $ParameterAll

