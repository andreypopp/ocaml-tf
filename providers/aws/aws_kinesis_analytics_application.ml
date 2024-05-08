(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_logging_options = {
  log_stream_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_logging_options) -> ()

let yojson_of_cloudwatch_logging_options =
  (function
   | { log_stream_arn = v_log_stream_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_stream_arn
         in
         ("log_stream_arn", arg) :: bnds
       in
       `Assoc bnds
    : cloudwatch_logging_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_logging_options

[@@@deriving.end]

type inputs__kinesis_firehose = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__kinesis_firehose) -> ()

let yojson_of_inputs__kinesis_firehose =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : inputs__kinesis_firehose -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__kinesis_firehose

[@@@deriving.end]

type inputs__kinesis_stream = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__kinesis_stream) -> ()

let yojson_of_inputs__kinesis_stream =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : inputs__kinesis_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__kinesis_stream

[@@@deriving.end]

type inputs__parallelism = { count : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__parallelism) -> ()

let yojson_of_inputs__parallelism =
  (function
   | { count = v_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inputs__parallelism -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__parallelism

[@@@deriving.end]

type inputs__processing_configuration__lambda = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__processing_configuration__lambda) -> ()

let yojson_of_inputs__processing_configuration__lambda =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : inputs__processing_configuration__lambda ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__processing_configuration__lambda

[@@@deriving.end]

type inputs__processing_configuration = {
  lambda : inputs__processing_configuration__lambda list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__processing_configuration) -> ()

let yojson_of_inputs__processing_configuration =
  (function
   | { lambda = v_lambda } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__processing_configuration__lambda)
               v_lambda
           in
           let bnd = "lambda", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inputs__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__processing_configuration

[@@@deriving.end]

type inputs__schema__record_columns = {
  mapping : string prop option; [@option]
  name : string prop;
  sql_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__schema__record_columns) -> ()

let yojson_of_inputs__schema__record_columns =
  (function
   | { mapping = v_mapping; name = v_name; sql_type = v_sql_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_type in
         ("sql_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mapping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mapping", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inputs__schema__record_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__schema__record_columns

[@@@deriving.end]

type inputs__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
  record_row_delimiter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inputs__schema__record_format__mapping_parameters__csv) ->
  ()

let yojson_of_inputs__schema__record_format__mapping_parameters__csv
    =
  (function
   | {
       record_column_delimiter = v_record_column_delimiter;
       record_row_delimiter = v_record_row_delimiter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_row_delimiter
         in
         ("record_row_delimiter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_column_delimiter
         in
         ("record_column_delimiter", arg) :: bnds
       in
       `Assoc bnds
    : inputs__schema__record_format__mapping_parameters__csv ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inputs__schema__record_format__mapping_parameters__csv

[@@@deriving.end]

type inputs__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inputs__schema__record_format__mapping_parameters__json) ->
  ()

let yojson_of_inputs__schema__record_format__mapping_parameters__json
    =
  (function
   | { record_row_path = v_record_row_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_row_path
         in
         ("record_row_path", arg) :: bnds
       in
       `Assoc bnds
    : inputs__schema__record_format__mapping_parameters__json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inputs__schema__record_format__mapping_parameters__json

[@@@deriving.end]

type inputs__schema__record_format__mapping_parameters = {
  csv : inputs__schema__record_format__mapping_parameters__csv list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json : inputs__schema__record_format__mapping_parameters__json list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inputs__schema__record_format__mapping_parameters) -> ()

let yojson_of_inputs__schema__record_format__mapping_parameters =
  (function
   | { csv = v_csv; json = v_json } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_json then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__schema__record_format__mapping_parameters__json)
               v_json
           in
           let bnd = "json", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__schema__record_format__mapping_parameters__csv)
               v_csv
           in
           let bnd = "csv", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inputs__schema__record_format__mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__schema__record_format__mapping_parameters

[@@@deriving.end]

type inputs__schema__record_format = {
  mapping_parameters :
    inputs__schema__record_format__mapping_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__schema__record_format) -> ()

let yojson_of_inputs__schema__record_format =
  (function
   | { mapping_parameters = v_mapping_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__schema__record_format__mapping_parameters)
               v_mapping_parameters
           in
           let bnd = "mapping_parameters", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inputs__schema__record_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__schema__record_format

[@@@deriving.end]

type inputs__schema = {
  record_encoding : string prop option; [@option]
  record_columns : inputs__schema__record_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_format : inputs__schema__record_format list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__schema) -> ()

let yojson_of_inputs__schema =
  (function
   | {
       record_encoding = v_record_encoding;
       record_columns = v_record_columns;
       record_format = v_record_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_record_format then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__schema__record_format)
               v_record_format
           in
           let bnd = "record_format", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_columns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__schema__record_columns)
               v_record_columns
           in
           let bnd = "record_columns", arg in
           bnd :: bnds
       in
       let bnds =
         match v_record_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inputs__schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__schema

[@@@deriving.end]

type inputs__starting_position_configuration = {
  starting_position : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs__starting_position_configuration) -> ()

let yojson_of_inputs__starting_position_configuration =
  (function
   | { starting_position = v_starting_position } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_starting_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "starting_position", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inputs__starting_position_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs__starting_position_configuration

[@@@deriving.end]

type inputs = {
  name_prefix : string prop;
  kinesis_firehose : inputs__kinesis_firehose list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_stream : inputs__kinesis_stream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parallelism : inputs__parallelism list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration : inputs__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema : inputs__schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  starting_position_configuration :
    inputs__starting_position_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inputs) -> ()

let yojson_of_inputs =
  (function
   | {
       name_prefix = v_name_prefix;
       kinesis_firehose = v_kinesis_firehose;
       kinesis_stream = v_kinesis_stream;
       parallelism = v_parallelism;
       processing_configuration = v_processing_configuration;
       schema = v_schema;
       starting_position_configuration =
         v_starting_position_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_starting_position_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__starting_position_configuration)
               v_starting_position_configuration
           in
           let bnd = "starting_position_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__schema) v_schema
           in
           let bnd = "schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inputs__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parallelism then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__parallelism)
               v_parallelism
           in
           let bnd = "parallelism", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_stream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__kinesis_stream)
               v_kinesis_stream
           in
           let bnd = "kinesis_stream", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_firehose then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inputs__kinesis_firehose)
               v_kinesis_firehose
           in
           let bnd = "kinesis_firehose", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name_prefix in
         ("name_prefix", arg) :: bnds
       in
       `Assoc bnds
    : inputs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inputs

[@@@deriving.end]

type outputs__kinesis_firehose = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs__kinesis_firehose) -> ()

let yojson_of_outputs__kinesis_firehose =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : outputs__kinesis_firehose -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs__kinesis_firehose

[@@@deriving.end]

type outputs__kinesis_stream = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs__kinesis_stream) -> ()

let yojson_of_outputs__kinesis_stream =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : outputs__kinesis_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs__kinesis_stream

[@@@deriving.end]

type outputs__lambda = {
  resource_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs__lambda) -> ()

let yojson_of_outputs__lambda =
  (function
   | { resource_arn = v_resource_arn; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : outputs__lambda -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs__lambda

[@@@deriving.end]

type outputs__schema = { record_format_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs__schema) -> ()

let yojson_of_outputs__schema =
  (function
   | { record_format_type = v_record_format_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_format_type
         in
         ("record_format_type", arg) :: bnds
       in
       `Assoc bnds
    : outputs__schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs__schema

[@@@deriving.end]

type outputs = {
  name : string prop;
  kinesis_firehose : outputs__kinesis_firehose list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_stream : outputs__kinesis_stream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda : outputs__lambda list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema : outputs__schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outputs) -> ()

let yojson_of_outputs =
  (function
   | {
       name = v_name;
       kinesis_firehose = v_kinesis_firehose;
       kinesis_stream = v_kinesis_stream;
       lambda = v_lambda;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outputs__schema) v_schema
           in
           let bnd = "schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outputs__lambda) v_lambda
           in
           let bnd = "lambda", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_stream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outputs__kinesis_stream)
               v_kinesis_stream
           in
           let bnd = "kinesis_stream", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_firehose then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outputs__kinesis_firehose)
               v_kinesis_firehose
           in
           let bnd = "kinesis_firehose", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : outputs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outputs

[@@@deriving.end]

type reference_data_sources__s3 = {
  bucket_arn : string prop;
  file_key : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reference_data_sources__s3) -> ()

let yojson_of_reference_data_sources__s3 =
  (function
   | {
       bucket_arn = v_bucket_arn;
       file_key = v_file_key;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file_key in
         ("file_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : reference_data_sources__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference_data_sources__s3

[@@@deriving.end]

type reference_data_sources__schema__record_columns = {
  mapping : string prop option; [@option]
  name : string prop;
  sql_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : reference_data_sources__schema__record_columns) -> ()

let yojson_of_reference_data_sources__schema__record_columns =
  (function
   | { mapping = v_mapping; name = v_name; sql_type = v_sql_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_type in
         ("sql_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mapping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mapping", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema__record_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference_data_sources__schema__record_columns

[@@@deriving.end]

type reference_data_sources__schema__record_format__mapping_parameters__csv = {
  record_column_delimiter : string prop;
  record_row_delimiter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       reference_data_sources__schema__record_format__mapping_parameters__csv) ->
  ()

let yojson_of_reference_data_sources__schema__record_format__mapping_parameters__csv
    =
  (function
   | {
       record_column_delimiter = v_record_column_delimiter;
       record_row_delimiter = v_record_row_delimiter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_row_delimiter
         in
         ("record_row_delimiter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_column_delimiter
         in
         ("record_column_delimiter", arg) :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema__record_format__mapping_parameters__csv ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_reference_data_sources__schema__record_format__mapping_parameters__csv

[@@@deriving.end]

type reference_data_sources__schema__record_format__mapping_parameters__json = {
  record_row_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       reference_data_sources__schema__record_format__mapping_parameters__json) ->
  ()

let yojson_of_reference_data_sources__schema__record_format__mapping_parameters__json
    =
  (function
   | { record_row_path = v_record_row_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_row_path
         in
         ("record_row_path", arg) :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema__record_format__mapping_parameters__json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_reference_data_sources__schema__record_format__mapping_parameters__json

[@@@deriving.end]

type reference_data_sources__schema__record_format__mapping_parameters = {
  csv :
    reference_data_sources__schema__record_format__mapping_parameters__csv
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json :
    reference_data_sources__schema__record_format__mapping_parameters__json
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       reference_data_sources__schema__record_format__mapping_parameters) ->
  ()

let yojson_of_reference_data_sources__schema__record_format__mapping_parameters
    =
  (function
   | { csv = v_csv; json = v_json } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_json then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reference_data_sources__schema__record_format__mapping_parameters__json)
               v_json
           in
           let bnd = "json", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reference_data_sources__schema__record_format__mapping_parameters__csv)
               v_csv
           in
           let bnd = "csv", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema__record_format__mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_reference_data_sources__schema__record_format__mapping_parameters

[@@@deriving.end]

type reference_data_sources__schema__record_format = {
  mapping_parameters :
    reference_data_sources__schema__record_format__mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reference_data_sources__schema__record_format) -> ()

let yojson_of_reference_data_sources__schema__record_format =
  (function
   | { mapping_parameters = v_mapping_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reference_data_sources__schema__record_format__mapping_parameters)
               v_mapping_parameters
           in
           let bnd = "mapping_parameters", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema__record_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference_data_sources__schema__record_format

[@@@deriving.end]

type reference_data_sources__schema = {
  record_encoding : string prop option; [@option]
  record_columns :
    reference_data_sources__schema__record_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_format : reference_data_sources__schema__record_format list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reference_data_sources__schema) -> ()

let yojson_of_reference_data_sources__schema =
  (function
   | {
       record_encoding = v_record_encoding;
       record_columns = v_record_columns;
       record_format = v_record_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_record_format then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reference_data_sources__schema__record_format)
               v_record_format
           in
           let bnd = "record_format", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reference_data_sources__schema__record_columns)
               v_record_columns
           in
           let bnd = "record_columns", arg in
           bnd :: bnds
       in
       let bnds =
         match v_record_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reference_data_sources__schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference_data_sources__schema

[@@@deriving.end]

type reference_data_sources = {
  table_name : string prop;
  s3 : reference_data_sources__s3 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema : reference_data_sources__schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reference_data_sources) -> ()

let yojson_of_reference_data_sources =
  (function
   | { table_name = v_table_name; s3 = v_s3; schema = v_schema } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reference_data_sources__schema)
               v_schema
           in
           let bnd = "schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reference_data_sources__s3)
               v_s3
           in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       `Assoc bnds
    : reference_data_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference_data_sources

[@@@deriving.end]

type aws_kinesis_analytics_application = {
  code : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  start_application : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  cloudwatch_logging_options : cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  inputs : inputs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outputs : outputs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reference_data_sources : reference_data_sources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_analytics_application) -> ()

let yojson_of_aws_kinesis_analytics_application =
  (function
   | {
       code = v_code;
       description = v_description;
       id = v_id;
       name = v_name;
       start_application = v_start_application;
       tags = v_tags;
       tags_all = v_tags_all;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       inputs = v_inputs;
       outputs = v_outputs;
       reference_data_sources = v_reference_data_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_reference_data_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reference_data_sources)
               v_reference_data_sources
           in
           let bnd = "reference_data_sources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_outputs then bnds
         else
           let arg = (yojson_of_list yojson_of_outputs) v_outputs in
           let bnd = "outputs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inputs then bnds
         else
           let arg = (yojson_of_list yojson_of_inputs) v_inputs in
           let bnd = "inputs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_application with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_application", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kinesis_analytics_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_analytics_application

[@@@deriving.end]

let cloudwatch_logging_options ~log_stream_arn ~role_arn () :
    cloudwatch_logging_options =
  { log_stream_arn; role_arn }

let inputs__kinesis_firehose ~resource_arn ~role_arn () :
    inputs__kinesis_firehose =
  { resource_arn; role_arn }

let inputs__kinesis_stream ~resource_arn ~role_arn () :
    inputs__kinesis_stream =
  { resource_arn; role_arn }

let inputs__parallelism ?count () : inputs__parallelism = { count }

let inputs__processing_configuration__lambda ~resource_arn ~role_arn
    () : inputs__processing_configuration__lambda =
  { resource_arn; role_arn }

let inputs__processing_configuration ~lambda () :
    inputs__processing_configuration =
  { lambda }

let inputs__schema__record_columns ?mapping ~name ~sql_type () :
    inputs__schema__record_columns =
  { mapping; name; sql_type }

let inputs__schema__record_format__mapping_parameters__csv
    ~record_column_delimiter ~record_row_delimiter () :
    inputs__schema__record_format__mapping_parameters__csv =
  { record_column_delimiter; record_row_delimiter }

let inputs__schema__record_format__mapping_parameters__json
    ~record_row_path () :
    inputs__schema__record_format__mapping_parameters__json =
  { record_row_path }

let inputs__schema__record_format__mapping_parameters ?(csv = [])
    ?(json = []) () :
    inputs__schema__record_format__mapping_parameters =
  { csv; json }

let inputs__schema__record_format ?(mapping_parameters = []) () :
    inputs__schema__record_format =
  { mapping_parameters }

let inputs__schema ?record_encoding ~record_columns ~record_format ()
    : inputs__schema =
  { record_encoding; record_columns; record_format }

let inputs__starting_position_configuration ?starting_position () :
    inputs__starting_position_configuration =
  { starting_position }

let inputs ?(kinesis_firehose = []) ?(kinesis_stream = [])
    ?(parallelism = []) ?(processing_configuration = [])
    ?(starting_position_configuration = []) ~name_prefix ~schema () :
    inputs =
  {
    name_prefix;
    kinesis_firehose;
    kinesis_stream;
    parallelism;
    processing_configuration;
    schema;
    starting_position_configuration;
  }

let outputs__kinesis_firehose ~resource_arn ~role_arn () :
    outputs__kinesis_firehose =
  { resource_arn; role_arn }

let outputs__kinesis_stream ~resource_arn ~role_arn () :
    outputs__kinesis_stream =
  { resource_arn; role_arn }

let outputs__lambda ~resource_arn ~role_arn () : outputs__lambda =
  { resource_arn; role_arn }

let outputs__schema ~record_format_type () : outputs__schema =
  { record_format_type }

let outputs ?(kinesis_firehose = []) ?(kinesis_stream = [])
    ?(lambda = []) ~name ~schema () : outputs =
  { name; kinesis_firehose; kinesis_stream; lambda; schema }

let reference_data_sources__s3 ~bucket_arn ~file_key ~role_arn () :
    reference_data_sources__s3 =
  { bucket_arn; file_key; role_arn }

let reference_data_sources__schema__record_columns ?mapping ~name
    ~sql_type () : reference_data_sources__schema__record_columns =
  { mapping; name; sql_type }

let reference_data_sources__schema__record_format__mapping_parameters__csv
    ~record_column_delimiter ~record_row_delimiter () :
    reference_data_sources__schema__record_format__mapping_parameters__csv
    =
  { record_column_delimiter; record_row_delimiter }

let reference_data_sources__schema__record_format__mapping_parameters__json
    ~record_row_path () :
    reference_data_sources__schema__record_format__mapping_parameters__json
    =
  { record_row_path }

let reference_data_sources__schema__record_format__mapping_parameters
    ?(csv = []) ?(json = []) () :
    reference_data_sources__schema__record_format__mapping_parameters
    =
  { csv; json }

let reference_data_sources__schema__record_format
    ?(mapping_parameters = []) () :
    reference_data_sources__schema__record_format =
  { mapping_parameters }

let reference_data_sources__schema ?record_encoding ~record_columns
    ~record_format () : reference_data_sources__schema =
  { record_encoding; record_columns; record_format }

let reference_data_sources ~table_name ~s3 ~schema () :
    reference_data_sources =
  { table_name; s3; schema }

let aws_kinesis_analytics_application ?code ?description ?id
    ?start_application ?tags ?tags_all
    ?(cloudwatch_logging_options = []) ?(inputs = [])
    ?(reference_data_sources = []) ~name ~outputs () :
    aws_kinesis_analytics_application =
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

type t = {
  tf_name : string;
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

let make ?code ?description ?id ?start_application ?tags ?tags_all
    ?(cloudwatch_logging_options = []) ?(inputs = [])
    ?(reference_data_sources = []) ~name ~outputs __id =
  let __type = "aws_kinesis_analytics_application" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       create_timestamp =
         Prop.computed __type __id "create_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_update_timestamp =
         Prop.computed __type __id "last_update_timestamp";
       name = Prop.computed __type __id "name";
       start_application =
         Prop.computed __type __id "start_application";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_analytics_application
        (aws_kinesis_analytics_application ?code ?description ?id
           ?start_application ?tags ?tags_all
           ~cloudwatch_logging_options ~inputs
           ~reference_data_sources ~name ~outputs ());
    attrs = __attrs;
  }

let register ?tf_module ?code ?description ?id ?start_application
    ?tags ?tags_all ?(cloudwatch_logging_options = []) ?(inputs = [])
    ?(reference_data_sources = []) ~name ~outputs __id =
  let (r : _ Tf_core.resource) =
    make ?code ?description ?id ?start_application ?tags ?tags_all
      ~cloudwatch_logging_options ~inputs ~reference_data_sources
      ~name ~outputs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
