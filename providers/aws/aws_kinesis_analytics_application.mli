(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudwatch_logging_options

val cloudwatch_logging_options :
  log_stream_arn:string prop ->
  role_arn:string prop ->
  unit ->
  cloudwatch_logging_options

type inputs__kinesis_firehose

val inputs__kinesis_firehose :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  inputs__kinesis_firehose

type inputs__kinesis_stream

val inputs__kinesis_stream :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  inputs__kinesis_stream

type inputs__parallelism

val inputs__parallelism :
  ?count:float prop -> unit -> inputs__parallelism

type inputs__processing_configuration__lambda

val inputs__processing_configuration__lambda :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  inputs__processing_configuration__lambda

type inputs__processing_configuration

val inputs__processing_configuration :
  lambda:inputs__processing_configuration__lambda list ->
  unit ->
  inputs__processing_configuration

type inputs__schema__record_columns

val inputs__schema__record_columns :
  ?mapping:string prop ->
  name:string prop ->
  sql_type:string prop ->
  unit ->
  inputs__schema__record_columns

type inputs__schema__record_format__mapping_parameters__csv

val inputs__schema__record_format__mapping_parameters__csv :
  record_column_delimiter:string prop ->
  record_row_delimiter:string prop ->
  unit ->
  inputs__schema__record_format__mapping_parameters__csv

type inputs__schema__record_format__mapping_parameters__json

val inputs__schema__record_format__mapping_parameters__json :
  record_row_path:string prop ->
  unit ->
  inputs__schema__record_format__mapping_parameters__json

type inputs__schema__record_format__mapping_parameters

val inputs__schema__record_format__mapping_parameters :
  ?csv:inputs__schema__record_format__mapping_parameters__csv list ->
  ?json:inputs__schema__record_format__mapping_parameters__json list ->
  unit ->
  inputs__schema__record_format__mapping_parameters

type inputs__schema__record_format

val inputs__schema__record_format :
  ?mapping_parameters:
    inputs__schema__record_format__mapping_parameters list ->
  unit ->
  inputs__schema__record_format

type inputs__schema

val inputs__schema :
  ?record_encoding:string prop ->
  record_columns:inputs__schema__record_columns list ->
  record_format:inputs__schema__record_format list ->
  unit ->
  inputs__schema

type inputs__starting_position_configuration

val inputs__starting_position_configuration :
  ?starting_position:string prop ->
  unit ->
  inputs__starting_position_configuration

type inputs

val inputs :
  ?kinesis_firehose:inputs__kinesis_firehose list ->
  ?kinesis_stream:inputs__kinesis_stream list ->
  ?parallelism:inputs__parallelism list ->
  ?processing_configuration:inputs__processing_configuration list ->
  ?starting_position_configuration:
    inputs__starting_position_configuration list ->
  name_prefix:string prop ->
  schema:inputs__schema list ->
  unit ->
  inputs

type outputs__kinesis_firehose

val outputs__kinesis_firehose :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  outputs__kinesis_firehose

type outputs__kinesis_stream

val outputs__kinesis_stream :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  outputs__kinesis_stream

type outputs__lambda

val outputs__lambda :
  resource_arn:string prop ->
  role_arn:string prop ->
  unit ->
  outputs__lambda

type outputs__schema

val outputs__schema :
  record_format_type:string prop -> unit -> outputs__schema

type outputs

val outputs :
  ?kinesis_firehose:outputs__kinesis_firehose list ->
  ?kinesis_stream:outputs__kinesis_stream list ->
  ?lambda:outputs__lambda list ->
  name:string prop ->
  schema:outputs__schema list ->
  unit ->
  outputs

type reference_data_sources__s3

val reference_data_sources__s3 :
  bucket_arn:string prop ->
  file_key:string prop ->
  role_arn:string prop ->
  unit ->
  reference_data_sources__s3

type reference_data_sources__schema__record_columns

val reference_data_sources__schema__record_columns :
  ?mapping:string prop ->
  name:string prop ->
  sql_type:string prop ->
  unit ->
  reference_data_sources__schema__record_columns

type reference_data_sources__schema__record_format__mapping_parameters__csv

val reference_data_sources__schema__record_format__mapping_parameters__csv :
  record_column_delimiter:string prop ->
  record_row_delimiter:string prop ->
  unit ->
  reference_data_sources__schema__record_format__mapping_parameters__csv

type reference_data_sources__schema__record_format__mapping_parameters__json

val reference_data_sources__schema__record_format__mapping_parameters__json :
  record_row_path:string prop ->
  unit ->
  reference_data_sources__schema__record_format__mapping_parameters__json

type reference_data_sources__schema__record_format__mapping_parameters

val reference_data_sources__schema__record_format__mapping_parameters :
  ?csv:
    reference_data_sources__schema__record_format__mapping_parameters__csv
    list ->
  ?json:
    reference_data_sources__schema__record_format__mapping_parameters__json
    list ->
  unit ->
  reference_data_sources__schema__record_format__mapping_parameters

type reference_data_sources__schema__record_format

val reference_data_sources__schema__record_format :
  ?mapping_parameters:
    reference_data_sources__schema__record_format__mapping_parameters
    list ->
  unit ->
  reference_data_sources__schema__record_format

type reference_data_sources__schema

val reference_data_sources__schema :
  ?record_encoding:string prop ->
  record_columns:reference_data_sources__schema__record_columns list ->
  record_format:reference_data_sources__schema__record_format list ->
  unit ->
  reference_data_sources__schema

type reference_data_sources

val reference_data_sources :
  table_name:string prop ->
  s3:reference_data_sources__s3 list ->
  schema:reference_data_sources__schema list ->
  unit ->
  reference_data_sources

type aws_kinesis_analytics_application

val aws_kinesis_analytics_application :
  ?code:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?inputs:inputs list ->
  ?reference_data_sources:reference_data_sources list ->
  name:string prop ->
  outputs:outputs list ->
  unit ->
  aws_kinesis_analytics_application

val yojson_of_aws_kinesis_analytics_application :
  aws_kinesis_analytics_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  code : string prop;
  create_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_update_timestamp : string prop;
  name : string prop;
  start_application : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?code:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?inputs:inputs list ->
  ?reference_data_sources:reference_data_sources list ->
  name:string prop ->
  outputs:outputs list ->
  string ->
  t

val make :
  ?code:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?inputs:inputs list ->
  ?reference_data_sources:reference_data_sources list ->
  name:string prop ->
  outputs:outputs list ->
  string ->
  t Tf_core.resource
