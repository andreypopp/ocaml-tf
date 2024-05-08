(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type elasticsearch_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : elasticsearch_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_elasticsearch_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elasticsearch_configuration__cloudwatch_logging_options

[@@@deriving.end]

type elasticsearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       elasticsearch_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_elasticsearch_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elasticsearch_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type elasticsearch_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    elasticsearch_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       elasticsearch_configuration__processing_configuration__processors) ->
  ()

let yojson_of_elasticsearch_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elasticsearch_configuration__processing_configuration__processors

[@@@deriving.end]

type elasticsearch_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    elasticsearch_configuration__processing_configuration__processors
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : elasticsearch_configuration__processing_configuration) ->
  ()

let yojson_of_elasticsearch_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elasticsearch_configuration__processing_configuration

[@@@deriving.end]

type elasticsearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       elasticsearch_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elasticsearch_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type elasticsearch_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch_configuration__s3_configuration) -> ()

let yojson_of_elasticsearch_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch_configuration__s3_configuration

[@@@deriving.end]

type elasticsearch_configuration__vpc_config = {
  role_arn : string prop;
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch_configuration__vpc_config) -> ()

let yojson_of_elasticsearch_configuration__vpc_config =
  (function
   | {
       role_arn = v_role_arn;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration__vpc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch_configuration__vpc_config

[@@@deriving.end]

type elasticsearch_configuration = {
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  cluster_endpoint : string prop option; [@option]
  domain_arn : string prop option; [@option]
  index_name : string prop;
  index_rotation_period : string prop option; [@option]
  retry_duration : float prop option; [@option]
  role_arn : string prop;
  s3_backup_mode : string prop option; [@option]
  type_name : string prop option; [@option]
  cloudwatch_logging_options :
    elasticsearch_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    elasticsearch_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration :
    elasticsearch_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_config : elasticsearch_configuration__vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch_configuration) -> ()

let yojson_of_elasticsearch_configuration =
  (function
   | {
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       cluster_endpoint = v_cluster_endpoint;
       domain_arn = v_domain_arn;
       index_name = v_index_name;
       index_rotation_period = v_index_rotation_period;
       retry_duration = v_retry_duration;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       type_name = v_type_name;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       processing_configuration = v_processing_configuration;
       s3_configuration = v_s3_configuration;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__vpc_config)
               v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elasticsearch_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_rotation_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_rotation_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_name in
         ("index_name", arg) :: bnds
       in
       let bnds =
         match v_domain_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elasticsearch_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch_configuration

[@@@deriving.end]

type extended_s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : extended_s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_extended_s3_configuration__cloudwatch_logging_options =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de = {
  timestamp_formats : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    =
  (function
   | { timestamp_formats = v_timestamp_formats } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timestamp_formats with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "timestamp_formats", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de = {
  case_insensitive : bool prop option; [@option]
  column_to_json_key_mappings : (string * string prop) list option;
      [@option]
  convert_dots_in_json_keys_to_underscores : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    =
  (function
   | {
       case_insensitive = v_case_insensitive;
       column_to_json_key_mappings = v_column_to_json_key_mappings;
       convert_dots_in_json_keys_to_underscores =
         v_convert_dots_in_json_keys_to_underscores;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_convert_dots_in_json_keys_to_underscores with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "convert_dots_in_json_keys_to_underscores", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_column_to_json_key_mappings with
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
             let bnd = "column_to_json_key_mappings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_case_insensitive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "case_insensitive", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer = {
  hive_json_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  open_x_json_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    =
  (function
   | {
       hive_json_ser_de = v_hive_json_ser_de;
       open_x_json_ser_de = v_open_x_json_ser_de;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_open_x_json_ser_de then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de)
               v_open_x_json_ser_de
           in
           let bnd = "open_x_json_ser_de", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hive_json_ser_de then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de)
               v_hive_json_ser_de
           in
           let bnd = "hive_json_ser_de", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration = {
  deserializer :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__input_format_configuration) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    =
  (function
   | { deserializer = v_deserializer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_deserializer then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer)
               v_deserializer
           in
           let bnd = "deserializer", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__input_format_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de = {
  block_size_bytes : float prop option; [@option]
  bloom_filter_columns : string prop list option; [@option]
  bloom_filter_false_positive_probability : float prop option;
      [@option]
  compression : string prop option; [@option]
  dictionary_key_threshold : float prop option; [@option]
  enable_padding : bool prop option; [@option]
  format_version : string prop option; [@option]
  padding_tolerance : float prop option; [@option]
  row_index_stride : float prop option; [@option]
  stripe_size_bytes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    =
  (function
   | {
       block_size_bytes = v_block_size_bytes;
       bloom_filter_columns = v_bloom_filter_columns;
       bloom_filter_false_positive_probability =
         v_bloom_filter_false_positive_probability;
       compression = v_compression;
       dictionary_key_threshold = v_dictionary_key_threshold;
       enable_padding = v_enable_padding;
       format_version = v_format_version;
       padding_tolerance = v_padding_tolerance;
       row_index_stride = v_row_index_stride;
       stripe_size_bytes = v_stripe_size_bytes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stripe_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "stripe_size_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_row_index_stride with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "row_index_stride", arg in
             bnd :: bnds
       in
       let bnds =
         match v_padding_tolerance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "padding_tolerance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_format_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "format_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_padding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_padding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dictionary_key_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dictionary_key_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bloom_filter_false_positive_probability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "bloom_filter_false_positive_probability", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_bloom_filter_columns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bloom_filter_columns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_size_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de = {
  block_size_bytes : float prop option; [@option]
  compression : string prop option; [@option]
  enable_dictionary_compression : bool prop option; [@option]
  max_padding_bytes : float prop option; [@option]
  page_size_bytes : float prop option; [@option]
  writer_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    =
  (function
   | {
       block_size_bytes = v_block_size_bytes;
       compression = v_compression;
       enable_dictionary_compression =
         v_enable_dictionary_compression;
       max_padding_bytes = v_max_padding_bytes;
       page_size_bytes = v_page_size_bytes;
       writer_version = v_writer_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_writer_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "writer_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_page_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "page_size_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_padding_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_padding_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dictionary_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dictionary_compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_size_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer = {
  orc_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parquet_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    =
  (function
   | { orc_ser_de = v_orc_ser_de; parquet_ser_de = v_parquet_ser_de }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parquet_ser_de then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de)
               v_parquet_ser_de
           in
           let bnd = "parquet_ser_de", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_orc_ser_de then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de)
               v_orc_ser_de
           in
           let bnd = "orc_ser_de", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration = {
  serializer :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__output_format_configuration) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    =
  (function
   | { serializer = v_serializer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_serializer then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer)
               v_serializer
           in
           let bnd = "serializer", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__output_format_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration__schema_configuration = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  region : string prop option; [@option]
  role_arn : string prop;
  table_name : string prop;
  version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration__schema_configuration) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       region = v_region;
       role_arn = v_role_arn;
       table_name = v_table_name;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration__schema_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration__schema_configuration

[@@@deriving.end]

type extended_s3_configuration__data_format_conversion_configuration = {
  enabled : bool prop option; [@option]
  input_format_configuration :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output_format_configuration :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema_configuration :
    extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__data_format_conversion_configuration) ->
  ()

let yojson_of_extended_s3_configuration__data_format_conversion_configuration
    =
  (function
   | {
       enabled = v_enabled;
       input_format_configuration = v_input_format_configuration;
       output_format_configuration = v_output_format_configuration;
       schema_configuration = v_schema_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__schema_configuration)
               v_schema_configuration
           in
           let bnd = "schema_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_output_format_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__output_format_configuration)
               v_output_format_configuration
           in
           let bnd = "output_format_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_format_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration__input_format_configuration)
               v_input_format_configuration
           in
           let bnd = "input_format_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__data_format_conversion_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__data_format_conversion_configuration

[@@@deriving.end]

type extended_s3_configuration__dynamic_partitioning_configuration = {
  enabled : bool prop option; [@option]
  retry_duration : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__dynamic_partitioning_configuration) ->
  ()

let yojson_of_extended_s3_configuration__dynamic_partitioning_configuration
    =
  (function
   | { enabled = v_enabled; retry_duration = v_retry_duration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__dynamic_partitioning_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__dynamic_partitioning_configuration

[@@@deriving.end]

type extended_s3_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_extended_s3_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type extended_s3_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    extended_s3_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__processing_configuration__processors) ->
  ()

let yojson_of_extended_s3_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__processing_configuration__processors

[@@@deriving.end]

type extended_s3_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    extended_s3_configuration__processing_configuration__processors
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : extended_s3_configuration__processing_configuration) -> ()

let yojson_of_extended_s3_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_s3_configuration__processing_configuration

[@@@deriving.end]

type extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options

[@@@deriving.end]

type extended_s3_configuration__s3_backup_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : extended_s3_configuration__s3_backup_configuration) -> ()

let yojson_of_extended_s3_configuration__s3_backup_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration__s3_backup_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_s3_configuration__s3_backup_configuration

[@@@deriving.end]

type extended_s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  custom_time_zone : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  file_extension : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  s3_backup_mode : string prop option; [@option]
  cloudwatch_logging_options :
    extended_s3_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_format_conversion_configuration :
    extended_s3_configuration__data_format_conversion_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamic_partitioning_configuration :
    extended_s3_configuration__dynamic_partitioning_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    extended_s3_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_backup_configuration :
    extended_s3_configuration__s3_backup_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extended_s3_configuration) -> ()

let yojson_of_extended_s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       custom_time_zone = v_custom_time_zone;
       error_output_prefix = v_error_output_prefix;
       file_extension = v_file_extension;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       data_format_conversion_configuration =
         v_data_format_conversion_configuration;
       dynamic_partitioning_configuration =
         v_dynamic_partitioning_configuration;
       processing_configuration = v_processing_configuration;
       s3_backup_configuration = v_s3_backup_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_backup_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__s3_backup_configuration)
               v_s3_backup_configuration
           in
           let bnd = "s3_backup_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamic_partitioning_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__dynamic_partitioning_configuration)
               v_dynamic_partitioning_configuration
           in
           let bnd = "dynamic_partitioning_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_format_conversion_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__data_format_conversion_configuration)
               v_data_format_conversion_configuration
           in
           let bnd = "data_format_conversion_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extended_s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_extension with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_extension", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : extended_s3_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_s3_configuration

[@@@deriving.end]

type http_endpoint_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : http_endpoint_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_http_endpoint_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__cloudwatch_logging_options

[@@@deriving.end]

type http_endpoint_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       http_endpoint_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_http_endpoint_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type http_endpoint_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    http_endpoint_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       http_endpoint_configuration__processing_configuration__processors) ->
  ()

let yojson_of_http_endpoint_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__processing_configuration__processors

[@@@deriving.end]

type http_endpoint_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    http_endpoint_configuration__processing_configuration__processors
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : http_endpoint_configuration__processing_configuration) ->
  ()

let yojson_of_http_endpoint_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__processing_configuration

[@@@deriving.end]

type http_endpoint_configuration__request_configuration__common_attributes = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       http_endpoint_configuration__request_configuration__common_attributes) ->
  ()

let yojson_of_http_endpoint_configuration__request_configuration__common_attributes
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__request_configuration__common_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__request_configuration__common_attributes

[@@@deriving.end]

type http_endpoint_configuration__request_configuration = {
  content_encoding : string prop option; [@option]
  common_attributes :
    http_endpoint_configuration__request_configuration__common_attributes
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : http_endpoint_configuration__request_configuration) -> ()

let yojson_of_http_endpoint_configuration__request_configuration =
  (function
   | {
       content_encoding = v_content_encoding;
       common_attributes = v_common_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_common_attributes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__request_configuration__common_attributes)
               v_common_attributes
           in
           let bnd = "common_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_content_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__request_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_endpoint_configuration__request_configuration

[@@@deriving.end]

type http_endpoint_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       http_endpoint_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_http_endpoint_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type http_endpoint_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_endpoint_configuration__s3_configuration) -> ()

let yojson_of_http_endpoint_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_endpoint_configuration__s3_configuration

[@@@deriving.end]

type http_endpoint_configuration = {
  access_key : string prop option; [@option]
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  name : string prop option; [@option]
  retry_duration : float prop option; [@option]
  role_arn : string prop option; [@option]
  s3_backup_mode : string prop option; [@option]
  url : string prop;
  cloudwatch_logging_options :
    http_endpoint_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    http_endpoint_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_configuration :
    http_endpoint_configuration__request_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration :
    http_endpoint_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_endpoint_configuration) -> ()

let yojson_of_http_endpoint_configuration =
  (function
   | {
       access_key = v_access_key;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       name = v_name;
       retry_duration = v_retry_duration;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       url = v_url;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       processing_configuration = v_processing_configuration;
       request_configuration = v_request_configuration;
       s3_configuration = v_s3_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__request_configuration)
               v_request_configuration
           in
           let bnd = "request_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_http_endpoint_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_endpoint_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_endpoint_configuration

[@@@deriving.end]

type kinesis_source_configuration = {
  kinesis_stream_arn : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis_source_configuration) -> ()

let yojson_of_kinesis_source_configuration =
  (function
   | {
       kinesis_stream_arn = v_kinesis_stream_arn;
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
         let arg =
           yojson_of_prop yojson_of_string v_kinesis_stream_arn
         in
         ("kinesis_stream_arn", arg) :: bnds
       in
       `Assoc bnds
    : kinesis_source_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_source_configuration

[@@@deriving.end]

type msk_source_configuration__authentication_configuration = {
  connectivity : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : msk_source_configuration__authentication_configuration) ->
  ()

let yojson_of_msk_source_configuration__authentication_configuration
    =
  (function
   | { connectivity = v_connectivity; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connectivity in
         ("connectivity", arg) :: bnds
       in
       `Assoc bnds
    : msk_source_configuration__authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_msk_source_configuration__authentication_configuration

[@@@deriving.end]

type msk_source_configuration = {
  msk_cluster_arn : string prop;
  topic_name : string prop;
  authentication_configuration :
    msk_source_configuration__authentication_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : msk_source_configuration) -> ()

let yojson_of_msk_source_configuration =
  (function
   | {
       msk_cluster_arn = v_msk_cluster_arn;
       topic_name = v_topic_name;
       authentication_configuration = v_authentication_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_msk_source_configuration__authentication_configuration)
               v_authentication_configuration
           in
           let bnd = "authentication_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_name in
         ("topic_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_msk_cluster_arn
         in
         ("msk_cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : msk_source_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_msk_source_configuration

[@@@deriving.end]

type opensearch_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : opensearch_configuration__cloudwatch_logging_options) -> ()

let yojson_of_opensearch_configuration__cloudwatch_logging_options =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearch_configuration__cloudwatch_logging_options

[@@@deriving.end]

type opensearch_configuration__document_id_options = {
  default_document_id_format : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearch_configuration__document_id_options) -> ()

let yojson_of_opensearch_configuration__document_id_options =
  (function
   | { default_document_id_format = v_default_document_id_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_document_id_format
         in
         ("default_document_id_format", arg) :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__document_id_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearch_configuration__document_id_options

[@@@deriving.end]

type opensearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearch_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_opensearch_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearch_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type opensearch_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    opensearch_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearch_configuration__processing_configuration__processors) ->
  ()

let yojson_of_opensearch_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearch_configuration__processing_configuration__processors

[@@@deriving.end]

type opensearch_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    opensearch_configuration__processing_configuration__processors
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : opensearch_configuration__processing_configuration) -> ()

let yojson_of_opensearch_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearch_configuration__processing_configuration

[@@@deriving.end]

type opensearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearch_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_opensearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearch_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type opensearch_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    opensearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearch_configuration__s3_configuration) -> ()

let yojson_of_opensearch_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearch_configuration__s3_configuration

[@@@deriving.end]

type opensearch_configuration__vpc_config = {
  role_arn : string prop;
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearch_configuration__vpc_config) -> ()

let yojson_of_opensearch_configuration__vpc_config =
  (function
   | {
       role_arn = v_role_arn;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : opensearch_configuration__vpc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearch_configuration__vpc_config

[@@@deriving.end]

type opensearch_configuration = {
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  cluster_endpoint : string prop option; [@option]
  domain_arn : string prop option; [@option]
  index_name : string prop;
  index_rotation_period : string prop option; [@option]
  retry_duration : float prop option; [@option]
  role_arn : string prop;
  s3_backup_mode : string prop option; [@option]
  type_name : string prop option; [@option]
  cloudwatch_logging_options :
    opensearch_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  document_id_options :
    opensearch_configuration__document_id_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    opensearch_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration : opensearch_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_config : opensearch_configuration__vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearch_configuration) -> ()

let yojson_of_opensearch_configuration =
  (function
   | {
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       cluster_endpoint = v_cluster_endpoint;
       domain_arn = v_domain_arn;
       index_name = v_index_name;
       index_rotation_period = v_index_rotation_period;
       retry_duration = v_retry_duration;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       type_name = v_type_name;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       document_id_options = v_document_id_options;
       processing_configuration = v_processing_configuration;
       s3_configuration = v_s3_configuration;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__vpc_config)
               v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_document_id_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__document_id_options)
               v_document_id_options
           in
           let bnd = "document_id_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearch_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_rotation_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_rotation_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_name in
         ("index_name", arg) :: bnds
       in
       let bnds =
         match v_domain_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearch_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearch_configuration

[@@@deriving.end]

type opensearchserverless_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearchserverless_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_opensearchserverless_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__cloudwatch_logging_options

[@@@deriving.end]

type opensearchserverless_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearchserverless_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_opensearchserverless_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type opensearchserverless_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    opensearchserverless_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearchserverless_configuration__processing_configuration__processors) ->
  ()

let yojson_of_opensearchserverless_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__processing_configuration__processors

[@@@deriving.end]

type opensearchserverless_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    opensearchserverless_configuration__processing_configuration__processors
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearchserverless_configuration__processing_configuration) ->
  ()

let yojson_of_opensearchserverless_configuration__processing_configuration
    =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__processing_configuration

[@@@deriving.end]

type opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type opensearchserverless_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : opensearchserverless_configuration__s3_configuration) -> ()

let yojson_of_opensearchserverless_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_opensearchserverless_configuration__s3_configuration

[@@@deriving.end]

type opensearchserverless_configuration__vpc_config = {
  role_arn : string prop;
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : opensearchserverless_configuration__vpc_config) -> ()

let yojson_of_opensearchserverless_configuration__vpc_config =
  (function
   | {
       role_arn = v_role_arn;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration__vpc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearchserverless_configuration__vpc_config

[@@@deriving.end]

type opensearchserverless_configuration = {
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  collection_endpoint : string prop;
  index_name : string prop;
  retry_duration : float prop option; [@option]
  role_arn : string prop;
  s3_backup_mode : string prop option; [@option]
  cloudwatch_logging_options :
    opensearchserverless_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    opensearchserverless_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration :
    opensearchserverless_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_config : opensearchserverless_configuration__vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : opensearchserverless_configuration) -> ()

let yojson_of_opensearchserverless_configuration =
  (function
   | {
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       collection_endpoint = v_collection_endpoint;
       index_name = v_index_name;
       retry_duration = v_retry_duration;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       processing_configuration = v_processing_configuration;
       s3_configuration = v_s3_configuration;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__vpc_config)
               v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_name in
         ("index_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_collection_endpoint
         in
         ("collection_endpoint", arg) :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : opensearchserverless_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_opensearchserverless_configuration

[@@@deriving.end]

type redshift_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : redshift_configuration__cloudwatch_logging_options) -> ()

let yojson_of_redshift_configuration__cloudwatch_logging_options =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redshift_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_configuration__cloudwatch_logging_options

[@@@deriving.end]

type redshift_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       redshift_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_redshift_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : redshift_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_redshift_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type redshift_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    redshift_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       redshift_configuration__processing_configuration__processors) ->
  ()

let yojson_of_redshift_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : redshift_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_redshift_configuration__processing_configuration__processors

[@@@deriving.end]

type redshift_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    redshift_configuration__processing_configuration__processors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : redshift_configuration__processing_configuration) -> ()

let yojson_of_redshift_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redshift_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_configuration__processing_configuration

[@@@deriving.end]

type redshift_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       redshift_configuration__s3_backup_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redshift_configuration__s3_backup_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_redshift_configuration__s3_backup_configuration__cloudwatch_logging_options

[@@@deriving.end]

type redshift_configuration__s3_backup_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : redshift_configuration__s3_backup_configuration) -> ()

let yojson_of_redshift_configuration__s3_backup_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__s3_backup_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : redshift_configuration__s3_backup_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_configuration__s3_backup_configuration

[@@@deriving.end]

type redshift_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       redshift_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_redshift_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redshift_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_redshift_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type redshift_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    redshift_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift_configuration__s3_configuration) -> ()

let yojson_of_redshift_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : redshift_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_configuration__s3_configuration

[@@@deriving.end]

type redshift_configuration = {
  cluster_jdbcurl : string prop;
  copy_options : string prop option; [@option]
  data_table_columns : string prop option; [@option]
  data_table_name : string prop;
  password : string prop;
  retry_duration : float prop option; [@option]
  role_arn : string prop;
  s3_backup_mode : string prop option; [@option]
  username : string prop;
  cloudwatch_logging_options :
    redshift_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    redshift_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_backup_configuration :
    redshift_configuration__s3_backup_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration : redshift_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift_configuration) -> ()

let yojson_of_redshift_configuration =
  (function
   | {
       cluster_jdbcurl = v_cluster_jdbcurl;
       copy_options = v_copy_options;
       data_table_columns = v_data_table_columns;
       data_table_name = v_data_table_name;
       password = v_password;
       retry_duration = v_retry_duration;
       role_arn = v_role_arn;
       s3_backup_mode = v_s3_backup_mode;
       username = v_username;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       processing_configuration = v_processing_configuration;
       s3_backup_configuration = v_s3_backup_configuration;
       s3_configuration = v_s3_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_backup_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__s3_backup_configuration)
               v_s3_backup_configuration
           in
           let bnd = "s3_backup_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_redshift_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_table_name
         in
         ("data_table_name", arg) :: bnds
       in
       let bnds =
         match v_data_table_columns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_table_columns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_jdbcurl
         in
         ("cluster_jdbcurl", arg) :: bnds
       in
       `Assoc bnds
    : redshift_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_configuration

[@@@deriving.end]

type server_side_encryption = {
  enabled : bool prop option; [@option]
  key_arn : string prop option; [@option]
  key_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption) -> ()

let yojson_of_server_side_encryption =
  (function
   | {
       enabled = v_enabled;
       key_arn = v_key_arn;
       key_type = v_key_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption

[@@@deriving.end]

type splunk_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : splunk_configuration__cloudwatch_logging_options) -> ()

let yojson_of_splunk_configuration__cloudwatch_logging_options =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : splunk_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_splunk_configuration__cloudwatch_logging_options

[@@@deriving.end]

type splunk_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       splunk_configuration__processing_configuration__processors__parameters) ->
  ()

let yojson_of_splunk_configuration__processing_configuration__processors__parameters
    =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : splunk_configuration__processing_configuration__processors__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_splunk_configuration__processing_configuration__processors__parameters

[@@@deriving.end]

type splunk_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]
  parameters :
    splunk_configuration__processing_configuration__processors__parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : splunk_configuration__processing_configuration__processors) ->
  ()

let yojson_of_splunk_configuration__processing_configuration__processors
    =
  (function
   | { type_ = v_type_; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__processing_configuration__processors__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : splunk_configuration__processing_configuration__processors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_splunk_configuration__processing_configuration__processors

[@@@deriving.end]

type splunk_configuration__processing_configuration = {
  enabled : bool prop option; [@option]
  processors :
    splunk_configuration__processing_configuration__processors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : splunk_configuration__processing_configuration) -> ()

let yojson_of_splunk_configuration__processing_configuration =
  (function
   | { enabled = v_enabled; processors = v_processors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_processors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__processing_configuration__processors)
               v_processors
           in
           let bnd = "processors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : splunk_configuration__processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_splunk_configuration__processing_configuration

[@@@deriving.end]

type splunk_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]
  log_group_name : string prop option; [@option]
  log_stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       splunk_configuration__s3_configuration__cloudwatch_logging_options) ->
  ()

let yojson_of_splunk_configuration__s3_configuration__cloudwatch_logging_options
    =
  (function
   | {
       enabled = v_enabled;
       log_group_name = v_log_group_name;
       log_stream_name = v_log_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : splunk_configuration__s3_configuration__cloudwatch_logging_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_splunk_configuration__s3_configuration__cloudwatch_logging_options

[@@@deriving.end]

type splunk_configuration__s3_configuration = {
  bucket_arn : string prop;
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  compression_format : string prop option; [@option]
  error_output_prefix : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  role_arn : string prop;
  cloudwatch_logging_options :
    splunk_configuration__s3_configuration__cloudwatch_logging_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : splunk_configuration__s3_configuration) -> ()

let yojson_of_splunk_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       compression_format = v_compression_format;
       error_output_prefix = v_error_output_prefix;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       role_arn = v_role_arn;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__s3_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_output_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_output_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : splunk_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_splunk_configuration__s3_configuration

[@@@deriving.end]

type splunk_configuration = {
  buffering_interval : float prop option; [@option]
  buffering_size : float prop option; [@option]
  hec_acknowledgment_timeout : float prop option; [@option]
  hec_endpoint : string prop;
  hec_endpoint_type : string prop option; [@option]
  hec_token : string prop;
  retry_duration : float prop option; [@option]
  s3_backup_mode : string prop option; [@option]
  cloudwatch_logging_options :
    splunk_configuration__cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration :
    splunk_configuration__processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_configuration : splunk_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : splunk_configuration) -> ()

let yojson_of_splunk_configuration =
  (function
   | {
       buffering_interval = v_buffering_interval;
       buffering_size = v_buffering_size;
       hec_acknowledgment_timeout = v_hec_acknowledgment_timeout;
       hec_endpoint = v_hec_endpoint;
       hec_endpoint_type = v_hec_endpoint_type;
       hec_token = v_hec_token;
       retry_duration = v_retry_duration;
       s3_backup_mode = v_s3_backup_mode;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
       processing_configuration = v_processing_configuration;
       s3_configuration = v_s3_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logging_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_splunk_configuration__cloudwatch_logging_options)
               v_cloudwatch_logging_options
           in
           let bnd = "cloudwatch_logging_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_s3_backup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_backup_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hec_token in
         ("hec_token", arg) :: bnds
       in
       let bnds =
         match v_hec_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hec_endpoint_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hec_endpoint in
         ("hec_endpoint", arg) :: bnds
       in
       let bnds =
         match v_hec_acknowledgment_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hec_acknowledgment_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffering_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffering_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : splunk_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_splunk_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_kinesis_firehose_delivery_stream = {
  arn : string prop option; [@option]
  destination : string prop;
  destination_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version_id : string prop option; [@option]
  elasticsearch_configuration : elasticsearch_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_s3_configuration : extended_s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_endpoint_configuration : http_endpoint_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_source_configuration : kinesis_source_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  msk_source_configuration : msk_source_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  opensearch_configuration : opensearch_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  opensearchserverless_configuration :
    opensearchserverless_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redshift_configuration : redshift_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  server_side_encryption : server_side_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  splunk_configuration : splunk_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_firehose_delivery_stream) -> ()

let yojson_of_aws_kinesis_firehose_delivery_stream =
  (function
   | {
       arn = v_arn;
       destination = v_destination;
       destination_id = v_destination_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       version_id = v_version_id;
       elasticsearch_configuration = v_elasticsearch_configuration;
       extended_s3_configuration = v_extended_s3_configuration;
       http_endpoint_configuration = v_http_endpoint_configuration;
       kinesis_source_configuration = v_kinesis_source_configuration;
       msk_source_configuration = v_msk_source_configuration;
       opensearch_configuration = v_opensearch_configuration;
       opensearchserverless_configuration =
         v_opensearchserverless_configuration;
       redshift_configuration = v_redshift_configuration;
       server_side_encryption = v_server_side_encryption;
       splunk_configuration = v_splunk_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_splunk_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_splunk_configuration)
               v_splunk_configuration
           in
           let bnd = "splunk_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_server_side_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_server_side_encryption)
               v_server_side_encryption
           in
           let bnd = "server_side_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_redshift_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_redshift_configuration)
               v_redshift_configuration
           in
           let bnd = "redshift_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_opensearchserverless_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_opensearchserverless_configuration)
               v_opensearchserverless_configuration
           in
           let bnd = "opensearchserverless_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_opensearch_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_opensearch_configuration)
               v_opensearch_configuration
           in
           let bnd = "opensearch_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_msk_source_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_msk_source_configuration)
               v_msk_source_configuration
           in
           let bnd = "msk_source_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_source_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kinesis_source_configuration)
               v_kinesis_source_configuration
           in
           let bnd = "kinesis_source_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_endpoint_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_endpoint_configuration)
               v_http_endpoint_configuration
           in
           let bnd = "http_endpoint_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extended_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extended_s3_configuration)
               v_extended_s3_configuration
           in
           let bnd = "extended_s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elasticsearch_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elasticsearch_configuration)
               v_elasticsearch_configuration
           in
           let bnd = "elasticsearch_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
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
         match v_destination_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kinesis_firehose_delivery_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_firehose_delivery_stream

[@@@deriving.end]

let elasticsearch_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    elasticsearch_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let elasticsearch_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    elasticsearch_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let elasticsearch_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    elasticsearch_configuration__processing_configuration__processors
    =
  { type_; parameters }

let elasticsearch_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    elasticsearch_configuration__processing_configuration =
  { enabled; processors }

let elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let elasticsearch_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ?(cloudwatch_logging_options = [])
    ~bucket_arn ~role_arn () :
    elasticsearch_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let elasticsearch_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    elasticsearch_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let elasticsearch_configuration ?buffering_interval ?buffering_size
    ?cluster_endpoint ?domain_arn ?index_rotation_period
    ?retry_duration ?s3_backup_mode ?type_name
    ?(cloudwatch_logging_options = [])
    ?(processing_configuration = []) ?(vpc_config = []) ~index_name
    ~role_arn ~s3_configuration () : elasticsearch_configuration =
  {
    buffering_interval;
    buffering_size;
    cluster_endpoint;
    domain_arn;
    index_name;
    index_rotation_period;
    retry_duration;
    role_arn;
    s3_backup_mode;
    type_name;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let extended_s3_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    extended_s3_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    ?timestamp_formats () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    =
  { timestamp_formats }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    ?case_insensitive ?column_to_json_key_mappings
    ?convert_dots_in_json_keys_to_underscores () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    =
  {
    case_insensitive;
    column_to_json_key_mappings;
    convert_dots_in_json_keys_to_underscores;
  }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    ?(hive_json_ser_de = []) ?(open_x_json_ser_de = []) () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    =
  { hive_json_ser_de; open_x_json_ser_de }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    ~deserializer () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    =
  { deserializer }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    ?block_size_bytes ?bloom_filter_columns
    ?bloom_filter_false_positive_probability ?compression
    ?dictionary_key_threshold ?enable_padding ?format_version
    ?padding_tolerance ?row_index_stride ?stripe_size_bytes () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    =
  {
    block_size_bytes;
    bloom_filter_columns;
    bloom_filter_false_positive_probability;
    compression;
    dictionary_key_threshold;
    enable_padding;
    format_version;
    padding_tolerance;
    row_index_stride;
    stripe_size_bytes;
  }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    ?block_size_bytes ?compression ?enable_dictionary_compression
    ?max_padding_bytes ?page_size_bytes ?writer_version () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    =
  {
    block_size_bytes;
    compression;
    enable_dictionary_compression;
    max_padding_bytes;
    page_size_bytes;
    writer_version;
  }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    ?(orc_ser_de = []) ?(parquet_ser_de = []) () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    =
  { orc_ser_de; parquet_ser_de }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    ~serializer () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    =
  { serializer }

let extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    ?catalog_id ?region ?version_id ~database_name ~role_arn
    ~table_name () :
    extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    =
  {
    catalog_id;
    database_name;
    region;
    role_arn;
    table_name;
    version_id;
  }

let extended_s3_configuration__data_format_conversion_configuration
    ?enabled ~input_format_configuration ~output_format_configuration
    ~schema_configuration () :
    extended_s3_configuration__data_format_conversion_configuration =
  {
    enabled;
    input_format_configuration;
    output_format_configuration;
    schema_configuration;
  }

let extended_s3_configuration__dynamic_partitioning_configuration
    ?enabled ?retry_duration () :
    extended_s3_configuration__dynamic_partitioning_configuration =
  { enabled; retry_duration }

let extended_s3_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    extended_s3_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let extended_s3_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    extended_s3_configuration__processing_configuration__processors =
  { type_; parameters }

let extended_s3_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    extended_s3_configuration__processing_configuration =
  { enabled; processors }

let extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let extended_s3_configuration__s3_backup_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix
    ?(cloudwatch_logging_options = []) ~bucket_arn ~role_arn () :
    extended_s3_configuration__s3_backup_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let extended_s3_configuration ?buffering_interval ?buffering_size
    ?compression_format ?custom_time_zone ?error_output_prefix
    ?file_extension ?kms_key_arn ?prefix ?s3_backup_mode
    ?(cloudwatch_logging_options = [])
    ?(data_format_conversion_configuration = [])
    ?(dynamic_partitioning_configuration = [])
    ?(processing_configuration = []) ?(s3_backup_configuration = [])
    ~bucket_arn ~role_arn () : extended_s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    custom_time_zone;
    error_output_prefix;
    file_extension;
    kms_key_arn;
    prefix;
    role_arn;
    s3_backup_mode;
    cloudwatch_logging_options;
    data_format_conversion_configuration;
    dynamic_partitioning_configuration;
    processing_configuration;
    s3_backup_configuration;
  }

let http_endpoint_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    http_endpoint_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let http_endpoint_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    http_endpoint_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let http_endpoint_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    http_endpoint_configuration__processing_configuration__processors
    =
  { type_; parameters }

let http_endpoint_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    http_endpoint_configuration__processing_configuration =
  { enabled; processors }

let http_endpoint_configuration__request_configuration__common_attributes
    ~name ~value () :
    http_endpoint_configuration__request_configuration__common_attributes
    =
  { name; value }

let http_endpoint_configuration__request_configuration
    ?content_encoding ?(common_attributes = []) () :
    http_endpoint_configuration__request_configuration =
  { content_encoding; common_attributes }

let http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let http_endpoint_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ?(cloudwatch_logging_options = [])
    ~bucket_arn ~role_arn () :
    http_endpoint_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let http_endpoint_configuration ?access_key ?buffering_interval
    ?buffering_size ?name ?retry_duration ?role_arn ?s3_backup_mode
    ?(cloudwatch_logging_options = [])
    ?(processing_configuration = []) ?(request_configuration = [])
    ~url ~s3_configuration () : http_endpoint_configuration =
  {
    access_key;
    buffering_interval;
    buffering_size;
    name;
    retry_duration;
    role_arn;
    s3_backup_mode;
    url;
    cloudwatch_logging_options;
    processing_configuration;
    request_configuration;
    s3_configuration;
  }

let kinesis_source_configuration ~kinesis_stream_arn ~role_arn () :
    kinesis_source_configuration =
  { kinesis_stream_arn; role_arn }

let msk_source_configuration__authentication_configuration
    ~connectivity ~role_arn () :
    msk_source_configuration__authentication_configuration =
  { connectivity; role_arn }

let msk_source_configuration ~msk_cluster_arn ~topic_name
    ~authentication_configuration () : msk_source_configuration =
  { msk_cluster_arn; topic_name; authentication_configuration }

let opensearch_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    opensearch_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let opensearch_configuration__document_id_options
    ~default_document_id_format () :
    opensearch_configuration__document_id_options =
  { default_document_id_format }

let opensearch_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    opensearch_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let opensearch_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    opensearch_configuration__processing_configuration__processors =
  { type_; parameters }

let opensearch_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    opensearch_configuration__processing_configuration =
  { enabled; processors }

let opensearch_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let opensearch_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ?(cloudwatch_logging_options = [])
    ~bucket_arn ~role_arn () :
    opensearch_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let opensearch_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    opensearch_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let opensearch_configuration ?buffering_interval ?buffering_size
    ?cluster_endpoint ?domain_arn ?index_rotation_period
    ?retry_duration ?s3_backup_mode ?type_name
    ?(cloudwatch_logging_options = []) ?(document_id_options = [])
    ?(processing_configuration = []) ?(vpc_config = []) ~index_name
    ~role_arn ~s3_configuration () : opensearch_configuration =
  {
    buffering_interval;
    buffering_size;
    cluster_endpoint;
    domain_arn;
    index_name;
    index_rotation_period;
    retry_duration;
    role_arn;
    s3_backup_mode;
    type_name;
    cloudwatch_logging_options;
    document_id_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let opensearchserverless_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearchserverless_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let opensearchserverless_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    opensearchserverless_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let opensearchserverless_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    opensearchserverless_configuration__processing_configuration__processors
    =
  { type_; parameters }

let opensearchserverless_configuration__processing_configuration
    ?enabled ?(processors = []) () :
    opensearchserverless_configuration__processing_configuration =
  { enabled; processors }

let opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let opensearchserverless_configuration__s3_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix
    ?(cloudwatch_logging_options = []) ~bucket_arn ~role_arn () :
    opensearchserverless_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let opensearchserverless_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    opensearchserverless_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let opensearchserverless_configuration ?buffering_interval
    ?buffering_size ?retry_duration ?s3_backup_mode
    ?(cloudwatch_logging_options = [])
    ?(processing_configuration = []) ?(vpc_config = [])
    ~collection_endpoint ~index_name ~role_arn ~s3_configuration () :
    opensearchserverless_configuration =
  {
    buffering_interval;
    buffering_size;
    collection_endpoint;
    index_name;
    retry_duration;
    role_arn;
    s3_backup_mode;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let redshift_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    redshift_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    redshift_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let redshift_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    redshift_configuration__processing_configuration__processors =
  { type_; parameters }

let redshift_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    redshift_configuration__processing_configuration =
  { enabled; processors }

let redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__s3_backup_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix
    ?(cloudwatch_logging_options = []) ~bucket_arn ~role_arn () :
    redshift_configuration__s3_backup_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let redshift_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    redshift_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ?(cloudwatch_logging_options = [])
    ~bucket_arn ~role_arn () :
    redshift_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let redshift_configuration ?copy_options ?data_table_columns
    ?retry_duration ?s3_backup_mode
    ?(cloudwatch_logging_options = [])
    ?(processing_configuration = []) ?(s3_backup_configuration = [])
    ~cluster_jdbcurl ~data_table_name ~password ~role_arn ~username
    ~s3_configuration () : redshift_configuration =
  {
    cluster_jdbcurl;
    copy_options;
    data_table_columns;
    data_table_name;
    password;
    retry_duration;
    role_arn;
    s3_backup_mode;
    username;
    cloudwatch_logging_options;
    processing_configuration;
    s3_backup_configuration;
    s3_configuration;
  }

let server_side_encryption ?enabled ?key_arn ?key_type () :
    server_side_encryption =
  { enabled; key_arn; key_type }

let splunk_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    splunk_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let splunk_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    splunk_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let splunk_configuration__processing_configuration__processors ~type_
    ~parameters () :
    splunk_configuration__processing_configuration__processors =
  { type_; parameters }

let splunk_configuration__processing_configuration ?enabled
    ?(processors = []) () :
    splunk_configuration__processing_configuration =
  { enabled; processors }

let splunk_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    splunk_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let splunk_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ?(cloudwatch_logging_options = [])
    ~bucket_arn ~role_arn () : splunk_configuration__s3_configuration
    =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let splunk_configuration ?buffering_interval ?buffering_size
    ?hec_acknowledgment_timeout ?hec_endpoint_type ?retry_duration
    ?s3_backup_mode ?(cloudwatch_logging_options = [])
    ?(processing_configuration = []) ~hec_endpoint ~hec_token
    ~s3_configuration () : splunk_configuration =
  {
    buffering_interval;
    buffering_size;
    hec_acknowledgment_timeout;
    hec_endpoint;
    hec_endpoint_type;
    hec_token;
    retry_duration;
    s3_backup_mode;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesis_firehose_delivery_stream ?arn ?destination_id ?id
    ?tags ?tags_all ?version_id ?(elasticsearch_configuration = [])
    ?(extended_s3_configuration = [])
    ?(http_endpoint_configuration = [])
    ?(kinesis_source_configuration = [])
    ?(msk_source_configuration = []) ?(opensearch_configuration = [])
    ?(opensearchserverless_configuration = [])
    ?(redshift_configuration = []) ?(server_side_encryption = [])
    ?(splunk_configuration = []) ?timeouts ~destination ~name () :
    aws_kinesis_firehose_delivery_stream =
  {
    arn;
    destination;
    destination_id;
    id;
    name;
    tags;
    tags_all;
    version_id;
    elasticsearch_configuration;
    extended_s3_configuration;
    http_endpoint_configuration;
    kinesis_source_configuration;
    msk_source_configuration;
    opensearch_configuration;
    opensearchserverless_configuration;
    redshift_configuration;
    server_side_encryption;
    splunk_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  destination : string prop;
  destination_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
}

let make ?arn ?destination_id ?id ?tags ?tags_all ?version_id
    ?(elasticsearch_configuration = [])
    ?(extended_s3_configuration = [])
    ?(http_endpoint_configuration = [])
    ?(kinesis_source_configuration = [])
    ?(msk_source_configuration = []) ?(opensearch_configuration = [])
    ?(opensearchserverless_configuration = [])
    ?(redshift_configuration = []) ?(server_side_encryption = [])
    ?(splunk_configuration = []) ?timeouts ~destination ~name __id =
  let __type = "aws_kinesis_firehose_delivery_stream" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       destination = Prop.computed __type __id "destination";
       destination_id = Prop.computed __type __id "destination_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_firehose_delivery_stream
        (aws_kinesis_firehose_delivery_stream ?arn ?destination_id
           ?id ?tags ?tags_all ?version_id
           ~elasticsearch_configuration ~extended_s3_configuration
           ~http_endpoint_configuration ~kinesis_source_configuration
           ~msk_source_configuration ~opensearch_configuration
           ~opensearchserverless_configuration
           ~redshift_configuration ~server_side_encryption
           ~splunk_configuration ?timeouts ~destination ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?destination_id ?id ?tags ?tags_all
    ?version_id ?(elasticsearch_configuration = [])
    ?(extended_s3_configuration = [])
    ?(http_endpoint_configuration = [])
    ?(kinesis_source_configuration = [])
    ?(msk_source_configuration = []) ?(opensearch_configuration = [])
    ?(opensearchserverless_configuration = [])
    ?(redshift_configuration = []) ?(server_side_encryption = [])
    ?(splunk_configuration = []) ?timeouts ~destination ~name __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?destination_id ?id ?tags ?tags_all ?version_id
      ~elasticsearch_configuration ~extended_s3_configuration
      ~http_endpoint_configuration ~kinesis_source_configuration
      ~msk_source_configuration ~opensearch_configuration
      ~opensearchserverless_configuration ~redshift_configuration
      ~server_side_encryption ~splunk_configuration ?timeouts
      ~destination ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
