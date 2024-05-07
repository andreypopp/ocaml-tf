(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_quality_app_specification = {
  environment : (string * string prop) list option; [@option]
  image_uri : string prop;
  post_analytics_processor_source_uri : string prop option; [@option]
  record_preprocessor_source_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_app_specification) -> ()

let yojson_of_data_quality_app_specification =
  (function
   | {
       environment = v_environment;
       image_uri = v_image_uri;
       post_analytics_processor_source_uri =
         v_post_analytics_processor_source_uri;
       record_preprocessor_source_uri =
         v_record_preprocessor_source_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_record_preprocessor_source_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_preprocessor_source_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_analytics_processor_source_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_analytics_processor_source_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_uri in
         ("image_uri", arg) :: bnds
       in
       let bnds =
         match v_environment with
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
             let bnd = "environment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_app_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_app_specification

[@@@deriving.end]

type data_quality_baseline_config__constraints_resource = {
  s3_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_baseline_config__constraints_resource) -> ()

let yojson_of_data_quality_baseline_config__constraints_resource =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_baseline_config__constraints_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_baseline_config__constraints_resource

[@@@deriving.end]

type data_quality_baseline_config__statistics_resource = {
  s3_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_baseline_config__statistics_resource) -> ()

let yojson_of_data_quality_baseline_config__statistics_resource =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_baseline_config__statistics_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_baseline_config__statistics_resource

[@@@deriving.end]

type data_quality_baseline_config = {
  constraints_resource :
    data_quality_baseline_config__constraints_resource list;
  statistics_resource :
    data_quality_baseline_config__statistics_resource list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_baseline_config) -> ()

let yojson_of_data_quality_baseline_config =
  (function
   | {
       constraints_resource = v_constraints_resource;
       statistics_resource = v_statistics_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_baseline_config__statistics_resource
             v_statistics_resource
         in
         ("statistics_resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_baseline_config__constraints_resource
             v_constraints_resource
         in
         ("constraints_resource", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_baseline_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_baseline_config

[@@@deriving.end]

type data_quality_job_input__batch_transform_input__dataset_format__csv = {
  header : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       data_quality_job_input__batch_transform_input__dataset_format__csv) ->
  ()

let yojson_of_data_quality_job_input__batch_transform_input__dataset_format__csv
    =
  (function
   | { header = v_header } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "header", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_job_input__batch_transform_input__dataset_format__csv ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_job_input__batch_transform_input__dataset_format__csv

[@@@deriving.end]

type data_quality_job_input__batch_transform_input__dataset_format__json = {
  line : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       data_quality_job_input__batch_transform_input__dataset_format__json) ->
  ()

let yojson_of_data_quality_job_input__batch_transform_input__dataset_format__json
    =
  (function
   | { line = v_line } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "line", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_job_input__batch_transform_input__dataset_format__json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_job_input__batch_transform_input__dataset_format__json

[@@@deriving.end]

type data_quality_job_input__batch_transform_input__dataset_format = {
  csv :
    data_quality_job_input__batch_transform_input__dataset_format__csv
    list;
  json :
    data_quality_job_input__batch_transform_input__dataset_format__json
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       data_quality_job_input__batch_transform_input__dataset_format) ->
  ()

let yojson_of_data_quality_job_input__batch_transform_input__dataset_format
    =
  (function
   | { csv = v_csv; json = v_json } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_input__batch_transform_input__dataset_format__json
             v_json
         in
         ("json", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_input__batch_transform_input__dataset_format__csv
             v_csv
         in
         ("csv", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_job_input__batch_transform_input__dataset_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_job_input__batch_transform_input__dataset_format

[@@@deriving.end]

type data_quality_job_input__batch_transform_input = {
  data_captured_destination_s3_uri : string prop;
  local_path : string prop option; [@option]
  s3_data_distribution_type : string prop option; [@option]
  s3_input_mode : string prop option; [@option]
  dataset_format :
    data_quality_job_input__batch_transform_input__dataset_format
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_job_input__batch_transform_input) -> ()

let yojson_of_data_quality_job_input__batch_transform_input =
  (function
   | {
       data_captured_destination_s3_uri =
         v_data_captured_destination_s3_uri;
       local_path = v_local_path;
       s3_data_distribution_type = v_s3_data_distribution_type;
       s3_input_mode = v_s3_input_mode;
       dataset_format = v_dataset_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_input__batch_transform_input__dataset_format
             v_dataset_format
         in
         ("dataset_format", arg) :: bnds
       in
       let bnds =
         match v_s3_input_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_input_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_data_distribution_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_data_distribution_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_data_captured_destination_s3_uri
         in
         ("data_captured_destination_s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_job_input__batch_transform_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_job_input__batch_transform_input

[@@@deriving.end]

type data_quality_job_input__endpoint_input = {
  endpoint_name : string prop;
  local_path : string prop option; [@option]
  s3_data_distribution_type : string prop option; [@option]
  s3_input_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_job_input__endpoint_input) -> ()

let yojson_of_data_quality_job_input__endpoint_input =
  (function
   | {
       endpoint_name = v_endpoint_name;
       local_path = v_local_path;
       s3_data_distribution_type = v_s3_data_distribution_type;
       s3_input_mode = v_s3_input_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_input_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_input_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_data_distribution_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_data_distribution_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_name in
         ("endpoint_name", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_job_input__endpoint_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_job_input__endpoint_input

[@@@deriving.end]

type data_quality_job_input = {
  batch_transform_input :
    data_quality_job_input__batch_transform_input list;
  endpoint_input : data_quality_job_input__endpoint_input list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_job_input) -> ()

let yojson_of_data_quality_job_input =
  (function
   | {
       batch_transform_input = v_batch_transform_input;
       endpoint_input = v_endpoint_input;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_input__endpoint_input
             v_endpoint_input
         in
         ("endpoint_input", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_input__batch_transform_input
             v_batch_transform_input
         in
         ("batch_transform_input", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_job_input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_job_input

[@@@deriving.end]

type data_quality_job_output_config__monitoring_outputs__s3_output = {
  local_path : string prop option; [@option]
  s3_upload_mode : string prop option; [@option]
  s3_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       data_quality_job_output_config__monitoring_outputs__s3_output) ->
  ()

let yojson_of_data_quality_job_output_config__monitoring_outputs__s3_output
    =
  (function
   | {
       local_path = v_local_path;
       s3_upload_mode = v_s3_upload_mode;
       s3_uri = v_s3_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         match v_s3_upload_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_upload_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_job_output_config__monitoring_outputs__s3_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_job_output_config__monitoring_outputs__s3_output

[@@@deriving.end]

type data_quality_job_output_config__monitoring_outputs = {
  s3_output :
    data_quality_job_output_config__monitoring_outputs__s3_output
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_job_output_config__monitoring_outputs) -> ()

let yojson_of_data_quality_job_output_config__monitoring_outputs =
  (function
   | { s3_output = v_s3_output } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_output_config__monitoring_outputs__s3_output
             v_s3_output
         in
         ("s3_output", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_job_output_config__monitoring_outputs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_job_output_config__monitoring_outputs

[@@@deriving.end]

type data_quality_job_output_config = {
  kms_key_id : string prop option; [@option]
  monitoring_outputs :
    data_quality_job_output_config__monitoring_outputs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_job_output_config) -> ()

let yojson_of_data_quality_job_output_config =
  (function
   | {
       kms_key_id = v_kms_key_id;
       monitoring_outputs = v_monitoring_outputs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_quality_job_output_config__monitoring_outputs
             v_monitoring_outputs
         in
         ("monitoring_outputs", arg) :: bnds
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
    : data_quality_job_output_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_job_output_config

[@@@deriving.end]

type job_resources__cluster_config = {
  instance_count : float prop;
  instance_type : string prop;
  volume_kms_key_id : string prop option; [@option]
  volume_size_in_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_resources__cluster_config) -> ()

let yojson_of_job_resources__cluster_config =
  (function
   | {
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       volume_kms_key_id = v_volume_kms_key_id;
       volume_size_in_gb = v_volume_size_in_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_volume_size_in_gb
         in
         ("volume_size_in_gb", arg) :: bnds
       in
       let bnds =
         match v_volume_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       `Assoc bnds
    : job_resources__cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_resources__cluster_config

[@@@deriving.end]

type job_resources = {
  cluster_config : job_resources__cluster_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_resources) -> ()

let yojson_of_job_resources =
  (function
   | { cluster_config = v_cluster_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_job_resources__cluster_config
             v_cluster_config
         in
         ("cluster_config", arg) :: bnds
       in
       `Assoc bnds
    : job_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_resources

[@@@deriving.end]

type network_config__vpc_config = {
  security_group_ids : string prop list;
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__vpc_config) -> ()

let yojson_of_network_config__vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : network_config__vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__vpc_config

[@@@deriving.end]

type network_config = {
  enable_inter_container_traffic_encryption : bool prop option;
      [@option]
  enable_network_isolation : bool prop option; [@option]
  vpc_config : network_config__vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       enable_inter_container_traffic_encryption =
         v_enable_inter_container_traffic_encryption;
       enable_network_isolation = v_enable_network_isolation;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_config__vpc_config
             v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         match v_enable_network_isolation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_network_isolation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_inter_container_traffic_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_inter_container_traffic_encryption", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type stopping_condition = {
  max_runtime_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stopping_condition) -> ()

let yojson_of_stopping_condition =
  (function
   | { max_runtime_in_seconds = v_max_runtime_in_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_runtime_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_runtime_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stopping_condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stopping_condition

[@@@deriving.end]

type aws_sagemaker_data_quality_job_definition = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  data_quality_app_specification :
    data_quality_app_specification list;
  data_quality_baseline_config : data_quality_baseline_config list;
  data_quality_job_input : data_quality_job_input list;
  data_quality_job_output_config :
    data_quality_job_output_config list;
  job_resources : job_resources list;
  network_config : network_config list;
  stopping_condition : stopping_condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_data_quality_job_definition) -> ()

let yojson_of_aws_sagemaker_data_quality_job_definition =
  (function
   | {
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       data_quality_app_specification =
         v_data_quality_app_specification;
       data_quality_baseline_config = v_data_quality_baseline_config;
       data_quality_job_input = v_data_quality_job_input;
       data_quality_job_output_config =
         v_data_quality_job_output_config;
       job_resources = v_job_resources;
       network_config = v_network_config;
       stopping_condition = v_stopping_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_stopping_condition
             v_stopping_condition
         in
         ("stopping_condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_config v_network_config
         in
         ("network_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_job_resources v_job_resources
         in
         ("job_resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_quality_job_output_config
             v_data_quality_job_output_config
         in
         ("data_quality_job_output_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_quality_job_input
             v_data_quality_job_input
         in
         ("data_quality_job_input", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_quality_baseline_config
             v_data_quality_baseline_config
         in
         ("data_quality_baseline_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_quality_app_specification
             v_data_quality_app_specification
         in
         ("data_quality_app_specification", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_data_quality_job_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_data_quality_job_definition

[@@@deriving.end]

let data_quality_app_specification ?environment
    ?post_analytics_processor_source_uri
    ?record_preprocessor_source_uri ~image_uri () :
    data_quality_app_specification =
  {
    environment;
    image_uri;
    post_analytics_processor_source_uri;
    record_preprocessor_source_uri;
  }

let data_quality_baseline_config__constraints_resource ?s3_uri () :
    data_quality_baseline_config__constraints_resource =
  { s3_uri }

let data_quality_baseline_config__statistics_resource ?s3_uri () :
    data_quality_baseline_config__statistics_resource =
  { s3_uri }

let data_quality_baseline_config ?(constraints_resource = [])
    ?(statistics_resource = []) () : data_quality_baseline_config =
  { constraints_resource; statistics_resource }

let data_quality_job_input__batch_transform_input__dataset_format__csv
    ?header () :
    data_quality_job_input__batch_transform_input__dataset_format__csv
    =
  { header }

let data_quality_job_input__batch_transform_input__dataset_format__json
    ?line () :
    data_quality_job_input__batch_transform_input__dataset_format__json
    =
  { line }

let data_quality_job_input__batch_transform_input__dataset_format
    ?(csv = []) ?(json = []) () :
    data_quality_job_input__batch_transform_input__dataset_format =
  { csv; json }

let data_quality_job_input__batch_transform_input ?local_path
    ?s3_data_distribution_type ?s3_input_mode
    ~data_captured_destination_s3_uri ~dataset_format () :
    data_quality_job_input__batch_transform_input =
  {
    data_captured_destination_s3_uri;
    local_path;
    s3_data_distribution_type;
    s3_input_mode;
    dataset_format;
  }

let data_quality_job_input__endpoint_input ?local_path
    ?s3_data_distribution_type ?s3_input_mode ~endpoint_name () :
    data_quality_job_input__endpoint_input =
  {
    endpoint_name;
    local_path;
    s3_data_distribution_type;
    s3_input_mode;
  }

let data_quality_job_input ?(batch_transform_input = [])
    ?(endpoint_input = []) () : data_quality_job_input =
  { batch_transform_input; endpoint_input }

let data_quality_job_output_config__monitoring_outputs__s3_output
    ?local_path ?s3_upload_mode ~s3_uri () :
    data_quality_job_output_config__monitoring_outputs__s3_output =
  { local_path; s3_upload_mode; s3_uri }

let data_quality_job_output_config__monitoring_outputs ~s3_output ()
    : data_quality_job_output_config__monitoring_outputs =
  { s3_output }

let data_quality_job_output_config ?kms_key_id ~monitoring_outputs ()
    : data_quality_job_output_config =
  { kms_key_id; monitoring_outputs }

let job_resources__cluster_config ?volume_kms_key_id ~instance_count
    ~instance_type ~volume_size_in_gb () :
    job_resources__cluster_config =
  {
    instance_count;
    instance_type;
    volume_kms_key_id;
    volume_size_in_gb;
  }

let job_resources ~cluster_config () : job_resources =
  { cluster_config }

let network_config__vpc_config ~security_group_ids ~subnets () :
    network_config__vpc_config =
  { security_group_ids; subnets }

let network_config ?enable_inter_container_traffic_encryption
    ?enable_network_isolation ?(vpc_config = []) () : network_config
    =
  {
    enable_inter_container_traffic_encryption;
    enable_network_isolation;
    vpc_config;
  }

let stopping_condition ?max_runtime_in_seconds () :
    stopping_condition =
  { max_runtime_in_seconds }

let aws_sagemaker_data_quality_job_definition ?id ?name ?tags
    ?tags_all ?(data_quality_baseline_config = [])
    ?(network_config = []) ?(stopping_condition = []) ~role_arn
    ~data_quality_app_specification ~data_quality_job_input
    ~data_quality_job_output_config ~job_resources () :
    aws_sagemaker_data_quality_job_definition =
  {
    id;
    name;
    role_arn;
    tags;
    tags_all;
    data_quality_app_specification;
    data_quality_baseline_config;
    data_quality_job_input;
    data_quality_job_output_config;
    job_resources;
    network_config;
    stopping_condition;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all
    ?(data_quality_baseline_config = []) ?(network_config = [])
    ?(stopping_condition = []) ~role_arn
    ~data_quality_app_specification ~data_quality_job_input
    ~data_quality_job_output_config ~job_resources __id =
  let __type = "aws_sagemaker_data_quality_job_definition" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_data_quality_job_definition
        (aws_sagemaker_data_quality_job_definition ?id ?name ?tags
           ?tags_all ~data_quality_baseline_config ~network_config
           ~stopping_condition ~role_arn
           ~data_quality_app_specification ~data_quality_job_input
           ~data_quality_job_output_config ~job_resources ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ?(data_quality_baseline_config = []) ?(network_config = [])
    ?(stopping_condition = []) ~role_arn
    ~data_quality_app_specification ~data_quality_job_input
    ~data_quality_job_output_config ~job_resources __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~data_quality_baseline_config
      ~network_config ~stopping_condition ~role_arn
      ~data_quality_app_specification ~data_quality_job_input
      ~data_quality_job_output_config ~job_resources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
