(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_analytics_application__cloudwatch_logging_options = {
  id : string;  (** id *)
  log_stream_arn : string;  (** log_stream_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__cloudwatch_logging_options *)

type aws_kinesis_analytics_application__inputs__kinesis_firehose = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__kinesis_firehose *)

type aws_kinesis_analytics_application__inputs__kinesis_stream = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__kinesis_stream *)

type aws_kinesis_analytics_application__inputs__parallelism = {
  count : float option; [@option]  (** count *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__parallelism *)

type aws_kinesis_analytics_application__inputs__processing_configuration__lambda = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__processing_configuration__lambda *)

type aws_kinesis_analytics_application__inputs__processing_configuration = {
  lambda :
    aws_kinesis_analytics_application__inputs__processing_configuration__lambda
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__processing_configuration *)

type aws_kinesis_analytics_application__inputs__schema__record_columns = {
  mapping : string option; [@option]  (** mapping *)
  name : string;  (** name *)
  sql_type : string;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_columns *)

type aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string;  (** record_column_delimiter *)
  record_row_delimiter : string;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__csv *)

type aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__json = {
  record_row_path : string;  (** record_row_path *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__json *)

type aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters = {
  csv :
    aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__csv
    list;
  json :
    aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__json
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters *)

type aws_kinesis_analytics_application__inputs__schema__record_format = {
  record_format_type : string;  (** record_format_type *)
  mapping_parameters :
    aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format *)

type aws_kinesis_analytics_application__inputs__schema = {
  record_encoding : string option; [@option]  (** record_encoding *)
  record_columns :
    aws_kinesis_analytics_application__inputs__schema__record_columns
    list;
  record_format :
    aws_kinesis_analytics_application__inputs__schema__record_format
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema *)

type aws_kinesis_analytics_application__inputs__starting_position_configuration = {
  starting_position : string option; [@option]
      (** starting_position *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__starting_position_configuration *)

type aws_kinesis_analytics_application__inputs = {
  id : string;  (** id *)
  name_prefix : string;  (** name_prefix *)
  stream_names : string list;  (** stream_names *)
  kinesis_firehose :
    aws_kinesis_analytics_application__inputs__kinesis_firehose list;
  kinesis_stream :
    aws_kinesis_analytics_application__inputs__kinesis_stream list;
  parallelism :
    aws_kinesis_analytics_application__inputs__parallelism list;
  processing_configuration :
    aws_kinesis_analytics_application__inputs__processing_configuration
    list;
  schema : aws_kinesis_analytics_application__inputs__schema list;
  starting_position_configuration :
    aws_kinesis_analytics_application__inputs__starting_position_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs *)

type aws_kinesis_analytics_application__outputs__kinesis_firehose = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__kinesis_firehose *)

type aws_kinesis_analytics_application__outputs__kinesis_stream = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__kinesis_stream *)

type aws_kinesis_analytics_application__outputs__lambda = {
  resource_arn : string;  (** resource_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__lambda *)

type aws_kinesis_analytics_application__outputs__schema = {
  record_format_type : string;  (** record_format_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__schema *)

type aws_kinesis_analytics_application__outputs = {
  id : string;  (** id *)
  name : string;  (** name *)
  kinesis_firehose :
    aws_kinesis_analytics_application__outputs__kinesis_firehose list;
  kinesis_stream :
    aws_kinesis_analytics_application__outputs__kinesis_stream list;
  lambda : aws_kinesis_analytics_application__outputs__lambda list;
  schema : aws_kinesis_analytics_application__outputs__schema list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs *)

type aws_kinesis_analytics_application__reference_data_sources__s3 = {
  bucket_arn : string;  (** bucket_arn *)
  file_key : string;  (** file_key *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__s3 *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_columns = {
  mapping : string option; [@option]  (** mapping *)
  name : string;  (** name *)
  sql_type : string;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_columns *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string;  (** record_column_delimiter *)
  record_row_delimiter : string;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__csv *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__json = {
  record_row_path : string;  (** record_row_path *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__json *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters = {
  csv :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__csv
    list;
  json :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__json
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format = {
  record_format_type : string;  (** record_format_type *)
  mapping_parameters :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format *)

type aws_kinesis_analytics_application__reference_data_sources__schema = {
  record_encoding : string option; [@option]  (** record_encoding *)
  record_columns :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_columns
    list;
  record_format :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_format
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema *)

type aws_kinesis_analytics_application__reference_data_sources = {
  id : string;  (** id *)
  table_name : string;  (** table_name *)
  s3 :
    aws_kinesis_analytics_application__reference_data_sources__s3
    list;
  schema :
    aws_kinesis_analytics_application__reference_data_sources__schema
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources *)

type aws_kinesis_analytics_application = {
  code : string option; [@option]  (** code *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  start_application : bool option; [@option]
      (** start_application *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  cloudwatch_logging_options :
    aws_kinesis_analytics_application__cloudwatch_logging_options
    list;
  inputs : aws_kinesis_analytics_application__inputs list;
  outputs : aws_kinesis_analytics_application__outputs list;
  reference_data_sources :
    aws_kinesis_analytics_application__reference_data_sources list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application *)

let aws_kinesis_analytics_application ?code ?description ?id
    ?start_application ?tags ?tags_all ~name
    ~cloudwatch_logging_options ~inputs ~outputs
    ~reference_data_sources __resource_id =
  let __resource_type = "aws_kinesis_analytics_application" in
  let __resource =
    {
      code;
      description;
      id;
      name;
      start_application;
      tags;
      tags_all;
      cloudwatch_logging_options;
      inputs;
      outputs;
      reference_data_sources;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_analytics_application __resource);
  ()
