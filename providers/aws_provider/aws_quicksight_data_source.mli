(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_data_source__credentials__credential_pair

type aws_quicksight_data_source__credentials

type aws_quicksight_data_source__parameters__amazon_elasticsearch

type aws_quicksight_data_source__parameters__athena

type aws_quicksight_data_source__parameters__aurora

type aws_quicksight_data_source__parameters__aurora_postgresql

type aws_quicksight_data_source__parameters__aws_iot_analytics

type aws_quicksight_data_source__parameters__jira

type aws_quicksight_data_source__parameters__maria_db

type aws_quicksight_data_source__parameters__mysql

type aws_quicksight_data_source__parameters__oracle

type aws_quicksight_data_source__parameters__postgresql

type aws_quicksight_data_source__parameters__presto

type aws_quicksight_data_source__parameters__rds

type aws_quicksight_data_source__parameters__redshift

type aws_quicksight_data_source__parameters__s3__manifest_file_location

type aws_quicksight_data_source__parameters__s3

type aws_quicksight_data_source__parameters__service_now

type aws_quicksight_data_source__parameters__snowflake

type aws_quicksight_data_source__parameters__spark

type aws_quicksight_data_source__parameters__sql_server

type aws_quicksight_data_source__parameters__teradata

type aws_quicksight_data_source__parameters__twitter

type aws_quicksight_data_source__parameters

type aws_quicksight_data_source__permission

type aws_quicksight_data_source__ssl_properties

type aws_quicksight_data_source__vpc_connection_properties

type aws_quicksight_data_source

val aws_quicksight_data_source :
    ?tags:(string * string) list ->
    data_source_id:string ->
    name:string ->
    type_:string ->
    credentials:aws_quicksight_data_source__credentials list ->
    parameters:aws_quicksight_data_source__parameters list ->
    permission:aws_quicksight_data_source__permission list ->
    ssl_properties:aws_quicksight_data_source__ssl_properties list ->
    vpc_connection_properties:aws_quicksight_data_source__vpc_connection_properties list ->
    string ->
    unit

