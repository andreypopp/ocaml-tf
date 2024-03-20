(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule_info = {
  schedule : string prop option; [@option]
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule_info) -> ()

let yojson_of_schedule_info =
  (function
   | { schedule = v_schedule; time_zone = v_time_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule_info

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

type workload__dataflow_flex_template_request__launch_parameter__environment = {
  additional_experiments : string prop list option; [@option]
  additional_user_labels : (string * string prop) list option;
      [@option]
  enable_streaming_engine : bool prop option; [@option]
  flexrs_goal : string prop option; [@option]
  ip_configuration : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  machine_type : string prop option; [@option]
  max_workers : float prop option; [@option]
  network : string prop option; [@option]
  num_workers : float prop option; [@option]
  service_account_email : string prop option; [@option]
  subnetwork : string prop option; [@option]
  temp_location : string prop option; [@option]
  worker_region : string prop option; [@option]
  worker_zone : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       workload__dataflow_flex_template_request__launch_parameter__environment) ->
  ()

let yojson_of_workload__dataflow_flex_template_request__launch_parameter__environment
    =
  (function
   | {
       additional_experiments = v_additional_experiments;
       additional_user_labels = v_additional_user_labels;
       enable_streaming_engine = v_enable_streaming_engine;
       flexrs_goal = v_flexrs_goal;
       ip_configuration = v_ip_configuration;
       kms_key_name = v_kms_key_name;
       machine_type = v_machine_type;
       max_workers = v_max_workers;
       network = v_network;
       num_workers = v_num_workers;
       service_account_email = v_service_account_email;
       subnetwork = v_subnetwork;
       temp_location = v_temp_location;
       worker_region = v_worker_region;
       worker_zone = v_worker_zone;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worker_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worker_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_temp_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temp_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flexrs_goal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flexrs_goal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_streaming_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_streaming_engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_user_labels with
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
             let bnd = "additional_user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_experiments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_experiments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload__dataflow_flex_template_request__launch_parameter__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_workload__dataflow_flex_template_request__launch_parameter__environment

[@@@deriving.end]

type workload__dataflow_flex_template_request__launch_parameter = {
  container_spec_gcs_path : string prop option; [@option]
  job_name : string prop;
  launch_options : (string * string prop) list option; [@option]
  parameters : (string * string prop) list option; [@option]
  transform_name_mappings : (string * string prop) list option;
      [@option]
  update : bool prop option; [@option]
  environment :
    workload__dataflow_flex_template_request__launch_parameter__environment
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : workload__dataflow_flex_template_request__launch_parameter) ->
  ()

let yojson_of_workload__dataflow_flex_template_request__launch_parameter
    =
  (function
   | {
       container_spec_gcs_path = v_container_spec_gcs_path;
       job_name = v_job_name;
       launch_options = v_launch_options;
       parameters = v_parameters;
       transform_name_mappings = v_transform_name_mappings;
       update = v_update;
       environment = v_environment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_flex_template_request__launch_parameter__environment
             v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transform_name_mappings with
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
             let bnd = "transform_name_mappings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_options with
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
             let bnd = "launch_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_name in
         ("job_name", arg) :: bnds
       in
       let bnds =
         match v_container_spec_gcs_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_spec_gcs_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload__dataflow_flex_template_request__launch_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_workload__dataflow_flex_template_request__launch_parameter

[@@@deriving.end]

type workload__dataflow_flex_template_request = {
  location : string prop;
  project_id : string prop;
  validate_only : bool prop option; [@option]
  launch_parameter :
    workload__dataflow_flex_template_request__launch_parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload__dataflow_flex_template_request) -> ()

let yojson_of_workload__dataflow_flex_template_request =
  (function
   | {
       location = v_location;
       project_id = v_project_id;
       validate_only = v_validate_only;
       launch_parameter = v_launch_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_flex_template_request__launch_parameter
             v_launch_parameter
         in
         ("launch_parameter", arg) :: bnds
       in
       let bnds =
         match v_validate_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : workload__dataflow_flex_template_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload__dataflow_flex_template_request

[@@@deriving.end]

type workload__dataflow_launch_template_request__launch_parameters__environment = {
  additional_experiments : string prop list option; [@option]
  additional_user_labels : (string * string prop) list option;
      [@option]
  bypass_temp_dir_validation : bool prop option; [@option]
  enable_streaming_engine : bool prop option; [@option]
  ip_configuration : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  machine_type : string prop option; [@option]
  max_workers : float prop option; [@option]
  network : string prop option; [@option]
  num_workers : float prop option; [@option]
  service_account_email : string prop option; [@option]
  subnetwork : string prop option; [@option]
  temp_location : string prop option; [@option]
  worker_region : string prop option; [@option]
  worker_zone : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       workload__dataflow_launch_template_request__launch_parameters__environment) ->
  ()

let yojson_of_workload__dataflow_launch_template_request__launch_parameters__environment
    =
  (function
   | {
       additional_experiments = v_additional_experiments;
       additional_user_labels = v_additional_user_labels;
       bypass_temp_dir_validation = v_bypass_temp_dir_validation;
       enable_streaming_engine = v_enable_streaming_engine;
       ip_configuration = v_ip_configuration;
       kms_key_name = v_kms_key_name;
       machine_type = v_machine_type;
       max_workers = v_max_workers;
       network = v_network;
       num_workers = v_num_workers;
       service_account_email = v_service_account_email;
       subnetwork = v_subnetwork;
       temp_location = v_temp_location;
       worker_region = v_worker_region;
       worker_zone = v_worker_zone;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worker_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worker_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_temp_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temp_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_streaming_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_streaming_engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_temp_dir_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_temp_dir_validation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_user_labels with
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
             let bnd = "additional_user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_experiments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_experiments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload__dataflow_launch_template_request__launch_parameters__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_workload__dataflow_launch_template_request__launch_parameters__environment

[@@@deriving.end]

type workload__dataflow_launch_template_request__launch_parameters = {
  job_name : string prop;
  parameters : (string * string prop) list option; [@option]
  transform_name_mapping : (string * string prop) list option;
      [@option]
  update : bool prop option; [@option]
  environment :
    workload__dataflow_launch_template_request__launch_parameters__environment
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       workload__dataflow_launch_template_request__launch_parameters) ->
  ()

let yojson_of_workload__dataflow_launch_template_request__launch_parameters
    =
  (function
   | {
       job_name = v_job_name;
       parameters = v_parameters;
       transform_name_mapping = v_transform_name_mapping;
       update = v_update;
       environment = v_environment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_launch_template_request__launch_parameters__environment
             v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transform_name_mapping with
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
             let bnd = "transform_name_mapping", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_name in
         ("job_name", arg) :: bnds
       in
       `Assoc bnds
    : workload__dataflow_launch_template_request__launch_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_workload__dataflow_launch_template_request__launch_parameters

[@@@deriving.end]

type workload__dataflow_launch_template_request = {
  gcs_path : string prop option; [@option]
  location : string prop option; [@option]
  project_id : string prop;
  validate_only : bool prop option; [@option]
  launch_parameters :
    workload__dataflow_launch_template_request__launch_parameters
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload__dataflow_launch_template_request) -> ()

let yojson_of_workload__dataflow_launch_template_request =
  (function
   | {
       gcs_path = v_gcs_path;
       location = v_location;
       project_id = v_project_id;
       validate_only = v_validate_only;
       launch_parameters = v_launch_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_launch_template_request__launch_parameters
             v_launch_parameters
         in
         ("launch_parameters", arg) :: bnds
       in
       let bnds =
         match v_validate_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gcs_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gcs_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload__dataflow_launch_template_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload__dataflow_launch_template_request

[@@@deriving.end]

type workload = {
  dataflow_flex_template_request :
    workload__dataflow_flex_template_request list;
  dataflow_launch_template_request :
    workload__dataflow_launch_template_request list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload) -> ()

let yojson_of_workload =
  (function
   | {
       dataflow_flex_template_request =
         v_dataflow_flex_template_request;
       dataflow_launch_template_request =
         v_dataflow_launch_template_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_launch_template_request
             v_dataflow_launch_template_request
         in
         ("dataflow_launch_template_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workload__dataflow_flex_template_request
             v_dataflow_flex_template_request
         in
         ("dataflow_flex_template_request", arg) :: bnds
       in
       `Assoc bnds
    : workload -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload

[@@@deriving.end]

type google_data_pipeline_pipeline = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  pipeline_sources : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  scheduler_service_account_email : string prop option; [@option]
  state : string prop;
  type_ : string prop; [@key "type"]
  schedule_info : schedule_info list;
  timeouts : timeouts option;
  workload : workload list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_pipeline_pipeline) -> ()

let yojson_of_google_data_pipeline_pipeline =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       pipeline_sources = v_pipeline_sources;
       project = v_project;
       region = v_region;
       scheduler_service_account_email =
         v_scheduler_service_account_email;
       state = v_state;
       type_ = v_type_;
       schedule_info = v_schedule_info;
       timeouts = v_timeouts;
       workload = v_workload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_workload v_workload in
         ("workload", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule_info v_schedule_info
         in
         ("schedule_info", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         match v_scheduler_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduler_service_account_email", arg in
             bnd :: bnds
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pipeline_sources with
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
             let bnd = "pipeline_sources", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_pipeline_pipeline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_pipeline_pipeline

[@@@deriving.end]

let schedule_info ?schedule ?time_zone () : schedule_info =
  { schedule; time_zone }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let workload__dataflow_flex_template_request__launch_parameter__environment
    ?additional_experiments ?additional_user_labels
    ?enable_streaming_engine ?flexrs_goal ?ip_configuration
    ?kms_key_name ?machine_type ?max_workers ?network ?num_workers
    ?service_account_email ?subnetwork ?temp_location ?worker_region
    ?worker_zone ?zone () :
    workload__dataflow_flex_template_request__launch_parameter__environment
    =
  {
    additional_experiments;
    additional_user_labels;
    enable_streaming_engine;
    flexrs_goal;
    ip_configuration;
    kms_key_name;
    machine_type;
    max_workers;
    network;
    num_workers;
    service_account_email;
    subnetwork;
    temp_location;
    worker_region;
    worker_zone;
    zone;
  }

let workload__dataflow_flex_template_request__launch_parameter
    ?container_spec_gcs_path ?launch_options ?parameters
    ?transform_name_mappings ?update ~job_name ~environment () :
    workload__dataflow_flex_template_request__launch_parameter =
  {
    container_spec_gcs_path;
    job_name;
    launch_options;
    parameters;
    transform_name_mappings;
    update;
    environment;
  }

let workload__dataflow_flex_template_request ?validate_only ~location
    ~project_id ~launch_parameter () :
    workload__dataflow_flex_template_request =
  { location; project_id; validate_only; launch_parameter }

let workload__dataflow_launch_template_request__launch_parameters__environment
    ?additional_experiments ?additional_user_labels
    ?bypass_temp_dir_validation ?enable_streaming_engine
    ?ip_configuration ?kms_key_name ?machine_type ?max_workers
    ?network ?num_workers ?service_account_email ?subnetwork
    ?temp_location ?worker_region ?worker_zone ?zone () :
    workload__dataflow_launch_template_request__launch_parameters__environment
    =
  {
    additional_experiments;
    additional_user_labels;
    bypass_temp_dir_validation;
    enable_streaming_engine;
    ip_configuration;
    kms_key_name;
    machine_type;
    max_workers;
    network;
    num_workers;
    service_account_email;
    subnetwork;
    temp_location;
    worker_region;
    worker_zone;
    zone;
  }

let workload__dataflow_launch_template_request__launch_parameters
    ?parameters ?transform_name_mapping ?update ~job_name
    ~environment () :
    workload__dataflow_launch_template_request__launch_parameters =
  {
    job_name;
    parameters;
    transform_name_mapping;
    update;
    environment;
  }

let workload__dataflow_launch_template_request ?gcs_path ?location
    ?validate_only ~project_id ~launch_parameters () :
    workload__dataflow_launch_template_request =
  {
    gcs_path;
    location;
    project_id;
    validate_only;
    launch_parameters;
  }

let workload ~dataflow_flex_template_request
    ~dataflow_launch_template_request () : workload =
  {
    dataflow_flex_template_request;
    dataflow_launch_template_request;
  }

let google_data_pipeline_pipeline ?display_name ?id ?pipeline_sources
    ?project ?region ?scheduler_service_account_email ?timeouts ~name
    ~state ~type_ ~schedule_info ~workload () :
    google_data_pipeline_pipeline =
  {
    display_name;
    id;
    name;
    pipeline_sources;
    project;
    region;
    scheduler_service_account_email;
    state;
    type_;
    schedule_info;
    timeouts;
    workload;
  }

type t = {
  create_time : string prop;
  display_name : string prop;
  id : string prop;
  job_count : float prop;
  last_update_time : string prop;
  name : string prop;
  pipeline_sources : (string * string) list prop;
  project : string prop;
  region : string prop;
  scheduler_service_account_email : string prop;
  state : string prop;
  type_ : string prop;
}

let make ?display_name ?id ?pipeline_sources ?project ?region
    ?scheduler_service_account_email ?timeouts ~name ~state ~type_
    ~schedule_info ~workload __id =
  let __type = "google_data_pipeline_pipeline" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       job_count = Prop.computed __type __id "job_count";
       last_update_time =
         Prop.computed __type __id "last_update_time";
       name = Prop.computed __type __id "name";
       pipeline_sources =
         Prop.computed __type __id "pipeline_sources";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       scheduler_service_account_email =
         Prop.computed __type __id "scheduler_service_account_email";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_pipeline_pipeline
        (google_data_pipeline_pipeline ?display_name ?id
           ?pipeline_sources ?project ?region
           ?scheduler_service_account_email ?timeouts ~name ~state
           ~type_ ~schedule_info ~workload ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?pipeline_sources ?project
    ?region ?scheduler_service_account_email ?timeouts ~name ~state
    ~type_ ~schedule_info ~workload __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?pipeline_sources ?project ?region
      ?scheduler_service_account_email ?timeouts ~name ~state ~type_
      ~schedule_info ~workload __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
