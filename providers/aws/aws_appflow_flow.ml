(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_flow_config__destination_connector_properties__custom_connector__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__custom_connector__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__custom_connector__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__custom_connector__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
  entity_name : string prop;
  id_field_names : string prop list option; [@option]
  write_operation_type : string prop option; [@option]
  error_handling_config :
    destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__custom_connector) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__custom_connector
    =
  (function
   | {
       custom_properties = v_custom_properties;
       entity_name = v_entity_name;
       id_field_names = v_id_field_names;
       write_operation_type = v_write_operation_type;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         match v_write_operation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_operation_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id_field_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_name in
         ("entity_name", arg) :: bnds
       in
       let bnds =
         match v_custom_properties with
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
             let bnd = "custom_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__custom_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__custom_connector

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__customer_profiles = {
  domain_name : string prop;
  object_type_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__customer_profiles) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__customer_profiles
    =
  (function
   | {
       domain_name = v_domain_name;
       object_type_name = v_object_type_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_type_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__customer_profiles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__customer_profiles

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__event_bridge__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__event_bridge__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__event_bridge__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__event_bridge__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__event_bridge = {
  object_ : string prop; [@key "object"]
  error_handling_config :
    destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__event_bridge) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__event_bridge
    =
  (function
   | {
       object_ = v_object_;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__event_bridge ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__event_bridge

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__honeycode__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__honeycode__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__honeycode__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__honeycode__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__honeycode = {
  object_ : string prop; [@key "object"]
  error_handling_config :
    destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__honeycode) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__honeycode
    =
  (function
   | {
       object_ = v_object_;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__honeycode__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__honeycode ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__honeycode

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__lookout_metrics =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__lookout_metrics) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__lookout_metrics
    =
  (yojson_of_unit
    : destination_flow_config__destination_connector_properties__lookout_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__lookout_metrics

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__marketo__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__marketo__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__marketo__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__marketo__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__marketo__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__marketo = {
  object_ : string prop; [@key "object"]
  error_handling_config :
    destination_flow_config__destination_connector_properties__marketo__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__marketo) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__marketo
    =
  (function
   | {
       object_ = v_object_;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__marketo__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__marketo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__marketo

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__redshift__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__redshift__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__redshift__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__redshift__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__redshift__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__redshift = {
  bucket_prefix : string prop option; [@option]
  intermediate_bucket_name : string prop;
  object_ : string prop; [@key "object"]
  error_handling_config :
    destination_flow_config__destination_connector_properties__redshift__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__redshift) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__redshift
    =
  (function
   | {
       bucket_prefix = v_bucket_prefix;
       intermediate_bucket_name = v_intermediate_bucket_name;
       object_ = v_object_;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__redshift__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_intermediate_bucket_name
         in
         ("intermediate_bucket_name", arg) :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__redshift ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__redshift

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
  target_file_size : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    =
  (function
   | {
       aggregation_type = v_aggregation_type;
       target_file_size = v_target_file_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_file_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_file_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aggregation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aggregation_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]
  prefix_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    =
  (function
   | { prefix_format = v_prefix_format; prefix_type = v_prefix_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__s3__s3_output_format_config = {
  file_type : string prop option; [@option]
  preserve_source_data_typing : bool prop option; [@option]
  aggregation_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__s3__s3_output_format_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    =
  (function
   | {
       file_type = v_file_type;
       preserve_source_data_typing = v_preserve_source_data_typing;
       aggregation_config = v_aggregation_config;
       prefix_config = v_prefix_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
             v_prefix_config
         in
         ("prefix_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
             v_aggregation_config
         in
         ("aggregation_config", arg) :: bnds
       in
       let bnds =
         match v_preserve_source_data_typing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_source_data_typing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__s3__s3_output_format_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__s3 = {
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  s3_output_format_config :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__s3) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__s3
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       s3_output_format_config = v_s3_output_format_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__s3__s3_output_format_config
             v_s3_output_format_config
         in
         ("s3_output_format_config", arg) :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__s3

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__salesforce__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__salesforce__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__salesforce__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__salesforce__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__salesforce = {
  id_field_names : string prop list option; [@option]
  object_ : string prop; [@key "object"]
  write_operation_type : string prop option; [@option]
  error_handling_config :
    destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__salesforce) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__salesforce
    =
  (function
   | {
       id_field_names = v_id_field_names;
       object_ = v_object_;
       write_operation_type = v_write_operation_type;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__salesforce__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         match v_write_operation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_operation_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_id_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id_field_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__salesforce ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__salesforce

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__sapo_data__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__sapo_data__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__sapo_data__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__sapo_data__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    =
  (function
   | { bucket_name = v_bucket_name; bucket_prefix = v_bucket_prefix }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__sapo_data = {
  id_field_names : string prop list option; [@option]
  object_path : string prop;
  write_operation_type : string prop option; [@option]
  error_handling_config :
    destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    list;
  success_response_handling_config :
    destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__sapo_data) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__sapo_data
    =
  (function
   | {
       id_field_names = v_id_field_names;
       object_path = v_object_path;
       write_operation_type = v_write_operation_type;
       error_handling_config = v_error_handling_config;
       success_response_handling_config =
         v_success_response_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
             v_success_response_handling_config
         in
         ("success_response_handling_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         match v_write_operation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_operation_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_path in
         ("object_path", arg) :: bnds
       in
       let bnds =
         match v_id_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id_field_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__sapo_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__sapo_data

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__snowflake__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__snowflake__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__snowflake__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__snowflake__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__snowflake = {
  bucket_prefix : string prop option; [@option]
  intermediate_bucket_name : string prop;
  object_ : string prop; [@key "object"]
  error_handling_config :
    destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__snowflake) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__snowflake
    =
  (function
   | {
       bucket_prefix = v_bucket_prefix;
       intermediate_bucket_name = v_intermediate_bucket_name;
       object_ = v_object_;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__snowflake__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_intermediate_bucket_name
         in
         ("intermediate_bucket_name", arg) :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__snowflake ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__snowflake

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config = {
  aggregation_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    =
  (function
   | { aggregation_type = v_aggregation_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_aggregation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aggregation_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config = {
  prefix_format : string prop option; [@option]
  prefix_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    =
  (function
   | { prefix_format = v_prefix_format; prefix_type = v_prefix_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix_type in
         ("prefix_type", arg) :: bnds
       in
       let bnds =
         match v_prefix_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config = {
  file_type : string prop option; [@option]
  aggregation_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    list;
  prefix_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    =
  (function
   | {
       file_type = v_file_type;
       aggregation_config = v_aggregation_config;
       prefix_config = v_prefix_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
             v_prefix_config
         in
         ("prefix_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
             v_aggregation_config
         in
         ("aggregation_config", arg) :: bnds
       in
       let bnds =
         match v_file_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__upsolver = {
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  s3_output_format_config :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__upsolver) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__upsolver
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       s3_output_format_config = v_s3_output_format_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
             v_s3_output_format_config
         in
         ("s3_output_format_config", arg) :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__upsolver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__upsolver

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__zendesk__error_handling_config = {
  bucket_name : string prop option; [@option]
  bucket_prefix : string prop option; [@option]
  fail_on_first_destination_error : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__zendesk__error_handling_config) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       fail_on_first_destination_error =
         v_fail_on_first_destination_error;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_fail_on_first_destination_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_first_destination_error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__zendesk__error_handling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__zendesk__error_handling_config

[@@@deriving.end]

type destination_flow_config__destination_connector_properties__zendesk = {
  id_field_names : string prop list option; [@option]
  object_ : string prop; [@key "object"]
  write_operation_type : string prop option; [@option]
  error_handling_config :
    destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_flow_config__destination_connector_properties__zendesk) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties__zendesk
    =
  (function
   | {
       id_field_names = v_id_field_names;
       object_ = v_object_;
       write_operation_type = v_write_operation_type;
       error_handling_config = v_error_handling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__zendesk__error_handling_config
             v_error_handling_config
         in
         ("error_handling_config", arg) :: bnds
       in
       let bnds =
         match v_write_operation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_operation_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_id_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id_field_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties__zendesk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties__zendesk

[@@@deriving.end]

type destination_flow_config__destination_connector_properties = {
  custom_connector :
    destination_flow_config__destination_connector_properties__custom_connector
    list;
  customer_profiles :
    destination_flow_config__destination_connector_properties__customer_profiles
    list;
  event_bridge :
    destination_flow_config__destination_connector_properties__event_bridge
    list;
  honeycode :
    destination_flow_config__destination_connector_properties__honeycode
    list;
  lookout_metrics :
    destination_flow_config__destination_connector_properties__lookout_metrics
    list;
  marketo :
    destination_flow_config__destination_connector_properties__marketo
    list;
  redshift :
    destination_flow_config__destination_connector_properties__redshift
    list;
  s3 :
    destination_flow_config__destination_connector_properties__s3
    list;
  salesforce :
    destination_flow_config__destination_connector_properties__salesforce
    list;
  sapo_data :
    destination_flow_config__destination_connector_properties__sapo_data
    list;
  snowflake :
    destination_flow_config__destination_connector_properties__snowflake
    list;
  upsolver :
    destination_flow_config__destination_connector_properties__upsolver
    list;
  zendesk :
    destination_flow_config__destination_connector_properties__zendesk
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : destination_flow_config__destination_connector_properties) ->
  ()

let yojson_of_destination_flow_config__destination_connector_properties
    =
  (function
   | {
       custom_connector = v_custom_connector;
       customer_profiles = v_customer_profiles;
       event_bridge = v_event_bridge;
       honeycode = v_honeycode;
       lookout_metrics = v_lookout_metrics;
       marketo = v_marketo;
       redshift = v_redshift;
       s3 = v_s3;
       salesforce = v_salesforce;
       sapo_data = v_sapo_data;
       snowflake = v_snowflake;
       upsolver = v_upsolver;
       zendesk = v_zendesk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__zendesk
             v_zendesk
         in
         ("zendesk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__upsolver
             v_upsolver
         in
         ("upsolver", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__snowflake
             v_snowflake
         in
         ("snowflake", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__sapo_data
             v_sapo_data
         in
         ("sapo_data", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__salesforce
             v_salesforce
         in
         ("salesforce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__s3
             v_s3
         in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__redshift
             v_redshift
         in
         ("redshift", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__marketo
             v_marketo
         in
         ("marketo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__lookout_metrics
             v_lookout_metrics
         in
         ("lookout_metrics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__honeycode
             v_honeycode
         in
         ("honeycode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__event_bridge
             v_event_bridge
         in
         ("event_bridge", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__customer_profiles
             v_customer_profiles
         in
         ("customer_profiles", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties__custom_connector
             v_custom_connector
         in
         ("custom_connector", arg) :: bnds
       in
       `Assoc bnds
    : destination_flow_config__destination_connector_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_flow_config__destination_connector_properties

[@@@deriving.end]

type destination_flow_config = {
  api_version : string prop option; [@option]
  connector_profile_name : string prop option; [@option]
  connector_type : string prop;
  destination_connector_properties :
    destination_flow_config__destination_connector_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_flow_config) -> ()

let yojson_of_destination_flow_config =
  (function
   | {
       api_version = v_api_version;
       connector_profile_name = v_connector_profile_name;
       connector_type = v_connector_type;
       destination_connector_properties =
         v_destination_connector_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination_flow_config__destination_connector_properties
             v_destination_connector_properties
         in
         ("destination_connector_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connector_type
         in
         ("connector_type", arg) :: bnds
       in
       let bnds =
         match v_connector_profile_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connector_profile_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_flow_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_flow_config

[@@@deriving.end]

type source_flow_config__incremental_pull_config = {
  datetime_type_field_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_flow_config__incremental_pull_config) -> ()

let yojson_of_source_flow_config__incremental_pull_config =
  (function
   | { datetime_type_field_name = v_datetime_type_field_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_datetime_type_field_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datetime_type_field_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config__incremental_pull_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_flow_config__incremental_pull_config

[@@@deriving.end]

type source_flow_config__source_connector_properties__amplitude = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__amplitude) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__amplitude
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__amplitude ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__amplitude

[@@@deriving.end]

type source_flow_config__source_connector_properties__custom_connector = {
  custom_properties : (string * string prop) list option; [@option]
  entity_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__custom_connector) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__custom_connector
    =
  (function
   | {
       custom_properties = v_custom_properties;
       entity_name = v_entity_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_name in
         ("entity_name", arg) :: bnds
       in
       let bnds =
         match v_custom_properties with
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
             let bnd = "custom_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__custom_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__custom_connector

[@@@deriving.end]

type source_flow_config__source_connector_properties__datadog = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__datadog) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__datadog
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__datadog

[@@@deriving.end]

type source_flow_config__source_connector_properties__dynatrace = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__dynatrace) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__dynatrace
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__dynatrace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__dynatrace

[@@@deriving.end]

type source_flow_config__source_connector_properties__google_analytics = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__google_analytics) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__google_analytics
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__google_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__google_analytics

[@@@deriving.end]

type source_flow_config__source_connector_properties__infor_nexus = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__infor_nexus) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__infor_nexus
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__infor_nexus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__infor_nexus

[@@@deriving.end]

type source_flow_config__source_connector_properties__marketo = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__marketo) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__marketo
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__marketo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__marketo

[@@@deriving.end]

type source_flow_config__source_connector_properties__s3__s3_input_format_config = {
  s3_input_file_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__s3__s3_input_format_config) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__s3__s3_input_format_config
    =
  (function
   | { s3_input_file_type = v_s3_input_file_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_input_file_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_input_file_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__s3__s3_input_format_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__s3__s3_input_format_config

[@@@deriving.end]

type source_flow_config__source_connector_properties__s3 = {
  bucket_name : string prop;
  bucket_prefix : string prop;
  s3_input_format_config :
    source_flow_config__source_connector_properties__s3__s3_input_format_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__s3) -> ()

let yojson_of_source_flow_config__source_connector_properties__s3 =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       s3_input_format_config = v_s3_input_format_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__s3__s3_input_format_config
             v_s3_input_format_config
         in
         ("s3_input_format_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_prefix in
         ("bucket_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_flow_config__source_connector_properties__s3

[@@@deriving.end]

type source_flow_config__source_connector_properties__salesforce = {
  enable_dynamic_field_update : bool prop option; [@option]
  include_deleted_records : bool prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__salesforce) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__salesforce
    =
  (function
   | {
       enable_dynamic_field_update = v_enable_dynamic_field_update;
       include_deleted_records = v_include_deleted_records;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_include_deleted_records with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_deleted_records", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dynamic_field_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dynamic_field_update", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__salesforce ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__salesforce

[@@@deriving.end]

type source_flow_config__source_connector_properties__sapo_data = {
  object_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__sapo_data) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__sapo_data
    =
  (function
   | { object_path = v_object_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_path in
         ("object_path", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__sapo_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__sapo_data

[@@@deriving.end]

type source_flow_config__source_connector_properties__service_now = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__service_now) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__service_now
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__service_now ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__service_now

[@@@deriving.end]

type source_flow_config__source_connector_properties__singular = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__singular) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__singular
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__singular ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__singular

[@@@deriving.end]

type source_flow_config__source_connector_properties__slack = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__slack) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__slack
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__slack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__slack

[@@@deriving.end]

type source_flow_config__source_connector_properties__trendmicro = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_flow_config__source_connector_properties__trendmicro) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__trendmicro
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__trendmicro ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__trendmicro

[@@@deriving.end]

type source_flow_config__source_connector_properties__veeva = {
  document_type : string prop option; [@option]
  include_all_versions : bool prop option; [@option]
  include_renditions : bool prop option; [@option]
  include_source_files : bool prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__veeva) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__veeva
    =
  (function
   | {
       document_type = v_document_type;
       include_all_versions = v_include_all_versions;
       include_renditions = v_include_renditions;
       include_source_files = v_include_source_files;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_include_source_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_source_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_renditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_renditions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_all_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_all_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__veeva ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__veeva

[@@@deriving.end]

type source_flow_config__source_connector_properties__zendesk = {
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties__zendesk) ->
  ()

let yojson_of_source_flow_config__source_connector_properties__zendesk
    =
  (function
   | { object_ = v_object_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties__zendesk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_flow_config__source_connector_properties__zendesk

[@@@deriving.end]

type source_flow_config__source_connector_properties = {
  amplitude :
    source_flow_config__source_connector_properties__amplitude list;
  custom_connector :
    source_flow_config__source_connector_properties__custom_connector
    list;
  datadog :
    source_flow_config__source_connector_properties__datadog list;
  dynatrace :
    source_flow_config__source_connector_properties__dynatrace list;
  google_analytics :
    source_flow_config__source_connector_properties__google_analytics
    list;
  infor_nexus :
    source_flow_config__source_connector_properties__infor_nexus list;
  marketo :
    source_flow_config__source_connector_properties__marketo list;
  s3 : source_flow_config__source_connector_properties__s3 list;
  salesforce :
    source_flow_config__source_connector_properties__salesforce list;
  sapo_data :
    source_flow_config__source_connector_properties__sapo_data list;
  service_now :
    source_flow_config__source_connector_properties__service_now list;
  singular :
    source_flow_config__source_connector_properties__singular list;
  slack :
    source_flow_config__source_connector_properties__slack list;
  trendmicro :
    source_flow_config__source_connector_properties__trendmicro list;
  veeva :
    source_flow_config__source_connector_properties__veeva list;
  zendesk :
    source_flow_config__source_connector_properties__zendesk list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_flow_config__source_connector_properties) -> ()

let yojson_of_source_flow_config__source_connector_properties =
  (function
   | {
       amplitude = v_amplitude;
       custom_connector = v_custom_connector;
       datadog = v_datadog;
       dynatrace = v_dynatrace;
       google_analytics = v_google_analytics;
       infor_nexus = v_infor_nexus;
       marketo = v_marketo;
       s3 = v_s3;
       salesforce = v_salesforce;
       sapo_data = v_sapo_data;
       service_now = v_service_now;
       singular = v_singular;
       slack = v_slack;
       trendmicro = v_trendmicro;
       veeva = v_veeva;
       zendesk = v_zendesk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__zendesk
             v_zendesk
         in
         ("zendesk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__veeva
             v_veeva
         in
         ("veeva", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__trendmicro
             v_trendmicro
         in
         ("trendmicro", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__slack
             v_slack
         in
         ("slack", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__singular
             v_singular
         in
         ("singular", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__service_now
             v_service_now
         in
         ("service_now", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__sapo_data
             v_sapo_data
         in
         ("sapo_data", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__salesforce
             v_salesforce
         in
         ("salesforce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__s3
             v_s3
         in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__marketo
             v_marketo
         in
         ("marketo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__infor_nexus
             v_infor_nexus
         in
         ("infor_nexus", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__google_analytics
             v_google_analytics
         in
         ("google_analytics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__dynatrace
             v_dynatrace
         in
         ("dynatrace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__custom_connector
             v_custom_connector
         in
         ("custom_connector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties__amplitude
             v_amplitude
         in
         ("amplitude", arg) :: bnds
       in
       `Assoc bnds
    : source_flow_config__source_connector_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_flow_config__source_connector_properties

[@@@deriving.end]

type source_flow_config = {
  api_version : string prop option; [@option]
  connector_profile_name : string prop option; [@option]
  connector_type : string prop;
  incremental_pull_config :
    source_flow_config__incremental_pull_config list;
  source_connector_properties :
    source_flow_config__source_connector_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_flow_config) -> ()

let yojson_of_source_flow_config =
  (function
   | {
       api_version = v_api_version;
       connector_profile_name = v_connector_profile_name;
       connector_type = v_connector_type;
       incremental_pull_config = v_incremental_pull_config;
       source_connector_properties = v_source_connector_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__source_connector_properties
             v_source_connector_properties
         in
         ("source_connector_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_flow_config__incremental_pull_config
             v_incremental_pull_config
         in
         ("incremental_pull_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connector_type
         in
         ("connector_type", arg) :: bnds
       in
       let bnds =
         match v_connector_profile_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connector_profile_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_flow_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_flow_config

[@@@deriving.end]

type task__connector_operator = {
  amplitude : string prop option; [@option]
  custom_connector : string prop option; [@option]
  datadog : string prop option; [@option]
  dynatrace : string prop option; [@option]
  google_analytics : string prop option; [@option]
  infor_nexus : string prop option; [@option]
  marketo : string prop option; [@option]
  s3 : string prop option; [@option]
  salesforce : string prop option; [@option]
  sapo_data : string prop option; [@option]
  service_now : string prop option; [@option]
  singular : string prop option; [@option]
  slack : string prop option; [@option]
  trendmicro : string prop option; [@option]
  veeva : string prop option; [@option]
  zendesk : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task__connector_operator) -> ()

let yojson_of_task__connector_operator =
  (function
   | {
       amplitude = v_amplitude;
       custom_connector = v_custom_connector;
       datadog = v_datadog;
       dynatrace = v_dynatrace;
       google_analytics = v_google_analytics;
       infor_nexus = v_infor_nexus;
       marketo = v_marketo;
       s3 = v_s3;
       salesforce = v_salesforce;
       sapo_data = v_sapo_data;
       service_now = v_service_now;
       singular = v_singular;
       slack = v_slack;
       trendmicro = v_trendmicro;
       veeva = v_veeva;
       zendesk = v_zendesk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zendesk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zendesk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_veeva with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "veeva", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trendmicro with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trendmicro", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slack with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slack", arg in
             bnd :: bnds
       in
       let bnds =
         match v_singular with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "singular", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_now with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_now", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sapo_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sapo_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_salesforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "salesforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_marketo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "marketo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infor_nexus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "infor_nexus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_google_analytics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "google_analytics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynatrace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dynatrace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datadog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datadog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_connector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_connector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amplitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amplitude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task__connector_operator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task__connector_operator

[@@@deriving.end]

type task = {
  destination_field : string prop option; [@option]
  source_fields : string prop list option; [@option]
  task_properties : (string * string prop) list option; [@option]
  task_type : string prop;
  connector_operator : task__connector_operator list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task) -> ()

let yojson_of_task =
  (function
   | {
       destination_field = v_destination_field;
       source_fields = v_source_fields;
       task_properties = v_task_properties;
       task_type = v_task_type;
       connector_operator = v_connector_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_task__connector_operator
             v_connector_operator
         in
         ("connector_operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_type in
         ("task_type", arg) :: bnds
       in
       let bnds =
         match v_task_properties with
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
             let bnd = "task_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task

[@@@deriving.end]

type trigger_config__trigger_properties__scheduled = {
  data_pull_mode : string prop option; [@option]
  first_execution_from : string prop option; [@option]
  schedule_end_time : string prop option; [@option]
  schedule_expression : string prop;
  schedule_offset : float prop option; [@option]
  schedule_start_time : string prop option; [@option]
  timezone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_config__trigger_properties__scheduled) -> ()

let yojson_of_trigger_config__trigger_properties__scheduled =
  (function
   | {
       data_pull_mode = v_data_pull_mode;
       first_execution_from = v_first_execution_from;
       schedule_end_time = v_schedule_end_time;
       schedule_expression = v_schedule_expression;
       schedule_offset = v_schedule_offset;
       schedule_start_time = v_schedule_start_time;
       timezone = v_timezone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "schedule_offset", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       let bnds =
         match v_schedule_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_execution_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_execution_from", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_pull_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_pull_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger_config__trigger_properties__scheduled ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_config__trigger_properties__scheduled

[@@@deriving.end]

type trigger_config__trigger_properties = {
  scheduled : trigger_config__trigger_properties__scheduled list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_config__trigger_properties) -> ()

let yojson_of_trigger_config__trigger_properties =
  (function
   | { scheduled = v_scheduled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_trigger_config__trigger_properties__scheduled
             v_scheduled
         in
         ("scheduled", arg) :: bnds
       in
       `Assoc bnds
    : trigger_config__trigger_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_config__trigger_properties

[@@@deriving.end]

type trigger_config = {
  trigger_type : string prop;
  trigger_properties : trigger_config__trigger_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_config) -> ()

let yojson_of_trigger_config =
  (function
   | {
       trigger_type = v_trigger_type;
       trigger_properties = v_trigger_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_trigger_config__trigger_properties
             v_trigger_properties
         in
         ("trigger_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger_type in
         ("trigger_type", arg) :: bnds
       in
       `Assoc bnds
    : trigger_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_config

[@@@deriving.end]

type aws_appflow_flow = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_arn : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  destination_flow_config : destination_flow_config list;
  source_flow_config : source_flow_config list;
  task : task list;
  trigger_config : trigger_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appflow_flow) -> ()

let yojson_of_aws_appflow_flow =
  (function
   | {
       description = v_description;
       id = v_id;
       kms_arn = v_kms_arn;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       destination_flow_config = v_destination_flow_config;
       source_flow_config = v_source_flow_config;
       task = v_task;
       trigger_config = v_trigger_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger_config v_trigger_config
         in
         ("trigger_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_task v_task in
         ("task", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source_flow_config
             v_source_flow_config
         in
         ("source_flow_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_flow_config
             v_destination_flow_config
         in
         ("destination_flow_config", arg) :: bnds
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
         match v_kms_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_arn", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appflow_flow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appflow_flow

[@@@deriving.end]

let destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__custom_connector__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__custom_connector
    ?custom_properties ?id_field_names ?write_operation_type
    ?(error_handling_config = []) ~entity_name () :
    destination_flow_config__destination_connector_properties__custom_connector
    =
  {
    custom_properties;
    entity_name;
    id_field_names;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__customer_profiles
    ?object_type_name ~domain_name () :
    destination_flow_config__destination_connector_properties__customer_profiles
    =
  { domain_name; object_type_name }

let destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__event_bridge__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__event_bridge
    ?(error_handling_config = []) ~object_ () :
    destination_flow_config__destination_connector_properties__event_bridge
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__honeycode__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__honeycode
    ?(error_handling_config = []) ~object_ () :
    destination_flow_config__destination_connector_properties__honeycode
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__lookout_metrics
    () =
  ()

let destination_flow_config__destination_connector_properties__marketo__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__marketo__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__marketo
    ?(error_handling_config = []) ~object_ () :
    destination_flow_config__destination_connector_properties__marketo
    =
  { object_; error_handling_config }

let destination_flow_config__destination_connector_properties__redshift__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__redshift__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__redshift
    ?bucket_prefix ?(error_handling_config = [])
    ~intermediate_bucket_name ~object_ () :
    destination_flow_config__destination_connector_properties__redshift
    =
  {
    bucket_prefix;
    intermediate_bucket_name;
    object_;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    ?aggregation_type ?target_file_size () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__aggregation_config
    =
  { aggregation_type; target_file_size }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    ?prefix_format ?prefix_type () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config__prefix_config
    =
  { prefix_format; prefix_type }

let destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    ?file_type ?preserve_source_data_typing
    ?(aggregation_config = []) ?(prefix_config = []) () :
    destination_flow_config__destination_connector_properties__s3__s3_output_format_config
    =
  {
    file_type;
    preserve_source_data_typing;
    aggregation_config;
    prefix_config;
  }

let destination_flow_config__destination_connector_properties__s3
    ?bucket_prefix ?(s3_output_format_config = []) ~bucket_name () :
    destination_flow_config__destination_connector_properties__s3 =
  { bucket_name; bucket_prefix; s3_output_format_config }

let destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__salesforce__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__salesforce
    ?id_field_names ?write_operation_type
    ?(error_handling_config = []) ~object_ () :
    destination_flow_config__destination_connector_properties__salesforce
    =
  {
    id_field_names;
    object_;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__sapo_data__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    ?bucket_name ?bucket_prefix () :
    destination_flow_config__destination_connector_properties__sapo_data__success_response_handling_config
    =
  { bucket_name; bucket_prefix }

let destination_flow_config__destination_connector_properties__sapo_data
    ?id_field_names ?write_operation_type
    ?(error_handling_config = [])
    ?(success_response_handling_config = []) ~object_path () :
    destination_flow_config__destination_connector_properties__sapo_data
    =
  {
    id_field_names;
    object_path;
    write_operation_type;
    error_handling_config;
    success_response_handling_config;
  }

let destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__snowflake__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__snowflake
    ?bucket_prefix ?(error_handling_config = [])
    ~intermediate_bucket_name ~object_ () :
    destination_flow_config__destination_connector_properties__snowflake
    =
  {
    bucket_prefix;
    intermediate_bucket_name;
    object_;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    ?aggregation_type () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__aggregation_config
    =
  { aggregation_type }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    ?prefix_format ~prefix_type () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config__prefix_config
    =
  { prefix_format; prefix_type }

let destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    ?file_type ?(aggregation_config = []) ~prefix_config () :
    destination_flow_config__destination_connector_properties__upsolver__s3_output_format_config
    =
  { file_type; aggregation_config; prefix_config }

let destination_flow_config__destination_connector_properties__upsolver
    ?bucket_prefix ~bucket_name ~s3_output_format_config () :
    destination_flow_config__destination_connector_properties__upsolver
    =
  { bucket_name; bucket_prefix; s3_output_format_config }

let destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    ?bucket_name ?bucket_prefix ?fail_on_first_destination_error () :
    destination_flow_config__destination_connector_properties__zendesk__error_handling_config
    =
  { bucket_name; bucket_prefix; fail_on_first_destination_error }

let destination_flow_config__destination_connector_properties__zendesk
    ?id_field_names ?write_operation_type
    ?(error_handling_config = []) ~object_ () :
    destination_flow_config__destination_connector_properties__zendesk
    =
  {
    id_field_names;
    object_;
    write_operation_type;
    error_handling_config;
  }

let destination_flow_config__destination_connector_properties
    ?(custom_connector = []) ?(customer_profiles = [])
    ?(event_bridge = []) ?(honeycode = []) ?(lookout_metrics = [])
    ?(marketo = []) ?(redshift = []) ?(s3 = []) ?(salesforce = [])
    ?(sapo_data = []) ?(snowflake = []) ?(upsolver = [])
    ?(zendesk = []) () :
    destination_flow_config__destination_connector_properties =
  {
    custom_connector;
    customer_profiles;
    event_bridge;
    honeycode;
    lookout_metrics;
    marketo;
    redshift;
    s3;
    salesforce;
    sapo_data;
    snowflake;
    upsolver;
    zendesk;
  }

let destination_flow_config ?api_version ?connector_profile_name
    ~connector_type ~destination_connector_properties () :
    destination_flow_config =
  {
    api_version;
    connector_profile_name;
    connector_type;
    destination_connector_properties;
  }

let source_flow_config__incremental_pull_config
    ?datetime_type_field_name () :
    source_flow_config__incremental_pull_config =
  { datetime_type_field_name }

let source_flow_config__source_connector_properties__amplitude
    ~object_ () :
    source_flow_config__source_connector_properties__amplitude =
  { object_ }

let source_flow_config__source_connector_properties__custom_connector
    ?custom_properties ~entity_name () :
    source_flow_config__source_connector_properties__custom_connector
    =
  { custom_properties; entity_name }

let source_flow_config__source_connector_properties__datadog ~object_
    () : source_flow_config__source_connector_properties__datadog =
  { object_ }

let source_flow_config__source_connector_properties__dynatrace
    ~object_ () :
    source_flow_config__source_connector_properties__dynatrace =
  { object_ }

let source_flow_config__source_connector_properties__google_analytics
    ~object_ () :
    source_flow_config__source_connector_properties__google_analytics
    =
  { object_ }

let source_flow_config__source_connector_properties__infor_nexus
    ~object_ () :
    source_flow_config__source_connector_properties__infor_nexus =
  { object_ }

let source_flow_config__source_connector_properties__marketo ~object_
    () : source_flow_config__source_connector_properties__marketo =
  { object_ }

let source_flow_config__source_connector_properties__s3__s3_input_format_config
    ?s3_input_file_type () :
    source_flow_config__source_connector_properties__s3__s3_input_format_config
    =
  { s3_input_file_type }

let source_flow_config__source_connector_properties__s3
    ?(s3_input_format_config = []) ~bucket_name ~bucket_prefix () :
    source_flow_config__source_connector_properties__s3 =
  { bucket_name; bucket_prefix; s3_input_format_config }

let source_flow_config__source_connector_properties__salesforce
    ?enable_dynamic_field_update ?include_deleted_records ~object_ ()
    : source_flow_config__source_connector_properties__salesforce =
  { enable_dynamic_field_update; include_deleted_records; object_ }

let source_flow_config__source_connector_properties__sapo_data
    ~object_path () :
    source_flow_config__source_connector_properties__sapo_data =
  { object_path }

let source_flow_config__source_connector_properties__service_now
    ~object_ () :
    source_flow_config__source_connector_properties__service_now =
  { object_ }

let source_flow_config__source_connector_properties__singular
    ~object_ () :
    source_flow_config__source_connector_properties__singular =
  { object_ }

let source_flow_config__source_connector_properties__slack ~object_
    () : source_flow_config__source_connector_properties__slack =
  { object_ }

let source_flow_config__source_connector_properties__trendmicro
    ~object_ () :
    source_flow_config__source_connector_properties__trendmicro =
  { object_ }

let source_flow_config__source_connector_properties__veeva
    ?document_type ?include_all_versions ?include_renditions
    ?include_source_files ~object_ () :
    source_flow_config__source_connector_properties__veeva =
  {
    document_type;
    include_all_versions;
    include_renditions;
    include_source_files;
    object_;
  }

let source_flow_config__source_connector_properties__zendesk ~object_
    () : source_flow_config__source_connector_properties__zendesk =
  { object_ }

let source_flow_config__source_connector_properties ?(amplitude = [])
    ?(custom_connector = []) ?(datadog = []) ?(dynatrace = [])
    ?(google_analytics = []) ?(infor_nexus = []) ?(marketo = [])
    ?(s3 = []) ?(salesforce = []) ?(sapo_data = [])
    ?(service_now = []) ?(singular = []) ?(slack = [])
    ?(trendmicro = []) ?(veeva = []) ?(zendesk = []) () :
    source_flow_config__source_connector_properties =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    infor_nexus;
    marketo;
    s3;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    trendmicro;
    veeva;
    zendesk;
  }

let source_flow_config ?api_version ?connector_profile_name
    ?(incremental_pull_config = []) ~connector_type
    ~source_connector_properties () : source_flow_config =
  {
    api_version;
    connector_profile_name;
    connector_type;
    incremental_pull_config;
    source_connector_properties;
  }

let task__connector_operator ?amplitude ?custom_connector ?datadog
    ?dynatrace ?google_analytics ?infor_nexus ?marketo ?s3
    ?salesforce ?sapo_data ?service_now ?singular ?slack ?trendmicro
    ?veeva ?zendesk () : task__connector_operator =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    infor_nexus;
    marketo;
    s3;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    trendmicro;
    veeva;
    zendesk;
  }

let task ?destination_field ?source_fields ?task_properties
    ?(connector_operator = []) ~task_type () : task =
  {
    destination_field;
    source_fields;
    task_properties;
    task_type;
    connector_operator;
  }

let trigger_config__trigger_properties__scheduled ?data_pull_mode
    ?first_execution_from ?schedule_end_time ?schedule_offset
    ?schedule_start_time ?timezone ~schedule_expression () :
    trigger_config__trigger_properties__scheduled =
  {
    data_pull_mode;
    first_execution_from;
    schedule_end_time;
    schedule_expression;
    schedule_offset;
    schedule_start_time;
    timezone;
  }

let trigger_config__trigger_properties ?(scheduled = []) () :
    trigger_config__trigger_properties =
  { scheduled }

let trigger_config ?(trigger_properties = []) ~trigger_type () :
    trigger_config =
  { trigger_type; trigger_properties }

let aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all ~name
    ~destination_flow_config ~source_flow_config ~task
    ~trigger_config () : aws_appflow_flow =
  {
    description;
    id;
    kms_arn;
    name;
    tags;
    tags_all;
    destination_flow_config;
    source_flow_config;
    task;
    trigger_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  flow_status : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?kms_arn ?tags ?tags_all ~name
    ~destination_flow_config ~source_flow_config ~task
    ~trigger_config __id =
  let __type = "aws_appflow_flow" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       flow_status = Prop.computed __type __id "flow_status";
       id = Prop.computed __type __id "id";
       kms_arn = Prop.computed __type __id "kms_arn";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appflow_flow
        (aws_appflow_flow ?description ?id ?kms_arn ?tags ?tags_all
           ~name ~destination_flow_config ~source_flow_config ~task
           ~trigger_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_arn ?tags ?tags_all
    ~name ~destination_flow_config ~source_flow_config ~task
    ~trigger_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_arn ?tags ?tags_all ~name
      ~destination_flow_config ~source_flow_config ~task
      ~trigger_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
