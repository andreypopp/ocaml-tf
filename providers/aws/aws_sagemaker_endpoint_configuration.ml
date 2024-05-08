(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type async_inference_config__client_config = {
  max_concurrent_invocations_per_instance : float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : async_inference_config__client_config) -> ()

let yojson_of_async_inference_config__client_config =
  (function
   | {
       max_concurrent_invocations_per_instance =
         v_max_concurrent_invocations_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_concurrent_invocations_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "max_concurrent_invocations_per_instance", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : async_inference_config__client_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_async_inference_config__client_config

[@@@deriving.end]

type async_inference_config__output_config__notification_config = {
  error_topic : string prop option; [@option]
  include_inference_response_in : string prop list option; [@option]
  success_topic : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : async_inference_config__output_config__notification_config) ->
  ()

let yojson_of_async_inference_config__output_config__notification_config
    =
  (function
   | {
       error_topic = v_error_topic;
       include_inference_response_in =
         v_include_inference_response_in;
       success_topic = v_success_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_success_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "success_topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_inference_response_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_inference_response_in", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_topic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : async_inference_config__output_config__notification_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_async_inference_config__output_config__notification_config

[@@@deriving.end]

type async_inference_config__output_config = {
  kms_key_id : string prop option; [@option]
  s3_failure_path : string prop option; [@option]
  s3_output_path : string prop;
  notification_config :
    async_inference_config__output_config__notification_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : async_inference_config__output_config) -> ()

let yojson_of_async_inference_config__output_config =
  (function
   | {
       kms_key_id = v_kms_key_id;
       s3_failure_path = v_s3_failure_path;
       s3_output_path = v_s3_output_path;
       notification_config = v_notification_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_notification_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_async_inference_config__output_config__notification_config)
               v_notification_config
           in
           let bnd = "notification_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_output_path
         in
         ("s3_output_path", arg) :: bnds
       in
       let bnds =
         match v_s3_failure_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_failure_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : async_inference_config__output_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_async_inference_config__output_config

[@@@deriving.end]

type async_inference_config = {
  client_config : async_inference_config__client_config list;
      [@default []] [@yojson_drop_default ( = )]
  output_config : async_inference_config__output_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : async_inference_config) -> ()

let yojson_of_async_inference_config =
  (function
   | {
       client_config = v_client_config;
       output_config = v_output_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_output_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_async_inference_config__output_config)
               v_output_config
           in
           let bnd = "output_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_async_inference_config__client_config)
               v_client_config
           in
           let bnd = "client_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : async_inference_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_async_inference_config

[@@@deriving.end]

type data_capture_config__capture_content_type_header = {
  csv_content_types : string prop list option; [@option]
  json_content_types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_capture_config__capture_content_type_header) -> ()

let yojson_of_data_capture_config__capture_content_type_header =
  (function
   | {
       csv_content_types = v_csv_content_types;
       json_content_types = v_json_content_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_json_content_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "json_content_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csv_content_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "csv_content_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_capture_config__capture_content_type_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_capture_config__capture_content_type_header

[@@@deriving.end]

type data_capture_config__capture_options = {
  capture_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_capture_config__capture_options) -> ()

let yojson_of_data_capture_config__capture_options =
  (function
   | { capture_mode = v_capture_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_capture_mode in
         ("capture_mode", arg) :: bnds
       in
       `Assoc bnds
    : data_capture_config__capture_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_capture_config__capture_options

[@@@deriving.end]

type data_capture_config = {
  destination_s3_uri : string prop;
  enable_capture : bool prop option; [@option]
  initial_sampling_percentage : float prop;
  kms_key_id : string prop option; [@option]
  capture_content_type_header :
    data_capture_config__capture_content_type_header list;
      [@default []] [@yojson_drop_default ( = )]
  capture_options : data_capture_config__capture_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_capture_config) -> ()

let yojson_of_data_capture_config =
  (function
   | {
       destination_s3_uri = v_destination_s3_uri;
       enable_capture = v_enable_capture;
       initial_sampling_percentage = v_initial_sampling_percentage;
       kms_key_id = v_kms_key_id;
       capture_content_type_header = v_capture_content_type_header;
       capture_options = v_capture_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_capture_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_capture_config__capture_options)
               v_capture_options
           in
           let bnd = "capture_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_capture_content_type_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_capture_config__capture_content_type_header)
               v_capture_content_type_header
           in
           let bnd = "capture_content_type_header", arg in
           bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_initial_sampling_percentage
         in
         ("initial_sampling_percentage", arg) :: bnds
       in
       let bnds =
         match v_enable_capture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_capture", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_s3_uri
         in
         ("destination_s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : data_capture_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_capture_config

[@@@deriving.end]

type production_variants__core_dump_config = {
  destination_s3_uri : string prop;
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : production_variants__core_dump_config) -> ()

let yojson_of_production_variants__core_dump_config =
  (function
   | {
       destination_s3_uri = v_destination_s3_uri;
       kms_key_id = v_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_s3_uri
         in
         ("destination_s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : production_variants__core_dump_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_production_variants__core_dump_config

[@@@deriving.end]

type production_variants__routing_config = {
  routing_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : production_variants__routing_config) -> ()

let yojson_of_production_variants__routing_config =
  (function
   | { routing_strategy = v_routing_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_routing_strategy
         in
         ("routing_strategy", arg) :: bnds
       in
       `Assoc bnds
    : production_variants__routing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_production_variants__routing_config

[@@@deriving.end]

type production_variants__serverless_config = {
  max_concurrency : float prop;
  memory_size_in_mb : float prop;
  provisioned_concurrency : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : production_variants__serverless_config) -> ()

let yojson_of_production_variants__serverless_config =
  (function
   | {
       max_concurrency = v_max_concurrency;
       memory_size_in_mb = v_memory_size_in_mb;
       provisioned_concurrency = v_provisioned_concurrency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_provisioned_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_memory_size_in_mb
         in
         ("memory_size_in_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_concurrency
         in
         ("max_concurrency", arg) :: bnds
       in
       `Assoc bnds
    : production_variants__serverless_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_production_variants__serverless_config

[@@@deriving.end]

type production_variants = {
  accelerator_type : string prop option; [@option]
  container_startup_health_check_timeout_in_seconds :
    float prop option;
      [@option]
  enable_ssm_access : bool prop option; [@option]
  initial_instance_count : float prop option; [@option]
  initial_variant_weight : float prop option; [@option]
  instance_type : string prop option; [@option]
  model_data_download_timeout_in_seconds : float prop option;
      [@option]
  model_name : string prop;
  variant_name : string prop option; [@option]
  volume_size_in_gb : float prop option; [@option]
  core_dump_config : production_variants__core_dump_config list;
      [@default []] [@yojson_drop_default ( = )]
  routing_config : production_variants__routing_config list;
      [@default []] [@yojson_drop_default ( = )]
  serverless_config : production_variants__serverless_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : production_variants) -> ()

let yojson_of_production_variants =
  (function
   | {
       accelerator_type = v_accelerator_type;
       container_startup_health_check_timeout_in_seconds =
         v_container_startup_health_check_timeout_in_seconds;
       enable_ssm_access = v_enable_ssm_access;
       initial_instance_count = v_initial_instance_count;
       initial_variant_weight = v_initial_variant_weight;
       instance_type = v_instance_type;
       model_data_download_timeout_in_seconds =
         v_model_data_download_timeout_in_seconds;
       model_name = v_model_name;
       variant_name = v_variant_name;
       volume_size_in_gb = v_volume_size_in_gb;
       core_dump_config = v_core_dump_config;
       routing_config = v_routing_config;
       serverless_config = v_serverless_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_serverless_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_production_variants__serverless_config)
               v_serverless_config
           in
           let bnd = "serverless_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_routing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_production_variants__routing_config)
               v_routing_config
           in
           let bnd = "routing_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_core_dump_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_production_variants__core_dump_config)
               v_core_dump_config
           in
           let bnd = "core_dump_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_volume_size_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_variant_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "variant_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_name in
         ("model_name", arg) :: bnds
       in
       let bnds =
         match v_model_data_download_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "model_data_download_timeout_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_variant_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_variant_weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ssm_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ssm_access", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_container_startup_health_check_timeout_in_seconds
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "container_startup_health_check_timeout_in_seconds",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : production_variants -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_production_variants

[@@@deriving.end]

type shadow_production_variants__core_dump_config = {
  destination_s3_uri : string prop;
  kms_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shadow_production_variants__core_dump_config) -> ()

let yojson_of_shadow_production_variants__core_dump_config =
  (function
   | {
       destination_s3_uri = v_destination_s3_uri;
       kms_key_id = v_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_s3_uri
         in
         ("destination_s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : shadow_production_variants__core_dump_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shadow_production_variants__core_dump_config

[@@@deriving.end]

type shadow_production_variants__routing_config = {
  routing_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shadow_production_variants__routing_config) -> ()

let yojson_of_shadow_production_variants__routing_config =
  (function
   | { routing_strategy = v_routing_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_routing_strategy
         in
         ("routing_strategy", arg) :: bnds
       in
       `Assoc bnds
    : shadow_production_variants__routing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shadow_production_variants__routing_config

[@@@deriving.end]

type shadow_production_variants__serverless_config = {
  max_concurrency : float prop;
  memory_size_in_mb : float prop;
  provisioned_concurrency : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shadow_production_variants__serverless_config) -> ()

let yojson_of_shadow_production_variants__serverless_config =
  (function
   | {
       max_concurrency = v_max_concurrency;
       memory_size_in_mb = v_memory_size_in_mb;
       provisioned_concurrency = v_provisioned_concurrency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_provisioned_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_memory_size_in_mb
         in
         ("memory_size_in_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_concurrency
         in
         ("max_concurrency", arg) :: bnds
       in
       `Assoc bnds
    : shadow_production_variants__serverless_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shadow_production_variants__serverless_config

[@@@deriving.end]

type shadow_production_variants = {
  accelerator_type : string prop option; [@option]
  container_startup_health_check_timeout_in_seconds :
    float prop option;
      [@option]
  enable_ssm_access : bool prop option; [@option]
  initial_instance_count : float prop option; [@option]
  initial_variant_weight : float prop option; [@option]
  instance_type : string prop option; [@option]
  model_data_download_timeout_in_seconds : float prop option;
      [@option]
  model_name : string prop;
  variant_name : string prop option; [@option]
  volume_size_in_gb : float prop option; [@option]
  core_dump_config :
    shadow_production_variants__core_dump_config list;
      [@default []] [@yojson_drop_default ( = )]
  routing_config : shadow_production_variants__routing_config list;
      [@default []] [@yojson_drop_default ( = )]
  serverless_config :
    shadow_production_variants__serverless_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shadow_production_variants) -> ()

let yojson_of_shadow_production_variants =
  (function
   | {
       accelerator_type = v_accelerator_type;
       container_startup_health_check_timeout_in_seconds =
         v_container_startup_health_check_timeout_in_seconds;
       enable_ssm_access = v_enable_ssm_access;
       initial_instance_count = v_initial_instance_count;
       initial_variant_weight = v_initial_variant_weight;
       instance_type = v_instance_type;
       model_data_download_timeout_in_seconds =
         v_model_data_download_timeout_in_seconds;
       model_name = v_model_name;
       variant_name = v_variant_name;
       volume_size_in_gb = v_volume_size_in_gb;
       core_dump_config = v_core_dump_config;
       routing_config = v_routing_config;
       serverless_config = v_serverless_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_serverless_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_shadow_production_variants__serverless_config)
               v_serverless_config
           in
           let bnd = "serverless_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_routing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_shadow_production_variants__routing_config)
               v_routing_config
           in
           let bnd = "routing_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_core_dump_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_shadow_production_variants__core_dump_config)
               v_core_dump_config
           in
           let bnd = "core_dump_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_volume_size_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_variant_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "variant_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_name in
         ("model_name", arg) :: bnds
       in
       let bnds =
         match v_model_data_download_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "model_data_download_timeout_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_variant_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_variant_weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ssm_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ssm_access", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_container_startup_health_check_timeout_in_seconds
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "container_startup_health_check_timeout_in_seconds",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : shadow_production_variants -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shadow_production_variants

[@@@deriving.end]

type aws_sagemaker_endpoint_configuration = {
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  async_inference_config : async_inference_config list;
      [@default []] [@yojson_drop_default ( = )]
  data_capture_config : data_capture_config list;
      [@default []] [@yojson_drop_default ( = )]
  production_variants : production_variants list;
      [@default []] [@yojson_drop_default ( = )]
  shadow_production_variants : shadow_production_variants list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_endpoint_configuration) -> ()

let yojson_of_aws_sagemaker_endpoint_configuration =
  (function
   | {
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       name = v_name;
       name_prefix = v_name_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       async_inference_config = v_async_inference_config;
       data_capture_config = v_data_capture_config;
       production_variants = v_production_variants;
       shadow_production_variants = v_shadow_production_variants;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_shadow_production_variants then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shadow_production_variants)
               v_shadow_production_variants
           in
           let bnd = "shadow_production_variants", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_production_variants then bnds
         else
           let arg =
             (yojson_of_list yojson_of_production_variants)
               v_production_variants
           in
           let bnd = "production_variants", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_data_capture_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_capture_config)
               v_data_capture_config
           in
           let bnd = "data_capture_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_async_inference_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_async_inference_config)
               v_async_inference_config
           in
           let bnd = "async_inference_config", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
       `Assoc bnds
    : aws_sagemaker_endpoint_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_endpoint_configuration

[@@@deriving.end]

let async_inference_config__client_config
    ?max_concurrent_invocations_per_instance () :
    async_inference_config__client_config =
  { max_concurrent_invocations_per_instance }

let async_inference_config__output_config__notification_config
    ?error_topic ?include_inference_response_in ?success_topic () :
    async_inference_config__output_config__notification_config =
  { error_topic; include_inference_response_in; success_topic }

let async_inference_config__output_config ?kms_key_id
    ?s3_failure_path ?(notification_config = []) ~s3_output_path () :
    async_inference_config__output_config =
  {
    kms_key_id;
    s3_failure_path;
    s3_output_path;
    notification_config;
  }

let async_inference_config ?(client_config = []) ~output_config () :
    async_inference_config =
  { client_config; output_config }

let data_capture_config__capture_content_type_header
    ?csv_content_types ?json_content_types () :
    data_capture_config__capture_content_type_header =
  { csv_content_types; json_content_types }

let data_capture_config__capture_options ~capture_mode () :
    data_capture_config__capture_options =
  { capture_mode }

let data_capture_config ?enable_capture ?kms_key_id
    ?(capture_content_type_header = []) ~destination_s3_uri
    ~initial_sampling_percentage ~capture_options () :
    data_capture_config =
  {
    destination_s3_uri;
    enable_capture;
    initial_sampling_percentage;
    kms_key_id;
    capture_content_type_header;
    capture_options;
  }

let production_variants__core_dump_config ?kms_key_id
    ~destination_s3_uri () : production_variants__core_dump_config =
  { destination_s3_uri; kms_key_id }

let production_variants__routing_config ~routing_strategy () :
    production_variants__routing_config =
  { routing_strategy }

let production_variants__serverless_config ?provisioned_concurrency
    ~max_concurrency ~memory_size_in_mb () :
    production_variants__serverless_config =
  { max_concurrency; memory_size_in_mb; provisioned_concurrency }

let production_variants ?accelerator_type
    ?container_startup_health_check_timeout_in_seconds
    ?enable_ssm_access ?initial_instance_count
    ?initial_variant_weight ?instance_type
    ?model_data_download_timeout_in_seconds ?variant_name
    ?volume_size_in_gb ?(core_dump_config = [])
    ?(routing_config = []) ?(serverless_config = []) ~model_name () :
    production_variants =
  {
    accelerator_type;
    container_startup_health_check_timeout_in_seconds;
    enable_ssm_access;
    initial_instance_count;
    initial_variant_weight;
    instance_type;
    model_data_download_timeout_in_seconds;
    model_name;
    variant_name;
    volume_size_in_gb;
    core_dump_config;
    routing_config;
    serverless_config;
  }

let shadow_production_variants__core_dump_config ~destination_s3_uri
    ~kms_key_id () : shadow_production_variants__core_dump_config =
  { destination_s3_uri; kms_key_id }

let shadow_production_variants__routing_config ~routing_strategy () :
    shadow_production_variants__routing_config =
  { routing_strategy }

let shadow_production_variants__serverless_config
    ?provisioned_concurrency ~max_concurrency ~memory_size_in_mb () :
    shadow_production_variants__serverless_config =
  { max_concurrency; memory_size_in_mb; provisioned_concurrency }

let shadow_production_variants ?accelerator_type
    ?container_startup_health_check_timeout_in_seconds
    ?enable_ssm_access ?initial_instance_count
    ?initial_variant_weight ?instance_type
    ?model_data_download_timeout_in_seconds ?variant_name
    ?volume_size_in_gb ?(core_dump_config = [])
    ?(routing_config = []) ?(serverless_config = []) ~model_name () :
    shadow_production_variants =
  {
    accelerator_type;
    container_startup_health_check_timeout_in_seconds;
    enable_ssm_access;
    initial_instance_count;
    initial_variant_weight;
    instance_type;
    model_data_download_timeout_in_seconds;
    model_name;
    variant_name;
    volume_size_in_gb;
    core_dump_config;
    routing_config;
    serverless_config;
  }

let aws_sagemaker_endpoint_configuration ?id ?kms_key_arn ?name
    ?name_prefix ?tags ?tags_all ?(async_inference_config = [])
    ?(data_capture_config = []) ?(shadow_production_variants = [])
    ~production_variants () : aws_sagemaker_endpoint_configuration =
  {
    id;
    kms_key_arn;
    name;
    name_prefix;
    tags;
    tags_all;
    async_inference_config;
    data_capture_config;
    production_variants;
    shadow_production_variants;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
    ?(async_inference_config = []) ?(data_capture_config = [])
    ?(shadow_production_variants = []) ~production_variants __id =
  let __type = "aws_sagemaker_endpoint_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_endpoint_configuration
        (aws_sagemaker_endpoint_configuration ?id ?kms_key_arn ?name
           ?name_prefix ?tags ?tags_all ~async_inference_config
           ~data_capture_config ~shadow_production_variants
           ~production_variants ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?(async_inference_config = [])
    ?(data_capture_config = []) ?(shadow_production_variants = [])
    ~production_variants __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
      ~async_inference_config ~data_capture_config
      ~shadow_production_variants ~production_variants __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
