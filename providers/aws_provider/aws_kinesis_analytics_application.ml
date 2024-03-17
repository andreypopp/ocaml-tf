(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_analytics_application__cloudwatch_logging_options = {
  id : string prop;  (** id *)
  log_stream_arn : string prop;  (** log_stream_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__cloudwatch_logging_options *)

type aws_kinesis_analytics_application__inputs__kinesis_firehose = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__kinesis_firehose *)

type aws_kinesis_analytics_application__inputs__kinesis_stream = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__kinesis_stream *)

type aws_kinesis_analytics_application__inputs__parallelism = {
  count : float prop option; [@option]  (** count *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__parallelism *)

type aws_kinesis_analytics_application__inputs__processing_configuration__lambda = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
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
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_columns *)

type aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__csv *)

type aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;  (** record_row_path *)
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
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    aws_kinesis_analytics_application__inputs__schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__schema__record_format *)

type aws_kinesis_analytics_application__inputs__schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
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
  starting_position : string prop option; [@option]
      (** starting_position *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__inputs__starting_position_configuration *)

type aws_kinesis_analytics_application__inputs = {
  id : string prop;  (** id *)
  name_prefix : string prop;  (** name_prefix *)
  stream_names : string prop list;  (** stream_names *)
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
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__kinesis_firehose *)

type aws_kinesis_analytics_application__outputs__kinesis_stream = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__kinesis_stream *)

type aws_kinesis_analytics_application__outputs__lambda = {
  resource_arn : string prop;  (** resource_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__lambda *)

type aws_kinesis_analytics_application__outputs__schema = {
  record_format_type : string prop;  (** record_format_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__outputs__schema *)

type aws_kinesis_analytics_application__outputs = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
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
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__s3 *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_columns = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_columns *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__csv *)

type aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;  (** record_row_path *)
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
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    aws_kinesis_analytics_application__reference_data_sources__schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_analytics_application__reference_data_sources__schema__record_format *)

type aws_kinesis_analytics_application__reference_data_sources__schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
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
  id : string prop;  (** id *)
  table_name : string prop;  (** table_name *)
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
  code : string prop option; [@option]  (** code *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_application : bool prop option; [@option]
      (** start_application *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
