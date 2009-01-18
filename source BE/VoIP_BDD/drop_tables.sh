#!/bin/bash

. ./config.sh

$DB_MANAGER $USER_OPTION $USER $PASSWORD_OPTION $VERBOSE_OPTION $DATABASE < drop_tables.sql
