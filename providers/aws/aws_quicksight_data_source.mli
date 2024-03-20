

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type credentials__credential_pair

val credentials__credential_pair :
    password:string prop ->
    username:string prop ->
    unit ->
    credentials__credential_pair

type credentials

val credentials :
    ?copy_source_arn:string prop ->
    credential_pair:credentials__credential_pair list ->
    unit ->
    credentials

type parameters__amazon_elasticsearch

val parameters__amazon_elasticsearch :
    domain:string prop ->
    unit ->
    parameters__amazon_elasticsearch

type parameters__athena

val parameters__athena :
    ?work_group:string prop ->
    unit ->
    parameters__athena

type parameters__aurora

val parameters__aurora :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__aurora

type parameters__aurora_postgresql

val parameters__aurora_postgresql :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__aurora_postgresql

type parameters__aws_iot_analytics

val parameters__aws_iot_analytics :
    data_set_name:string prop ->
    unit ->
    parameters__aws_iot_analytics

type parameters__jira

val parameters__jira :
    site_base_url:string prop ->
    unit ->
    parameters__jira

type parameters__maria_db

val parameters__maria_db :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__maria_db

type parameters__mysql

val parameters__mysql :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__mysql

type parameters__oracle

val parameters__oracle :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__oracle

type parameters__postgresql

val parameters__postgresql :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__postgresql

type parameters__presto

val parameters__presto :
    catalog:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__presto

type parameters__rds

val parameters__rds :
    database:string prop ->
    instance_id:string prop ->
    unit ->
    parameters__rds

type parameters__redshift

val parameters__redshift :
    ?cluster_id:string prop ->
    ?host:string prop ->
    ?port:float prop ->
    database:string prop ->
    unit ->
    parameters__redshift

type parameters__s3__manifest_file_location

val parameters__s3__manifest_file_location :
    bucket:string prop ->
    key:string prop ->
    unit ->
    parameters__s3__manifest_file_location

type parameters__s3

val parameters__s3 :
    manifest_file_location:parameters__s3__manifest_file_location list ->
    unit ->
    parameters__s3

type parameters__service_now

val parameters__service_now :
    site_base_url:string prop ->
    unit ->
    parameters__service_now

type parameters__snowflake

val parameters__snowflake :
    database:string prop ->
    host:string prop ->
    warehouse:string prop ->
    unit ->
    parameters__snowflake

type parameters__spark

val parameters__spark :
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__spark

type parameters__sql_server

val parameters__sql_server :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__sql_server

type parameters__teradata

val parameters__teradata :
    database:string prop ->
    host:string prop ->
    port:float prop ->
    unit ->
    parameters__teradata

type parameters__twitter

val parameters__twitter :
    max_rows:float prop ->
    query:string prop ->
    unit ->
    parameters__twitter

type parameters

val parameters :
    amazon_elasticsearch:parameters__amazon_elasticsearch list ->
    athena:parameters__athena list ->
    aurora:parameters__aurora list ->
    aurora_postgresql:parameters__aurora_postgresql list ->
    aws_iot_analytics:parameters__aws_iot_analytics list ->
    jira:parameters__jira list ->
    maria_db:parameters__maria_db list ->
    mysql:parameters__mysql list ->
    oracle:parameters__oracle list ->
    postgresql:parameters__postgresql list ->
    presto:parameters__presto list ->
    rds:parameters__rds list ->
    redshift:parameters__redshift list ->
    s3:parameters__s3 list ->
    service_now:parameters__service_now list ->
    snowflake:parameters__snowflake list ->
    spark:parameters__spark list ->
    sql_server:parameters__sql_server list ->
    teradata:parameters__teradata list ->
    twitter:parameters__twitter list ->
    unit ->
    parameters

type permission

val permission :
    actions:string  prop list ->
    principal:string prop ->
    unit ->
    permission

type ssl_properties

val ssl_properties :
    disable_ssl:bool prop ->
    unit ->
    ssl_properties

type vpc_connection_properties

val vpc_connection_properties :
    vpc_connection_arn:string prop ->
    unit ->
    vpc_connection_properties

type aws_quicksight_data_source

val aws_quicksight_data_source :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_source_id:string prop ->
    name:string prop ->
    type_:string prop ->
    credentials:credentials list ->
    parameters:parameters list ->
    permission:permission list ->
    ssl_properties:ssl_properties list ->
    vpc_connection_properties:vpc_connection_properties list ->
    unit ->
    aws_quicksight_data_source

val yojson_of_aws_quicksight_data_source : aws_quicksight_data_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  data_source_id: string prop;
  id: string prop;
  name: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  type_: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_source_id:string prop ->
    name:string prop ->
    type_:string prop ->
    credentials:credentials list ->
    parameters:parameters list ->
    permission:permission list ->
    ssl_properties:ssl_properties list ->
    vpc_connection_properties:vpc_connection_properties list ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    data_source_id:string prop ->
    name:string prop ->
    type_:string prop ->
    credentials:credentials list ->
    parameters:parameters list ->
    permission:permission list ->
    ssl_properties:ssl_properties list ->
    vpc_connection_properties:vpc_connection_properties list ->
    string ->
    t Tf_core.resource

