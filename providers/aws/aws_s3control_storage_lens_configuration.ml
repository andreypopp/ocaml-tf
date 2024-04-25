(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_lens_configuration__account_level__activity_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__activity_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__activity_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__activity_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__activity_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__advanced_cost_optimization_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__advanced_cost_optimization_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__advanced_cost_optimization_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__advanced_cost_optimization_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__advanced_data_protection_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__advanced_data_protection_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__advanced_data_protection_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__advanced_data_protection_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__advanced_data_protection_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__activity_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__activity_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__activity_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__bucket_level__activity_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__activity_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria = {
  delimiter : string prop option; [@option]
  max_depth : float prop option; [@option]
  min_storage_bytes_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    =
  (function
   | {
       delimiter = v_delimiter;
       max_depth = v_max_depth;
       min_storage_bytes_percentage = v_min_storage_bytes_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_storage_bytes_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_storage_bytes_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_depth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delimiter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics = {
  enabled : bool prop option; [@option]
  selection_criteria :
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    =
  (function
   | {
       enabled = v_enabled;
       selection_criteria = v_selection_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
             v_selection_criteria
         in
         ("selection_criteria", arg) :: bnds
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
    : storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level__prefix_level = {
  storage_metrics :
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__bucket_level__prefix_level) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level
    =
  (function
   | { storage_metrics = v_storage_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
             v_storage_metrics
         in
         ("storage_metrics", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__account_level__bucket_level__prefix_level ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level

[@@@deriving.end]

type storage_lens_configuration__account_level__bucket_level = {
  activity_metrics :
    storage_lens_configuration__account_level__bucket_level__activity_metrics
    list;
  advanced_cost_optimization_metrics :
    storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    list;
  advanced_data_protection_metrics :
    storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    list;
  detailed_status_code_metrics :
    storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    list;
  prefix_level :
    storage_lens_configuration__account_level__bucket_level__prefix_level
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : storage_lens_configuration__account_level__bucket_level) ->
  ()

let yojson_of_storage_lens_configuration__account_level__bucket_level
    =
  (function
   | {
       activity_metrics = v_activity_metrics;
       advanced_cost_optimization_metrics =
         v_advanced_cost_optimization_metrics;
       advanced_data_protection_metrics =
         v_advanced_data_protection_metrics;
       detailed_status_code_metrics = v_detailed_status_code_metrics;
       prefix_level = v_prefix_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__prefix_level
             v_prefix_level
         in
         ("prefix_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
             v_detailed_status_code_metrics
         in
         ("detailed_status_code_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
             v_advanced_data_protection_metrics
         in
         ("advanced_data_protection_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
             v_advanced_cost_optimization_metrics
         in
         ("advanced_cost_optimization_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level__activity_metrics
             v_activity_metrics
         in
         ("activity_metrics", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__account_level__bucket_level ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__bucket_level

[@@@deriving.end]

type storage_lens_configuration__account_level__detailed_status_code_metrics = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__account_level__detailed_status_code_metrics) ->
  ()

let yojson_of_storage_lens_configuration__account_level__detailed_status_code_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_lens_configuration__account_level__detailed_status_code_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__account_level__detailed_status_code_metrics

[@@@deriving.end]

type storage_lens_configuration__account_level = {
  activity_metrics :
    storage_lens_configuration__account_level__activity_metrics list;
  advanced_cost_optimization_metrics :
    storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    list;
  advanced_data_protection_metrics :
    storage_lens_configuration__account_level__advanced_data_protection_metrics
    list;
  bucket_level :
    storage_lens_configuration__account_level__bucket_level list;
  detailed_status_code_metrics :
    storage_lens_configuration__account_level__detailed_status_code_metrics
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration__account_level) -> ()

let yojson_of_storage_lens_configuration__account_level =
  (function
   | {
       activity_metrics = v_activity_metrics;
       advanced_cost_optimization_metrics =
         v_advanced_cost_optimization_metrics;
       advanced_data_protection_metrics =
         v_advanced_data_protection_metrics;
       bucket_level = v_bucket_level;
       detailed_status_code_metrics = v_detailed_status_code_metrics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__detailed_status_code_metrics
             v_detailed_status_code_metrics
         in
         ("detailed_status_code_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__bucket_level
             v_bucket_level
         in
         ("bucket_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__advanced_data_protection_metrics
             v_advanced_data_protection_metrics
         in
         ("advanced_data_protection_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__advanced_cost_optimization_metrics
             v_advanced_cost_optimization_metrics
         in
         ("advanced_cost_optimization_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level__activity_metrics
             v_activity_metrics
         in
         ("activity_metrics", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__account_level ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration__account_level

[@@@deriving.end]

type storage_lens_configuration__aws_org = { arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration__aws_org) -> ()

let yojson_of_storage_lens_configuration__aws_org =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__aws_org ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration__aws_org

[@@@deriving.end]

type storage_lens_configuration__data_export__cloud_watch_metrics = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__data_export__cloud_watch_metrics) ->
  ()

let yojson_of_storage_lens_configuration__data_export__cloud_watch_metrics
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__data_export__cloud_watch_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__data_export__cloud_watch_metrics

[@@@deriving.end]

type storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms = {
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms) ->
  ()

let yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms

[@@@deriving.end]

type storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3 =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3) ->
  ()

let yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
    =
  (yojson_of_unit
    : storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3

[@@@deriving.end]

type storage_lens_configuration__data_export__s3_bucket_destination__encryption = {
  sse_kms :
    storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    list;
  sse_s3 :
    storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__data_export__s3_bucket_destination__encryption) ->
  ()

let yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption
    =
  (function
   | { sse_kms = v_sse_kms; sse_s3 = v_sse_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
             v_sse_s3
         in
         ("sse_s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
             v_sse_kms
         in
         ("sse_kms", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__data_export__s3_bucket_destination__encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption

[@@@deriving.end]

type storage_lens_configuration__data_export__s3_bucket_destination = {
  account_id : string prop;
  arn : string prop;
  format : string prop;
  output_schema_version : string prop;
  prefix : string prop option; [@option]
  encryption :
    storage_lens_configuration__data_export__s3_bucket_destination__encryption
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_lens_configuration__data_export__s3_bucket_destination) ->
  ()

let yojson_of_storage_lens_configuration__data_export__s3_bucket_destination
    =
  (function
   | {
       account_id = v_account_id;
       arn = v_arn;
       format = v_format;
       output_schema_version = v_output_schema_version;
       prefix = v_prefix;
       encryption = v_encryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export__s3_bucket_destination__encryption
             v_encryption
         in
         ("encryption", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_output_schema_version
         in
         ("output_schema_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__data_export__s3_bucket_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_lens_configuration__data_export__s3_bucket_destination

[@@@deriving.end]

type storage_lens_configuration__data_export = {
  cloud_watch_metrics :
    storage_lens_configuration__data_export__cloud_watch_metrics list;
  s3_bucket_destination :
    storage_lens_configuration__data_export__s3_bucket_destination
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration__data_export) -> ()

let yojson_of_storage_lens_configuration__data_export =
  (function
   | {
       cloud_watch_metrics = v_cloud_watch_metrics;
       s3_bucket_destination = v_s3_bucket_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export__s3_bucket_destination
             v_s3_bucket_destination
         in
         ("s3_bucket_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export__cloud_watch_metrics
             v_cloud_watch_metrics
         in
         ("cloud_watch_metrics", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__data_export ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration__data_export

[@@@deriving.end]

type storage_lens_configuration__exclude = {
  buckets : string prop list option; [@option]
  regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration__exclude) -> ()

let yojson_of_storage_lens_configuration__exclude =
  (function
   | { buckets = v_buckets; regions = v_regions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "buckets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__exclude ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration__exclude

[@@@deriving.end]

type storage_lens_configuration__include = {
  buckets : string prop list option; [@option]
  regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration__include) -> ()

let yojson_of_storage_lens_configuration__include =
  (function
   | { buckets = v_buckets; regions = v_regions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "buckets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration__include ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration__include

[@@@deriving.end]

type storage_lens_configuration = {
  enabled : bool prop;
  account_level : storage_lens_configuration__account_level list;
  aws_org : storage_lens_configuration__aws_org list;
  data_export : storage_lens_configuration__data_export list;
  exclude : storage_lens_configuration__exclude list;
  include_ : storage_lens_configuration__include list;
      [@key "include"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_lens_configuration) -> ()

let yojson_of_storage_lens_configuration =
  (function
   | {
       enabled = v_enabled;
       account_level = v_account_level;
       aws_org = v_aws_org;
       data_export = v_data_export;
       exclude = v_exclude;
       include_ = v_include_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__include v_include_
         in
         ("include", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__exclude v_exclude
         in
         ("exclude", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__data_export
             v_data_export
         in
         ("data_export", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__aws_org v_aws_org
         in
         ("aws_org", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_lens_configuration__account_level
             v_account_level
         in
         ("account_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : storage_lens_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_lens_configuration

[@@@deriving.end]

type aws_s3control_storage_lens_configuration = {
  account_id : string prop option; [@option]
  config_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  storage_lens_configuration : storage_lens_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_storage_lens_configuration) -> ()

let yojson_of_aws_s3control_storage_lens_configuration =
  (function
   | {
       account_id = v_account_id;
       config_id = v_config_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       storage_lens_configuration = v_storage_lens_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_lens_configuration
             v_storage_lens_configuration
         in
         ("storage_lens_configuration", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config_id in
         ("config_id", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_storage_lens_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_storage_lens_configuration

[@@@deriving.end]

let storage_lens_configuration__account_level__activity_metrics
    ?enabled () :
    storage_lens_configuration__account_level__activity_metrics =
  { enabled }

let storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    ?enabled () :
    storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__advanced_data_protection_metrics
    ?enabled () :
    storage_lens_configuration__account_level__advanced_data_protection_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__bucket_level__activity_metrics
    ?enabled () :
    storage_lens_configuration__account_level__bucket_level__activity_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    ?enabled () :
    storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    ?enabled () :
    storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    ?enabled () :
    storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    =
  { enabled }

let storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    ?delimiter ?max_depth ?min_storage_bytes_percentage () :
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    =
  { delimiter; max_depth; min_storage_bytes_percentage }

let storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    ?enabled ~selection_criteria () :
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    =
  { enabled; selection_criteria }

let storage_lens_configuration__account_level__bucket_level__prefix_level
    ~storage_metrics () :
    storage_lens_configuration__account_level__bucket_level__prefix_level
    =
  { storage_metrics }

let storage_lens_configuration__account_level__bucket_level
    ~activity_metrics ~advanced_cost_optimization_metrics
    ~advanced_data_protection_metrics ~detailed_status_code_metrics
    ~prefix_level () :
    storage_lens_configuration__account_level__bucket_level =
  {
    activity_metrics;
    advanced_cost_optimization_metrics;
    advanced_data_protection_metrics;
    detailed_status_code_metrics;
    prefix_level;
  }

let storage_lens_configuration__account_level__detailed_status_code_metrics
    ?enabled () :
    storage_lens_configuration__account_level__detailed_status_code_metrics
    =
  { enabled }

let storage_lens_configuration__account_level ~activity_metrics
    ~advanced_cost_optimization_metrics
    ~advanced_data_protection_metrics ~bucket_level
    ~detailed_status_code_metrics () :
    storage_lens_configuration__account_level =
  {
    activity_metrics;
    advanced_cost_optimization_metrics;
    advanced_data_protection_metrics;
    bucket_level;
    detailed_status_code_metrics;
  }

let storage_lens_configuration__aws_org ~arn () :
    storage_lens_configuration__aws_org =
  { arn }

let storage_lens_configuration__data_export__cloud_watch_metrics
    ~enabled () :
    storage_lens_configuration__data_export__cloud_watch_metrics =
  { enabled }

let storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    ~key_id () :
    storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    =
  { key_id }

let storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
    () =
  ()

let storage_lens_configuration__data_export__s3_bucket_destination__encryption
    ~sse_kms ~sse_s3 () :
    storage_lens_configuration__data_export__s3_bucket_destination__encryption
    =
  { sse_kms; sse_s3 }

let storage_lens_configuration__data_export__s3_bucket_destination
    ?prefix ~account_id ~arn ~format ~output_schema_version
    ~encryption () :
    storage_lens_configuration__data_export__s3_bucket_destination =
  {
    account_id;
    arn;
    format;
    output_schema_version;
    prefix;
    encryption;
  }

let storage_lens_configuration__data_export ~cloud_watch_metrics
    ~s3_bucket_destination () :
    storage_lens_configuration__data_export =
  { cloud_watch_metrics; s3_bucket_destination }

let storage_lens_configuration__exclude ?buckets ?regions () :
    storage_lens_configuration__exclude =
  { buckets; regions }

let storage_lens_configuration__include ?buckets ?regions () :
    storage_lens_configuration__include =
  { buckets; regions }

let storage_lens_configuration ~enabled ~account_level ~aws_org
    ~data_export ~exclude ~include_ () : storage_lens_configuration =
  { enabled; account_level; aws_org; data_export; exclude; include_ }

let aws_s3control_storage_lens_configuration ?account_id ?id ?tags
    ?tags_all ~config_id ~storage_lens_configuration () :
    aws_s3control_storage_lens_configuration =
  {
    account_id;
    config_id;
    id;
    tags;
    tags_all;
    storage_lens_configuration;
  }

type t = {
  account_id : string prop;
  arn : string prop;
  config_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?id ?tags ?tags_all ~config_id
    ~storage_lens_configuration __id =
  let __type = "aws_s3control_storage_lens_configuration" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       config_id = Prop.computed __type __id "config_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_storage_lens_configuration
        (aws_s3control_storage_lens_configuration ?account_id ?id
           ?tags ?tags_all ~config_id ~storage_lens_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?tags ?tags_all ~config_id
    ~storage_lens_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?tags ?tags_all ~config_id
      ~storage_lens_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
