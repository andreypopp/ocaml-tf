(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_configuration__application_code_configuration__code_content__s3_content_location = {
  bucket_arn : string prop;
  file_key : string prop;
  object_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__application_code_configuration__code_content__s3_content_location) ->
  ()

let yojson_of_application_configuration__application_code_configuration__code_content__s3_content_location
    =
  (function
   | {
       bucket_arn = v_bucket_arn;
       file_key = v_file_key;
       object_version = v_object_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_version", arg in
             bnd :: bnds
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
    : application_configuration__application_code_configuration__code_content__s3_content_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__application_code_configuration__code_content__s3_content_location

[@@@deriving.end]

type application_configuration__application_code_configuration__code_content = {
  text_content : string prop option; [@option]
  s3_content_location :
    application_configuration__application_code_configuration__code_content__s3_content_location
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__application_code_configuration__code_content) ->
  ()

let yojson_of_application_configuration__application_code_configuration__code_content
    =
  (function
   | {
       text_content = v_text_content;
       s3_content_location = v_s3_content_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_content_location then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__application_code_configuration__code_content__s3_content_location)
               v_s3_content_location
           in
           let bnd = "s3_content_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_text_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text_content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__application_code_configuration__code_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__application_code_configuration__code_content

[@@@deriving.end]

type application_configuration__application_code_configuration = {
  code_content_type : string prop;
  code_content :
    application_configuration__application_code_configuration__code_content
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : application_configuration__application_code_configuration) ->
  ()

let yojson_of_application_configuration__application_code_configuration
    =
  (function
   | {
       code_content_type = v_code_content_type;
       code_content = v_code_content;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_code_content then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__application_code_configuration__code_content)
               v_code_content
           in
           let bnd = "code_content", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_code_content_type
         in
         ("code_content_type", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__application_code_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__application_code_configuration

[@@@deriving.end]

type application_configuration__application_snapshot_configuration = {
  snapshots_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__application_snapshot_configuration) ->
  ()

let yojson_of_application_configuration__application_snapshot_configuration
    =
  (function
   | { snapshots_enabled = v_snapshots_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_snapshots_enabled
         in
         ("snapshots_enabled", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__application_snapshot_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__application_snapshot_configuration

[@@@deriving.end]

type application_configuration__environment_properties__property_group = {
  property_group_id : string prop;
  property_map : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__environment_properties__property_group) ->
  ()

let yojson_of_application_configuration__environment_properties__property_group
    =
  (function
   | {
       property_group_id = v_property_group_id;
       property_map = v_property_map;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_property_map
         in
         ("property_map", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_property_group_id
         in
         ("property_group_id", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__environment_properties__property_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__environment_properties__property_group

[@@@deriving.end]

type application_configuration__environment_properties = {
  property_group :
    application_configuration__environment_properties__property_group
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : application_configuration__environment_properties) -> ()

let yojson_of_application_configuration__environment_properties =
  (function
   | { property_group = v_property_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_property_group then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__environment_properties__property_group)
               v_property_group
           in
           let bnd = "property_group", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__environment_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_configuration__environment_properties

[@@@deriving.end]

type application_configuration__flink_application_configuration__checkpoint_configuration = {
  checkpoint_interval : float prop option; [@option]
  checkpointing_enabled : bool prop option; [@option]
  configuration_type : string prop;
  min_pause_between_checkpoints : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__flink_application_configuration__checkpoint_configuration) ->
  ()

let yojson_of_application_configuration__flink_application_configuration__checkpoint_configuration
    =
  (function
   | {
       checkpoint_interval = v_checkpoint_interval;
       checkpointing_enabled = v_checkpointing_enabled;
       configuration_type = v_configuration_type;
       min_pause_between_checkpoints =
         v_min_pause_between_checkpoints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_pause_between_checkpoints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_pause_between_checkpoints", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_type
         in
         ("configuration_type", arg) :: bnds
       in
       let bnds =
         match v_checkpointing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "checkpointing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checkpoint_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "checkpoint_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__flink_application_configuration__checkpoint_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__flink_application_configuration__checkpoint_configuration

[@@@deriving.end]

type application_configuration__flink_application_configuration__monitoring_configuration = {
  configuration_type : string prop;
  log_level : string prop option; [@option]
  metrics_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__flink_application_configuration__monitoring_configuration) ->
  ()

let yojson_of_application_configuration__flink_application_configuration__monitoring_configuration
    =
  (function
   | {
       configuration_type = v_configuration_type;
       log_level = v_log_level;
       metrics_level = v_metrics_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metrics_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_type
         in
         ("configuration_type", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__flink_application_configuration__monitoring_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__flink_application_configuration__monitoring_configuration

[@@@deriving.end]

type application_configuration__flink_application_configuration__parallelism_configuration = {
  auto_scaling_enabled : bool prop option; [@option]
  configuration_type : string prop;
  parallelism : float prop option; [@option]
  parallelism_per_kpu : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__flink_application_configuration__parallelism_configuration) ->
  ()

let yojson_of_application_configuration__flink_application_configuration__parallelism_configuration
    =
  (function
   | {
       auto_scaling_enabled = v_auto_scaling_enabled;
       configuration_type = v_configuration_type;
       parallelism = v_parallelism;
       parallelism_per_kpu = v_parallelism_per_kpu;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parallelism_per_kpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism_per_kpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_type
         in
         ("configuration_type", arg) :: bnds
       in
       let bnds =
         match v_auto_scaling_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_scaling_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__flink_application_configuration__parallelism_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__flink_application_configuration__parallelism_configuration

[@@@deriving.end]

type application_configuration__flink_application_configuration = {
  checkpoint_configuration :
    application_configuration__flink_application_configuration__checkpoint_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring_configuration :
    application_configuration__flink_application_configuration__monitoring_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parallelism_configuration :
    application_configuration__flink_application_configuration__parallelism_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : application_configuration__flink_application_configuration) ->
  ()

let yojson_of_application_configuration__flink_application_configuration
    =
  (function
   | {
       checkpoint_configuration = v_checkpoint_configuration;
       monitoring_configuration = v_monitoring_configuration;
       parallelism_configuration = v_parallelism_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parallelism_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__flink_application_configuration__parallelism_configuration)
               v_parallelism_configuration
           in
           let bnd = "parallelism_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__flink_application_configuration__monitoring_configuration)
               v_monitoring_configuration
           in
           let bnd = "monitoring_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_checkpoint_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__flink_application_configuration__checkpoint_configuration)
               v_checkpoint_configuration
           in
           let bnd = "checkpoint_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__flink_application_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__flink_application_configuration

[@@@deriving.end]

type application_configuration__run_configuration__application_restore_configuration = {
  application_restore_type : string prop option; [@option]
  snapshot_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__run_configuration__application_restore_configuration) ->
  ()

let yojson_of_application_configuration__run_configuration__application_restore_configuration
    =
  (function
   | {
       application_restore_type = v_application_restore_type;
       snapshot_name = v_snapshot_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_snapshot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_restore_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_restore_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__run_configuration__application_restore_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__run_configuration__application_restore_configuration

[@@@deriving.end]

type application_configuration__run_configuration__flink_run_configuration = {
  allow_non_restored_state : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__run_configuration__flink_run_configuration) ->
  ()

let yojson_of_application_configuration__run_configuration__flink_run_configuration
    =
  (function
   | { allow_non_restored_state = v_allow_non_restored_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allow_non_restored_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_non_restored_state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__run_configuration__flink_run_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__run_configuration__flink_run_configuration

[@@@deriving.end]

type application_configuration__run_configuration = {
  application_restore_configuration :
    application_configuration__run_configuration__application_restore_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  flink_run_configuration :
    application_configuration__run_configuration__flink_run_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_configuration__run_configuration) -> ()

let yojson_of_application_configuration__run_configuration =
  (function
   | {
       application_restore_configuration =
         v_application_restore_configuration;
       flink_run_configuration = v_flink_run_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_flink_run_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__run_configuration__flink_run_configuration)
               v_flink_run_configuration
           in
           let bnd = "flink_run_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_restore_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__run_configuration__application_restore_configuration)
               v_application_restore_configuration
           in
           let bnd = "application_restore_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__run_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_configuration__run_configuration

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_parallelism = {
  count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_parallelism) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_parallelism
    =
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
    : application_configuration__sql_application_configuration__input__input_parallelism ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_parallelism

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_processing_configuration = {
  input_lambda_processor :
    application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_processing_configuration) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration
    =
  (function
   | { input_lambda_processor = v_input_lambda_processor } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_input_lambda_processor then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor)
               v_input_lambda_processor
           in
           let bnd = "input_lambda_processor", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__input_processing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema__record_column = {
  mapping : string prop option; [@option]
  name : string prop;
  sql_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema__record_column) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_column
    =
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
    : application_configuration__sql_application_configuration__input__input_schema__record_column ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_column

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
  record_row_delimiter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
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
    : application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
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
    : application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    =
  (function
   | {
       csv_mapping_parameters = v_csv_mapping_parameters;
       json_mapping_parameters = v_json_mapping_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_json_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters)
               v_json_mapping_parameters
           in
           let bnd = "json_mapping_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters)
               v_csv_mapping_parameters
           in
           let bnd = "csv_mapping_parameters", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema__record_format = {
  record_format_type : string prop;
  mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema__record_format) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format
    =
  (function
   | {
       record_format_type = v_record_format_type;
       mapping_parameters = v_mapping_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters)
               v_mapping_parameters
           in
           let bnd = "mapping_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_format_type
         in
         ("record_format_type", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__input_schema__record_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_schema = {
  record_encoding : string prop option; [@option]
  record_column :
    application_configuration__sql_application_configuration__input__input_schema__record_column
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_format :
    application_configuration__sql_application_configuration__input__input_schema__record_format
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_schema) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_schema
    =
  (function
   | {
       record_encoding = v_record_encoding;
       record_column = v_record_column;
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
                yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_format)
               v_record_format
           in
           let bnd = "record_format", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_column then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_schema__record_column)
               v_record_column
           in
           let bnd = "record_column", arg in
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
    : application_configuration__sql_application_configuration__input__input_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_schema

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__input_starting_position_configuration = {
  input_starting_position : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__input_starting_position_configuration) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__input_starting_position_configuration
    =
  (function
   | { input_starting_position = v_input_starting_position } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_input_starting_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_starting_position", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__input_starting_position_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__input_starting_position_configuration

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__kinesis_firehose_input = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__kinesis_firehose_input) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__kinesis_firehose_input
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__kinesis_firehose_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__kinesis_firehose_input

[@@@deriving.end]

type application_configuration__sql_application_configuration__input__kinesis_streams_input = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input__kinesis_streams_input) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input__kinesis_streams_input
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input__kinesis_streams_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input__kinesis_streams_input

[@@@deriving.end]

type application_configuration__sql_application_configuration__input = {
  name_prefix : string prop;
  input_parallelism :
    application_configuration__sql_application_configuration__input__input_parallelism
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_processing_configuration :
    application_configuration__sql_application_configuration__input__input_processing_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_schema :
    application_configuration__sql_application_configuration__input__input_schema
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_starting_position_configuration :
    application_configuration__sql_application_configuration__input__input_starting_position_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_firehose_input :
    application_configuration__sql_application_configuration__input__kinesis_firehose_input
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_streams_input :
    application_configuration__sql_application_configuration__input__kinesis_streams_input
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__input) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__input
    =
  (function
   | {
       name_prefix = v_name_prefix;
       input_parallelism = v_input_parallelism;
       input_processing_configuration =
         v_input_processing_configuration;
       input_schema = v_input_schema;
       input_starting_position_configuration =
         v_input_starting_position_configuration;
       kinesis_firehose_input = v_kinesis_firehose_input;
       kinesis_streams_input = v_kinesis_streams_input;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_streams_input then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__kinesis_streams_input)
               v_kinesis_streams_input
           in
           let bnd = "kinesis_streams_input", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_firehose_input then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__kinesis_firehose_input)
               v_kinesis_firehose_input
           in
           let bnd = "kinesis_firehose_input", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_starting_position_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_starting_position_configuration)
               v_input_starting_position_configuration
           in
           let bnd = "input_starting_position_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_schema then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_schema)
               v_input_schema
           in
           let bnd = "input_schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_processing_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_processing_configuration)
               v_input_processing_configuration
           in
           let bnd = "input_processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_parallelism then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input__input_parallelism)
               v_input_parallelism
           in
           let bnd = "input_parallelism", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name_prefix in
         ("name_prefix", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__input

[@@@deriving.end]

type application_configuration__sql_application_configuration__output__destination_schema = {
  record_format_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__output__destination_schema) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__output__destination_schema
    =
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
    : application_configuration__sql_application_configuration__output__destination_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__output__destination_schema

[@@@deriving.end]

type application_configuration__sql_application_configuration__output__kinesis_firehose_output = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__output__kinesis_firehose_output) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__output__kinesis_firehose_output
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__output__kinesis_firehose_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__output__kinesis_firehose_output

[@@@deriving.end]

type application_configuration__sql_application_configuration__output__kinesis_streams_output = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__output__kinesis_streams_output) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__output__kinesis_streams_output
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__output__kinesis_streams_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__output__kinesis_streams_output

[@@@deriving.end]

type application_configuration__sql_application_configuration__output__lambda_output = {
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__output__lambda_output) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__output__lambda_output
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__output__lambda_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__output__lambda_output

[@@@deriving.end]

type application_configuration__sql_application_configuration__output = {
  name : string prop;
  destination_schema :
    application_configuration__sql_application_configuration__output__destination_schema
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_firehose_output :
    application_configuration__sql_application_configuration__output__kinesis_firehose_output
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_streams_output :
    application_configuration__sql_application_configuration__output__kinesis_streams_output
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_output :
    application_configuration__sql_application_configuration__output__lambda_output
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__output) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__output
    =
  (function
   | {
       name = v_name;
       destination_schema = v_destination_schema;
       kinesis_firehose_output = v_kinesis_firehose_output;
       kinesis_streams_output = v_kinesis_streams_output;
       lambda_output = v_lambda_output;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_output then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__output__lambda_output)
               v_lambda_output
           in
           let bnd = "lambda_output", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_streams_output then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__output__kinesis_streams_output)
               v_kinesis_streams_output
           in
           let bnd = "kinesis_streams_output", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_firehose_output then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__output__kinesis_firehose_output)
               v_kinesis_firehose_output
           in
           let bnd = "kinesis_firehose_output", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_schema then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__output__destination_schema)
               v_destination_schema
           in
           let bnd = "destination_schema", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__output

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column = {
  mapping : string prop option; [@option]
  name : string prop;
  sql_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    =
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
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
  record_row_delimiter : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
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
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
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
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    =
  (function
   | {
       csv_mapping_parameters = v_csv_mapping_parameters;
       json_mapping_parameters = v_json_mapping_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_json_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters)
               v_json_mapping_parameters
           in
           let bnd = "json_mapping_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters)
               v_csv_mapping_parameters
           in
           let bnd = "csv_mapping_parameters", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format = {
  record_format_type : string prop;
  mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    =
  (function
   | {
       record_format_type = v_record_format_type;
       mapping_parameters = v_mapping_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mapping_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters)
               v_mapping_parameters
           in
           let bnd = "mapping_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_record_format_type
         in
         ("record_format_type", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__reference_schema = {
  record_encoding : string prop option; [@option]
  record_column :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_format :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__reference_schema) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema
    =
  (function
   | {
       record_encoding = v_record_encoding;
       record_column = v_record_column;
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
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format)
               v_record_format
           in
           let bnd = "record_format", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_column then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column)
               v_record_column
           in
           let bnd = "record_column", arg in
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
    : application_configuration__sql_application_configuration__reference_data_source__reference_schema ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source = {
  bucket_arn : string prop;
  file_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    =
  (function
   | { bucket_arn = v_bucket_arn; file_key = v_file_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source

[@@@deriving.end]

type application_configuration__sql_application_configuration__reference_data_source = {
  table_name : string prop;
  reference_schema :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_reference_data_source :
    application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_configuration__sql_application_configuration__reference_data_source) ->
  ()

let yojson_of_application_configuration__sql_application_configuration__reference_data_source
    =
  (function
   | {
       table_name = v_table_name;
       reference_schema = v_reference_schema;
       s3_reference_data_source = v_s3_reference_data_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_reference_data_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source)
               v_s3_reference_data_source
           in
           let bnd = "s3_reference_data_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reference_schema then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source__reference_schema)
               v_reference_schema
           in
           let bnd = "reference_schema", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration__reference_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration__reference_data_source

[@@@deriving.end]

type application_configuration__sql_application_configuration = {
  input :
    application_configuration__sql_application_configuration__input
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output :
    application_configuration__sql_application_configuration__output
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reference_data_source :
    application_configuration__sql_application_configuration__reference_data_source
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : application_configuration__sql_application_configuration) ->
  ()

let yojson_of_application_configuration__sql_application_configuration
    =
  (function
   | {
       input = v_input;
       output = v_output;
       reference_data_source = v_reference_data_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_reference_data_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__reference_data_source)
               v_reference_data_source
           in
           let bnd = "reference_data_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_output then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__output)
               v_output
           in
           let bnd = "output", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration__input)
               v_input
           in
           let bnd = "input", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration__sql_application_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_configuration__sql_application_configuration

[@@@deriving.end]

type application_configuration__vpc_configuration = {
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_configuration__vpc_configuration) -> ()

let yojson_of_application_configuration__vpc_configuration =
  (function
   | {
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
       `Assoc bnds
    : application_configuration__vpc_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_configuration__vpc_configuration

[@@@deriving.end]

type application_configuration = {
  application_code_configuration :
    application_configuration__application_code_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  application_snapshot_configuration :
    application_configuration__application_snapshot_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_properties :
    application_configuration__environment_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  flink_application_configuration :
    application_configuration__flink_application_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  run_configuration :
    application_configuration__run_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sql_application_configuration :
    application_configuration__sql_application_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_configuration :
    application_configuration__vpc_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_configuration) -> ()

let yojson_of_application_configuration =
  (function
   | {
       application_code_configuration =
         v_application_code_configuration;
       application_snapshot_configuration =
         v_application_snapshot_configuration;
       environment_properties = v_environment_properties;
       flink_application_configuration =
         v_flink_application_configuration;
       run_configuration = v_run_configuration;
       sql_application_configuration =
         v_sql_application_configuration;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__vpc_configuration)
               v_vpc_configuration
           in
           let bnd = "vpc_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sql_application_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__sql_application_configuration)
               v_sql_application_configuration
           in
           let bnd = "sql_application_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_run_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__run_configuration)
               v_run_configuration
           in
           let bnd = "run_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_flink_application_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__flink_application_configuration)
               v_flink_application_configuration
           in
           let bnd = "flink_application_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_environment_properties then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__environment_properties)
               v_environment_properties
           in
           let bnd = "environment_properties", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_snapshot_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__application_snapshot_configuration)
               v_application_snapshot_configuration
           in
           let bnd = "application_snapshot_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_code_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_configuration__application_code_configuration)
               v_application_code_configuration
           in
           let bnd = "application_code_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_configuration

[@@@deriving.end]

type cloudwatch_logging_options = { log_stream_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_logging_options) -> ()

let yojson_of_cloudwatch_logging_options =
  (function
   | { log_stream_arn = v_log_stream_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_kinesisanalyticsv2_application = {
  description : string prop option; [@option]
  force_stop : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  runtime_environment : string prop;
  service_execution_role : string prop;
  start_application : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  application_configuration : application_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudwatch_logging_options : cloudwatch_logging_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesisanalyticsv2_application) -> ()

let yojson_of_aws_kinesisanalyticsv2_application =
  (function
   | {
       description = v_description;
       force_stop = v_force_stop;
       id = v_id;
       name = v_name;
       runtime_environment = v_runtime_environment;
       service_execution_role = v_service_execution_role;
       start_application = v_start_application;
       tags = v_tags;
       tags_all = v_tags_all;
       application_configuration = v_application_configuration;
       cloudwatch_logging_options = v_cloudwatch_logging_options;
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
         if Stdlib.( = ) [] v_application_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_application_configuration)
               v_application_configuration
           in
           let bnd = "application_configuration", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_service_execution_role
         in
         ("service_execution_role", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_environment
         in
         ("runtime_environment", arg) :: bnds
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
         match v_force_stop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_stop", arg in
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
       `Assoc bnds
    : aws_kinesisanalyticsv2_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesisanalyticsv2_application

[@@@deriving.end]

let application_configuration__application_code_configuration__code_content__s3_content_location
    ?object_version ~bucket_arn ~file_key () :
    application_configuration__application_code_configuration__code_content__s3_content_location
    =
  { bucket_arn; file_key; object_version }

let application_configuration__application_code_configuration__code_content
    ?text_content ?(s3_content_location = []) () :
    application_configuration__application_code_configuration__code_content
    =
  { text_content; s3_content_location }

let application_configuration__application_code_configuration
    ?(code_content = []) ~code_content_type () :
    application_configuration__application_code_configuration =
  { code_content_type; code_content }

let application_configuration__application_snapshot_configuration
    ~snapshots_enabled () :
    application_configuration__application_snapshot_configuration =
  { snapshots_enabled }

let application_configuration__environment_properties__property_group
    ~property_group_id ~property_map () :
    application_configuration__environment_properties__property_group
    =
  { property_group_id; property_map }

let application_configuration__environment_properties ~property_group
    () : application_configuration__environment_properties =
  { property_group }

let application_configuration__flink_application_configuration__checkpoint_configuration
    ?checkpoint_interval ?checkpointing_enabled
    ?min_pause_between_checkpoints ~configuration_type () :
    application_configuration__flink_application_configuration__checkpoint_configuration
    =
  {
    checkpoint_interval;
    checkpointing_enabled;
    configuration_type;
    min_pause_between_checkpoints;
  }

let application_configuration__flink_application_configuration__monitoring_configuration
    ?log_level ?metrics_level ~configuration_type () :
    application_configuration__flink_application_configuration__monitoring_configuration
    =
  { configuration_type; log_level; metrics_level }

let application_configuration__flink_application_configuration__parallelism_configuration
    ?auto_scaling_enabled ?parallelism ?parallelism_per_kpu
    ~configuration_type () :
    application_configuration__flink_application_configuration__parallelism_configuration
    =
  {
    auto_scaling_enabled;
    configuration_type;
    parallelism;
    parallelism_per_kpu;
  }

let application_configuration__flink_application_configuration
    ?(checkpoint_configuration = []) ?(monitoring_configuration = [])
    ?(parallelism_configuration = []) () :
    application_configuration__flink_application_configuration =
  {
    checkpoint_configuration;
    monitoring_configuration;
    parallelism_configuration;
  }

let application_configuration__run_configuration__application_restore_configuration
    ?application_restore_type ?snapshot_name () :
    application_configuration__run_configuration__application_restore_configuration
    =
  { application_restore_type; snapshot_name }

let application_configuration__run_configuration__flink_run_configuration
    ?allow_non_restored_state () :
    application_configuration__run_configuration__flink_run_configuration
    =
  { allow_non_restored_state }

let application_configuration__run_configuration
    ?(application_restore_configuration = [])
    ?(flink_run_configuration = []) () :
    application_configuration__run_configuration =
  { application_restore_configuration; flink_run_configuration }

let application_configuration__sql_application_configuration__input__input_parallelism
    ?count () :
    application_configuration__sql_application_configuration__input__input_parallelism
    =
  { count }

let application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input__input_processing_configuration
    ~input_lambda_processor () :
    application_configuration__sql_application_configuration__input__input_processing_configuration
    =
  { input_lambda_processor }

let application_configuration__sql_application_configuration__input__input_schema__record_column
    ?mapping ~name ~sql_type () :
    application_configuration__sql_application_configuration__input__input_schema__record_column
    =
  { mapping; name; sql_type }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    ~record_column_delimiter ~record_row_delimiter () :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    =
  { record_column_delimiter; record_row_delimiter }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    ~record_row_path () :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    =
  { record_row_path }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    ?(csv_mapping_parameters = []) ?(json_mapping_parameters = []) ()
    :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    =
  { csv_mapping_parameters; json_mapping_parameters }

let application_configuration__sql_application_configuration__input__input_schema__record_format
    ~record_format_type ~mapping_parameters () :
    application_configuration__sql_application_configuration__input__input_schema__record_format
    =
  { record_format_type; mapping_parameters }

let application_configuration__sql_application_configuration__input__input_schema
    ?record_encoding ~record_column ~record_format () :
    application_configuration__sql_application_configuration__input__input_schema
    =
  { record_encoding; record_column; record_format }

let application_configuration__sql_application_configuration__input__input_starting_position_configuration
    ?input_starting_position () :
    application_configuration__sql_application_configuration__input__input_starting_position_configuration
    =
  { input_starting_position }

let application_configuration__sql_application_configuration__input__kinesis_firehose_input
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__kinesis_firehose_input
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input__kinesis_streams_input
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__kinesis_streams_input
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input
    ?(input_parallelism = []) ?(input_processing_configuration = [])
    ?(input_starting_position_configuration = [])
    ?(kinesis_firehose_input = []) ?(kinesis_streams_input = [])
    ~name_prefix ~input_schema () :
    application_configuration__sql_application_configuration__input =
  {
    name_prefix;
    input_parallelism;
    input_processing_configuration;
    input_schema;
    input_starting_position_configuration;
    kinesis_firehose_input;
    kinesis_streams_input;
  }

let application_configuration__sql_application_configuration__output__destination_schema
    ~record_format_type () :
    application_configuration__sql_application_configuration__output__destination_schema
    =
  { record_format_type }

let application_configuration__sql_application_configuration__output__kinesis_firehose_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__kinesis_firehose_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output__kinesis_streams_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__kinesis_streams_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output__lambda_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__lambda_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output
    ?(kinesis_firehose_output = []) ?(kinesis_streams_output = [])
    ?(lambda_output = []) ~name ~destination_schema () :
    application_configuration__sql_application_configuration__output
    =
  {
    name;
    destination_schema;
    kinesis_firehose_output;
    kinesis_streams_output;
    lambda_output;
  }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    ?mapping ~name ~sql_type () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    =
  { mapping; name; sql_type }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    ~record_column_delimiter ~record_row_delimiter () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    =
  { record_column_delimiter; record_row_delimiter }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    ~record_row_path () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    =
  { record_row_path }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    ?(csv_mapping_parameters = []) ?(json_mapping_parameters = []) ()
    :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    =
  { csv_mapping_parameters; json_mapping_parameters }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    ~record_format_type ~mapping_parameters () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    =
  { record_format_type; mapping_parameters }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema
    ?record_encoding ~record_column ~record_format () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema
    =
  { record_encoding; record_column; record_format }

let application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    ~bucket_arn ~file_key () :
    application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    =
  { bucket_arn; file_key }

let application_configuration__sql_application_configuration__reference_data_source
    ~table_name ~reference_schema ~s3_reference_data_source () :
    application_configuration__sql_application_configuration__reference_data_source
    =
  { table_name; reference_schema; s3_reference_data_source }

let application_configuration__sql_application_configuration
    ?(input = []) ?(reference_data_source = []) ~output () :
    application_configuration__sql_application_configuration =
  { input; output; reference_data_source }

let application_configuration__vpc_configuration ~security_group_ids
    ~subnet_ids () : application_configuration__vpc_configuration =
  { security_group_ids; subnet_ids }

let application_configuration
    ?(application_snapshot_configuration = [])
    ?(environment_properties = [])
    ?(flink_application_configuration = []) ?(run_configuration = [])
    ?(sql_application_configuration = []) ?(vpc_configuration = [])
    ~application_code_configuration () : application_configuration =
  {
    application_code_configuration;
    application_snapshot_configuration;
    environment_properties;
    flink_application_configuration;
    run_configuration;
    sql_application_configuration;
    vpc_configuration;
  }

let cloudwatch_logging_options ~log_stream_arn () :
    cloudwatch_logging_options =
  { log_stream_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesisanalyticsv2_application ?description ?force_stop ?id
    ?start_application ?tags ?tags_all
    ?(application_configuration = [])
    ?(cloudwatch_logging_options = []) ?timeouts ~name
    ~runtime_environment ~service_execution_role () :
    aws_kinesisanalyticsv2_application =
  {
    description;
    force_stop;
    id;
    name;
    runtime_environment;
    service_execution_role;
    start_application;
    tags;
    tags_all;
    application_configuration;
    cloudwatch_logging_options;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  create_timestamp : string prop;
  description : string prop;
  force_stop : bool prop;
  id : string prop;
  last_update_timestamp : string prop;
  name : string prop;
  runtime_environment : string prop;
  service_execution_role : string prop;
  start_application : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : float prop;
}

let make ?description ?force_stop ?id ?start_application ?tags
    ?tags_all ?(application_configuration = [])
    ?(cloudwatch_logging_options = []) ?timeouts ~name
    ~runtime_environment ~service_execution_role __id =
  let __type = "aws_kinesisanalyticsv2_application" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       create_timestamp =
         Prop.computed __type __id "create_timestamp";
       description = Prop.computed __type __id "description";
       force_stop = Prop.computed __type __id "force_stop";
       id = Prop.computed __type __id "id";
       last_update_timestamp =
         Prop.computed __type __id "last_update_timestamp";
       name = Prop.computed __type __id "name";
       runtime_environment =
         Prop.computed __type __id "runtime_environment";
       service_execution_role =
         Prop.computed __type __id "service_execution_role";
       start_application =
         Prop.computed __type __id "start_application";
       status = Prop.computed __type __id "status";
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
      yojson_of_aws_kinesisanalyticsv2_application
        (aws_kinesisanalyticsv2_application ?description ?force_stop
           ?id ?start_application ?tags ?tags_all
           ~application_configuration ~cloudwatch_logging_options
           ?timeouts ~name ~runtime_environment
           ~service_execution_role ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_stop ?id
    ?start_application ?tags ?tags_all
    ?(application_configuration = [])
    ?(cloudwatch_logging_options = []) ?timeouts ~name
    ~runtime_environment ~service_execution_role __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_stop ?id ?start_application ?tags
      ?tags_all ~application_configuration
      ~cloudwatch_logging_options ?timeouts ~name
      ~runtime_environment ~service_execution_role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
