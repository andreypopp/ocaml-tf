(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addons_config__network_policy_config = { disabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__network_policy_config) -> ()

let yojson_of_addons_config__network_policy_config =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : addons_config__network_policy_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__network_policy_config

[@@@deriving.end]

type addons_config__http_load_balancing = { disabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__http_load_balancing) -> ()

let yojson_of_addons_config__http_load_balancing =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : addons_config__http_load_balancing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__http_load_balancing

[@@@deriving.end]

type addons_config__horizontal_pod_autoscaling = {
  disabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__horizontal_pod_autoscaling) -> ()

let yojson_of_addons_config__horizontal_pod_autoscaling =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : addons_config__horizontal_pod_autoscaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__horizontal_pod_autoscaling

[@@@deriving.end]

type addons_config__gke_backup_agent_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__gke_backup_agent_config) -> ()

let yojson_of_addons_config__gke_backup_agent_config =
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
    : addons_config__gke_backup_agent_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__gke_backup_agent_config

[@@@deriving.end]

type addons_config__gcs_fuse_csi_driver_config = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__gcs_fuse_csi_driver_config) -> ()

let yojson_of_addons_config__gcs_fuse_csi_driver_config =
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
    : addons_config__gcs_fuse_csi_driver_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__gcs_fuse_csi_driver_config

[@@@deriving.end]

type addons_config__gcp_filestore_csi_driver_config = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : addons_config__gcp_filestore_csi_driver_config) -> ()

let yojson_of_addons_config__gcp_filestore_csi_driver_config =
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
    : addons_config__gcp_filestore_csi_driver_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__gcp_filestore_csi_driver_config

[@@@deriving.end]

type addons_config__gce_persistent_disk_csi_driver_config = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : addons_config__gce_persistent_disk_csi_driver_config) -> ()

let yojson_of_addons_config__gce_persistent_disk_csi_driver_config =
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
    : addons_config__gce_persistent_disk_csi_driver_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_addons_config__gce_persistent_disk_csi_driver_config

[@@@deriving.end]

type addons_config__dns_cache_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__dns_cache_config) -> ()

let yojson_of_addons_config__dns_cache_config =
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
    : addons_config__dns_cache_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__dns_cache_config

[@@@deriving.end]

type addons_config__config_connector_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__config_connector_config) -> ()

let yojson_of_addons_config__config_connector_config =
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
    : addons_config__config_connector_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__config_connector_config

[@@@deriving.end]

type addons_config__cloudrun_config = {
  disabled : bool prop;
  load_balancer_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config__cloudrun_config) -> ()

let yojson_of_addons_config__cloudrun_config =
  (function
   | {
       disabled = v_disabled;
       load_balancer_type = v_load_balancer_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : addons_config__cloudrun_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config__cloudrun_config

[@@@deriving.end]

type addons_config = {
  cloudrun_config : addons_config__cloudrun_config list;
  config_connector_config :
    addons_config__config_connector_config list;
  dns_cache_config : addons_config__dns_cache_config list;
  gce_persistent_disk_csi_driver_config :
    addons_config__gce_persistent_disk_csi_driver_config list;
  gcp_filestore_csi_driver_config :
    addons_config__gcp_filestore_csi_driver_config list;
  gcs_fuse_csi_driver_config :
    addons_config__gcs_fuse_csi_driver_config list;
  gke_backup_agent_config :
    addons_config__gke_backup_agent_config list;
  horizontal_pod_autoscaling :
    addons_config__horizontal_pod_autoscaling list;
  http_load_balancing : addons_config__http_load_balancing list;
  network_policy_config : addons_config__network_policy_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addons_config) -> ()

let yojson_of_addons_config =
  (function
   | {
       cloudrun_config = v_cloudrun_config;
       config_connector_config = v_config_connector_config;
       dns_cache_config = v_dns_cache_config;
       gce_persistent_disk_csi_driver_config =
         v_gce_persistent_disk_csi_driver_config;
       gcp_filestore_csi_driver_config =
         v_gcp_filestore_csi_driver_config;
       gcs_fuse_csi_driver_config = v_gcs_fuse_csi_driver_config;
       gke_backup_agent_config = v_gke_backup_agent_config;
       horizontal_pod_autoscaling = v_horizontal_pod_autoscaling;
       http_load_balancing = v_http_load_balancing;
       network_policy_config = v_network_policy_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__network_policy_config
             v_network_policy_config
         in
         ("network_policy_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__http_load_balancing
             v_http_load_balancing
         in
         ("http_load_balancing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__horizontal_pod_autoscaling
             v_horizontal_pod_autoscaling
         in
         ("horizontal_pod_autoscaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__gke_backup_agent_config
             v_gke_backup_agent_config
         in
         ("gke_backup_agent_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__gcs_fuse_csi_driver_config
             v_gcs_fuse_csi_driver_config
         in
         ("gcs_fuse_csi_driver_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__gcp_filestore_csi_driver_config
             v_gcp_filestore_csi_driver_config
         in
         ("gcp_filestore_csi_driver_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__gce_persistent_disk_csi_driver_config
             v_gce_persistent_disk_csi_driver_config
         in
         ("gce_persistent_disk_csi_driver_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_addons_config__dns_cache_config
             v_dns_cache_config
         in
         ("dns_cache_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_addons_config__config_connector_config
             v_config_connector_config
         in
         ("config_connector_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_addons_config__cloudrun_config
             v_cloudrun_config
         in
         ("cloudrun_config", arg) :: bnds
       in
       `Assoc bnds
    : addons_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addons_config

[@@@deriving.end]

type authenticator_groups_config = { security_group : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authenticator_groups_config) -> ()

let yojson_of_authenticator_groups_config =
  (function
   | { security_group = v_security_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group
         in
         ("security_group", arg) :: bnds
       in
       `Assoc bnds
    : authenticator_groups_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authenticator_groups_config

[@@@deriving.end]

type binary_authorization = {
  enabled : bool prop;
  evaluation_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binary_authorization) -> ()

let yojson_of_binary_authorization =
  (function
   | { enabled = v_enabled; evaluation_mode = v_evaluation_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_evaluation_mode
         in
         ("evaluation_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

[@@@deriving.end]

type cluster_autoscaling__resource_limits = {
  maximum : float prop;
  minimum : float prop;
  resource_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_autoscaling__resource_limits) -> ()

let yojson_of_cluster_autoscaling__resource_limits =
  (function
   | {
       maximum = v_maximum;
       minimum = v_minimum;
       resource_type = v_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minimum in
         ("minimum", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum in
         ("maximum", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__resource_limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_autoscaling__resource_limits

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop;
  batch_percentage : float prop;
  batch_soak_duration : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    =
  (function
   | {
       batch_node_count = v_batch_node_count;
       batch_percentage = v_batch_percentage;
       batch_soak_duration = v_batch_soak_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_batch_soak_duration
         in
         ("batch_soak_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_batch_percentage
         in
         ("batch_percentage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_batch_node_count
         in
         ("batch_node_count", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop;
  standard_rollout_policy :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    =
  (function
   | {
       node_pool_soak_duration = v_node_pool_soak_duration;
       standard_rollout_policy = v_standard_rollout_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
             v_standard_rollout_policy
         in
         ("standard_rollout_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_pool_soak_duration
         in
         ("node_pool_soak_duration", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings = {
  blue_green_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    list;
  max_surge : float prop;
  max_unavailable : float prop;
  strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__upgrade_settings) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    =
  (function
   | {
       blue_green_settings = v_blue_green_settings;
       max_surge = v_max_surge;
       max_unavailable = v_max_unavailable;
       strategy = v_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_strategy in
         ("strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_unavailable
         in
         ("max_unavailable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_surge in
         ("max_surge", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
             v_blue_green_settings
         in
         ("blue_green_settings", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
  enable_secure_boot : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_secure_boot
         in
         ("enable_secure_boot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_integrity_monitoring
         in
         ("enable_integrity_monitoring", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options = {
  auto_upgrade_start_time : string prop;
  description : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options
    =
  (function
   | {
       auto_upgrade_start_time = v_auto_upgrade_start_time;
       description = v_description;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auto_upgrade_start_time
         in
         ("auto_upgrade_start_time", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__management = {
  auto_repair : bool prop;
  auto_upgrade : bool prop;
  upgrade_options :
    cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__management) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__management
    =
  (function
   | {
       auto_repair = v_auto_repair;
       auto_upgrade = v_auto_upgrade;
       upgrade_options = v_upgrade_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options
             v_upgrade_options
         in
         ("upgrade_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_upgrade in
         ("auto_upgrade", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_repair in
         ("auto_repair", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__management ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__management

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults = {
  boot_disk_kms_key : string prop;
  disk_size : float prop;
  disk_type : string prop;
  image_type : string prop;
  management :
    cluster_autoscaling__auto_provisioning_defaults__management list;
  min_cpu_platform : string prop;
  oauth_scopes : string prop list;
  service_account : string prop;
  shielded_instance_config :
    cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    list;
  upgrade_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_autoscaling__auto_provisioning_defaults) -> ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults =
  (function
   | {
       boot_disk_kms_key = v_boot_disk_kms_key;
       disk_size = v_disk_size;
       disk_type = v_disk_type;
       image_type = v_image_type;
       management = v_management;
       min_cpu_platform = v_min_cpu_platform;
       oauth_scopes = v_oauth_scopes;
       service_account = v_service_account;
       shielded_instance_config = v_shielded_instance_config;
       upgrade_settings = v_upgrade_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
             v_upgrade_settings
         in
         ("upgrade_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
             v_shielded_instance_config
         in
         ("shielded_instance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_cpu_platform
         in
         ("min_cpu_platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults__management
             v_management
         in
         ("management", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_type in
         ("image_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size in
         ("disk_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_boot_disk_kms_key
         in
         ("boot_disk_kms_key", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_autoscaling__auto_provisioning_defaults

[@@@deriving.end]

type cluster_autoscaling = {
  auto_provisioning_defaults :
    cluster_autoscaling__auto_provisioning_defaults list;
  autoscaling_profile : string prop;
  enabled : bool prop;
  resource_limits : cluster_autoscaling__resource_limits list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_autoscaling) -> ()

let yojson_of_cluster_autoscaling =
  (function
   | {
       auto_provisioning_defaults = v_auto_provisioning_defaults;
       autoscaling_profile = v_autoscaling_profile;
       enabled = v_enabled;
       resource_limits = v_resource_limits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__resource_limits
             v_resource_limits
         in
         ("resource_limits", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_profile
         in
         ("autoscaling_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_autoscaling__auto_provisioning_defaults
             v_auto_provisioning_defaults
         in
         ("auto_provisioning_defaults", arg) :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_autoscaling

[@@@deriving.end]

type confidential_nodes = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : confidential_nodes) -> ()

let yojson_of_confidential_nodes =
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
    : confidential_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confidential_nodes

[@@@deriving.end]

type cost_management_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cost_management_config) -> ()

let yojson_of_cost_management_config =
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
    : cost_management_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cost_management_config

[@@@deriving.end]

type database_encryption = {
  key_name : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : database_encryption) -> ()

let yojson_of_database_encryption =
  (function
   | { key_name = v_key_name; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
       in
       `Assoc bnds
    : database_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_database_encryption

[@@@deriving.end]

type default_snat_status = { disabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : default_snat_status) -> ()

let yojson_of_default_snat_status =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : default_snat_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_snat_status

[@@@deriving.end]

type dns_config = {
  cluster_dns : string prop;
  cluster_dns_domain : string prop;
  cluster_dns_scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config) -> ()

let yojson_of_dns_config =
  (function
   | {
       cluster_dns = v_cluster_dns;
       cluster_dns_domain = v_cluster_dns_domain;
       cluster_dns_scope = v_cluster_dns_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_dns_scope
         in
         ("cluster_dns_scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_dns_domain
         in
         ("cluster_dns_domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_dns in
         ("cluster_dns", arg) :: bnds
       in
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

[@@@deriving.end]

type enable_k8s_beta_apis = { enabled_apis : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : enable_k8s_beta_apis) -> ()

let yojson_of_enable_k8s_beta_apis =
  (function
   | { enabled_apis = v_enabled_apis } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_enabled_apis
         in
         ("enabled_apis", arg) :: bnds
       in
       `Assoc bnds
    : enable_k8s_beta_apis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enable_k8s_beta_apis

[@@@deriving.end]

type fleet = {
  membership : string prop;
  membership_id : string prop;
  membership_location : string prop;
  pre_registered : bool prop;
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | {
       membership = v_membership;
       membership_id = v_membership_id;
       membership_location = v_membership_location;
       pre_registered = v_pre_registered;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_pre_registered in
         ("pre_registered", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_membership_location
         in
         ("membership_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_membership_id in
         ("membership_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_membership in
         ("membership", arg) :: bnds
       in
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type gateway_api_config = { channel : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway_api_config) -> ()

let yojson_of_gateway_api_config =
  (function
   | { channel = v_channel } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel in
         ("channel", arg) :: bnds
       in
       `Assoc bnds
    : gateway_api_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway_api_config

[@@@deriving.end]

type identity_service_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_service_config) -> ()

let yojson_of_identity_service_config =
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
    : identity_service_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_service_config

[@@@deriving.end]

type ip_allocation_policy__pod_cidr_overprovision_config = {
  disabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : ip_allocation_policy__pod_cidr_overprovision_config) -> ()

let yojson_of_ip_allocation_policy__pod_cidr_overprovision_config =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : ip_allocation_policy__pod_cidr_overprovision_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allocation_policy__pod_cidr_overprovision_config

[@@@deriving.end]

type ip_allocation_policy__additional_pod_ranges_config = {
  pod_range_names : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : ip_allocation_policy__additional_pod_ranges_config) -> ()

let yojson_of_ip_allocation_policy__additional_pod_ranges_config =
  (function
   | { pod_range_names = v_pod_range_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pod_range_names
         in
         ("pod_range_names", arg) :: bnds
       in
       `Assoc bnds
    : ip_allocation_policy__additional_pod_ranges_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allocation_policy__additional_pod_ranges_config

[@@@deriving.end]

type ip_allocation_policy = {
  additional_pod_ranges_config :
    ip_allocation_policy__additional_pod_ranges_config list;
  cluster_ipv4_cidr_block : string prop;
  cluster_secondary_range_name : string prop;
  pod_cidr_overprovision_config :
    ip_allocation_policy__pod_cidr_overprovision_config list;
  services_ipv4_cidr_block : string prop;
  services_secondary_range_name : string prop;
  stack_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_allocation_policy) -> ()

let yojson_of_ip_allocation_policy =
  (function
   | {
       additional_pod_ranges_config = v_additional_pod_ranges_config;
       cluster_ipv4_cidr_block = v_cluster_ipv4_cidr_block;
       cluster_secondary_range_name = v_cluster_secondary_range_name;
       pod_cidr_overprovision_config =
         v_pod_cidr_overprovision_config;
       services_ipv4_cidr_block = v_services_ipv4_cidr_block;
       services_secondary_range_name =
         v_services_secondary_range_name;
       stack_type = v_stack_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_type in
         ("stack_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_services_secondary_range_name
         in
         ("services_secondary_range_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_services_ipv4_cidr_block
         in
         ("services_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ip_allocation_policy__pod_cidr_overprovision_config
             v_pod_cidr_overprovision_config
         in
         ("pod_cidr_overprovision_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_secondary_range_name
         in
         ("cluster_secondary_range_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ipv4_cidr_block
         in
         ("cluster_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ip_allocation_policy__additional_pod_ranges_config
             v_additional_pod_ranges_config
         in
         ("additional_pod_ranges_config", arg) :: bnds
       in
       `Assoc bnds
    : ip_allocation_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allocation_policy

[@@@deriving.end]

type logging_config = { enable_components : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | { enable_components = v_enable_components } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_enable_components
         in
         ("enable_components", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type maintenance_policy__recurring_window = {
  end_time : string prop;
  recurrence : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__recurring_window) -> ()

let yojson_of_maintenance_policy__recurring_window =
  (function
   | {
       end_time = v_end_time;
       recurrence = v_recurrence;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_recurrence in
         ("recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__recurring_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__recurring_window

[@@@deriving.end]

type maintenance_policy__maintenance_exclusion__exclusion_options = {
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       maintenance_policy__maintenance_exclusion__exclusion_options) ->
  ()

let yojson_of_maintenance_policy__maintenance_exclusion__exclusion_options
    =
  (function
   | { scope = v_scope } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__maintenance_exclusion__exclusion_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_maintenance_policy__maintenance_exclusion__exclusion_options

[@@@deriving.end]

type maintenance_policy__maintenance_exclusion = {
  end_time : string prop;
  exclusion_name : string prop;
  exclusion_options :
    maintenance_policy__maintenance_exclusion__exclusion_options list;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__maintenance_exclusion) -> ()

let yojson_of_maintenance_policy__maintenance_exclusion =
  (function
   | {
       end_time = v_end_time;
       exclusion_name = v_exclusion_name;
       exclusion_options = v_exclusion_options;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__maintenance_exclusion__exclusion_options
             v_exclusion_options
         in
         ("exclusion_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_exclusion_name
         in
         ("exclusion_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__maintenance_exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__maintenance_exclusion

[@@@deriving.end]

type maintenance_policy__daily_maintenance_window = {
  duration : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__daily_maintenance_window) -> ()

let yojson_of_maintenance_policy__daily_maintenance_window =
  (function
   | { duration = v_duration; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__daily_maintenance_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__daily_maintenance_window

[@@@deriving.end]

type maintenance_policy = {
  daily_maintenance_window :
    maintenance_policy__daily_maintenance_window list;
  maintenance_exclusion :
    maintenance_policy__maintenance_exclusion list;
  recurring_window : maintenance_policy__recurring_window list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | {
       daily_maintenance_window = v_daily_maintenance_window;
       maintenance_exclusion = v_maintenance_exclusion;
       recurring_window = v_recurring_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__recurring_window
             v_recurring_window
         in
         ("recurring_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__maintenance_exclusion
             v_maintenance_exclusion
         in
         ("maintenance_exclusion", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__daily_maintenance_window
             v_daily_maintenance_window
         in
         ("daily_maintenance_window", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy

[@@@deriving.end]

type master_auth__client_certificate_config = {
  issue_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_auth__client_certificate_config) -> ()

let yojson_of_master_auth__client_certificate_config =
  (function
   | { issue_client_certificate = v_issue_client_certificate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_issue_client_certificate
         in
         ("issue_client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : master_auth__client_certificate_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_auth__client_certificate_config

[@@@deriving.end]

type master_auth = {
  client_certificate : string prop;
  client_certificate_config :
    master_auth__client_certificate_config list;
  client_key : string prop;
  cluster_ca_certificate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_auth) -> ()

let yojson_of_master_auth =
  (function
   | {
       client_certificate = v_client_certificate;
       client_certificate_config = v_client_certificate_config;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_master_auth__client_certificate_config
             v_client_certificate_config
         in
         ("client_certificate_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : master_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_auth

[@@@deriving.end]

type master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
  display_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : master_authorized_networks_config__cidr_blocks) -> ()

let yojson_of_master_authorized_networks_config__cidr_blocks =
  (function
   | { cidr_block = v_cidr_block; display_name = v_display_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : master_authorized_networks_config__cidr_blocks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_authorized_networks_config__cidr_blocks

[@@@deriving.end]

type master_authorized_networks_config = {
  cidr_blocks : master_authorized_networks_config__cidr_blocks list;
  gcp_public_cidrs_access_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_authorized_networks_config) -> ()

let yojson_of_master_authorized_networks_config =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       gcp_public_cidrs_access_enabled =
         v_gcp_public_cidrs_access_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_gcp_public_cidrs_access_enabled
         in
         ("gcp_public_cidrs_access_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_master_authorized_networks_config__cidr_blocks
             v_cidr_blocks
         in
         ("cidr_blocks", arg) :: bnds
       in
       `Assoc bnds
    : master_authorized_networks_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_authorized_networks_config

[@@@deriving.end]

type mesh_certificates = { enable_certificates : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : mesh_certificates) -> ()

let yojson_of_mesh_certificates =
  (function
   | { enable_certificates = v_enable_certificates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_certificates
         in
         ("enable_certificates", arg) :: bnds
       in
       `Assoc bnds
    : mesh_certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mesh_certificates

[@@@deriving.end]

type monitoring_config__managed_prometheus = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config__managed_prometheus) -> ()

let yojson_of_monitoring_config__managed_prometheus =
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
    : monitoring_config__managed_prometheus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__managed_prometheus

[@@@deriving.end]

type monitoring_config__advanced_datapath_observability_config = {
  enable_metrics : bool prop;
  enable_relay : bool prop;
  relay_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : monitoring_config__advanced_datapath_observability_config) ->
  ()

let yojson_of_monitoring_config__advanced_datapath_observability_config
    =
  (function
   | {
       enable_metrics = v_enable_metrics;
       enable_relay = v_enable_relay;
       relay_mode = v_relay_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relay_mode in
         ("relay_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable_relay in
         ("enable_relay", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable_metrics in
         ("enable_metrics", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_config__advanced_datapath_observability_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_monitoring_config__advanced_datapath_observability_config

[@@@deriving.end]

type monitoring_config = {
  advanced_datapath_observability_config :
    monitoring_config__advanced_datapath_observability_config list;
  enable_components : string prop list;
  managed_prometheus : monitoring_config__managed_prometheus list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config) -> ()

let yojson_of_monitoring_config =
  (function
   | {
       advanced_datapath_observability_config =
         v_advanced_datapath_observability_config;
       enable_components = v_enable_components;
       managed_prometheus = v_managed_prometheus;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_monitoring_config__managed_prometheus
             v_managed_prometheus
         in
         ("managed_prometheus", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_enable_components
         in
         ("enable_components", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_monitoring_config__advanced_datapath_observability_config
             v_advanced_datapath_observability_config
         in
         ("advanced_datapath_observability_config", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config

[@@@deriving.end]

type network_policy = { enabled : bool prop; provider : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_policy) -> ()

let yojson_of_network_policy =
  (function
   | { enabled = v_enabled; provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider in
         ("provider", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : network_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_policy

[@@@deriving.end]

type node_config__workload_metadata_config = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__workload_metadata_config) -> ()

let yojson_of_node_config__workload_metadata_config =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : node_config__workload_metadata_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__workload_metadata_config

[@@@deriving.end]

type node_config__taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__taint) -> ()

let yojson_of_node_config__taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_config__taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__taint

[@@@deriving.end]

type node_config__sole_tenant_config__node_affinity = {
  key : string prop;
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__sole_tenant_config__node_affinity) -> ()

let yojson_of_node_config__sole_tenant_config__node_affinity =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : node_config__sole_tenant_config__node_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__sole_tenant_config__node_affinity

[@@@deriving.end]

type node_config__sole_tenant_config = {
  node_affinity : node_config__sole_tenant_config__node_affinity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__sole_tenant_config) -> ()

let yojson_of_node_config__sole_tenant_config =
  (function
   | { node_affinity = v_node_affinity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__sole_tenant_config__node_affinity
             v_node_affinity
         in
         ("node_affinity", arg) :: bnds
       in
       `Assoc bnds
    : node_config__sole_tenant_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__sole_tenant_config

[@@@deriving.end]

type node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
  enable_secure_boot : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__shielded_instance_config) -> ()

let yojson_of_node_config__shielded_instance_config =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_secure_boot
         in
         ("enable_secure_boot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_integrity_monitoring
         in
         ("enable_integrity_monitoring", arg) :: bnds
       in
       `Assoc bnds
    : node_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__shielded_instance_config

[@@@deriving.end]

type node_config__reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__reservation_affinity) -> ()

let yojson_of_node_config__reservation_affinity =
  (function
   | {
       consume_reservation_type = v_consume_reservation_type;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consume_reservation_type
         in
         ("consume_reservation_type", arg) :: bnds
       in
       `Assoc bnds
    : node_config__reservation_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__reservation_affinity

[@@@deriving.end]

type node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__local_nvme_ssd_block_config) -> ()

let yojson_of_node_config__local_nvme_ssd_block_config =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__local_nvme_ssd_block_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__local_nvme_ssd_block_config

[@@@deriving.end]

type node_config__linux_node_config = {
  cgroup_mode : string prop;
  sysctls : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__linux_node_config) -> ()

let yojson_of_node_config__linux_node_config =
  (function
   | { cgroup_mode = v_cgroup_mode; sysctls = v_sysctls } ->
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
             v_sysctls
         in
         ("sysctls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cgroup_mode in
         ("cgroup_mode", arg) :: bnds
       in
       `Assoc bnds
    : node_config__linux_node_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__linux_node_config

[@@@deriving.end]

type node_config__kubelet_config = {
  cpu_cfs_quota : bool prop;
  cpu_cfs_quota_period : string prop;
  cpu_manager_policy : string prop;
  pod_pids_limit : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__kubelet_config) -> ()

let yojson_of_node_config__kubelet_config =
  (function
   | {
       cpu_cfs_quota = v_cpu_cfs_quota;
       cpu_cfs_quota_period = v_cpu_cfs_quota_period;
       cpu_manager_policy = v_cpu_manager_policy;
       pod_pids_limit = v_pod_pids_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pod_pids_limit in
         ("pod_pids_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_manager_policy
         in
         ("cpu_manager_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_cfs_quota_period
         in
         ("cpu_cfs_quota_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_cpu_cfs_quota in
         ("cpu_cfs_quota", arg) :: bnds
       in
       `Assoc bnds
    : node_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__kubelet_config

[@@@deriving.end]

type node_config__host_maintenance_policy = {
  maintenance_interval : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__host_maintenance_policy) -> ()

let yojson_of_node_config__host_maintenance_policy =
  (function
   | { maintenance_interval = v_maintenance_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_interval
         in
         ("maintenance_interval", arg) :: bnds
       in
       `Assoc bnds
    : node_config__host_maintenance_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__host_maintenance_policy

[@@@deriving.end]

type node_config__gvnic = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__gvnic) -> ()

let yojson_of_node_config__gvnic =
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
    : node_config__gvnic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__gvnic

[@@@deriving.end]

type node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;
  max_shared_clients_per_gpu : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__guest_accelerator__gpu_sharing_config) -> ()

let yojson_of_node_config__guest_accelerator__gpu_sharing_config =
  (function
   | {
       gpu_sharing_strategy = v_gpu_sharing_strategy;
       max_shared_clients_per_gpu = v_max_shared_clients_per_gpu;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_shared_clients_per_gpu
         in
         ("max_shared_clients_per_gpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_sharing_strategy
         in
         ("gpu_sharing_strategy", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator__gpu_sharing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__guest_accelerator__gpu_sharing_config

[@@@deriving.end]

type node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_config__guest_accelerator__gpu_driver_installation_config) ->
  ()

let yojson_of_node_config__guest_accelerator__gpu_driver_installation_config
    =
  (function
   | { gpu_driver_version = v_gpu_driver_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_driver_version
         in
         ("gpu_driver_version", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator__gpu_driver_installation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_config__guest_accelerator__gpu_driver_installation_config

[@@@deriving.end]

type node_config__guest_accelerator = {
  count : float prop;
  gpu_driver_installation_config :
    node_config__guest_accelerator__gpu_driver_installation_config
    list;
  gpu_partition_size : string prop;
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__guest_accelerator) -> ()

let yojson_of_node_config__guest_accelerator =
  (function
   | {
       count = v_count;
       gpu_driver_installation_config =
         v_gpu_driver_installation_config;
       gpu_partition_size = v_gpu_partition_size;
       gpu_sharing_config = v_gpu_sharing_config;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__guest_accelerator__gpu_sharing_config
             v_gpu_sharing_config
         in
         ("gpu_sharing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_partition_size
         in
         ("gpu_partition_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__guest_accelerator__gpu_driver_installation_config
             v_gpu_driver_installation_config
         in
         ("gpu_driver_installation_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__guest_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__guest_accelerator

[@@@deriving.end]

type node_config__gcfs_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__gcfs_config) -> ()

let yojson_of_node_config__gcfs_config =
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
    : node_config__gcfs_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__gcfs_config

[@@@deriving.end]

type node_config__fast_socket = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__fast_socket) -> ()

let yojson_of_node_config__fast_socket =
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
    : node_config__fast_socket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__fast_socket

[@@@deriving.end]

type node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_config__ephemeral_storage_local_ssd_config) -> ()

let yojson_of_node_config__ephemeral_storage_local_ssd_config =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_config__ephemeral_storage_local_ssd_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__ephemeral_storage_local_ssd_config

[@@@deriving.end]

type node_config__effective_taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__effective_taints) -> ()

let yojson_of_node_config__effective_taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_config__effective_taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__effective_taints

[@@@deriving.end]

type node_config__confidential_nodes = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__confidential_nodes) -> ()

let yojson_of_node_config__confidential_nodes =
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
    : node_config__confidential_nodes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__confidential_nodes

[@@@deriving.end]

type node_config__advanced_machine_features = {
  threads_per_core : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config__advanced_machine_features) -> ()

let yojson_of_node_config__advanced_machine_features =
  (function
   | { threads_per_core = v_threads_per_core } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       `Assoc bnds
    : node_config__advanced_machine_features ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__advanced_machine_features

[@@@deriving.end]

type node_config = {
  advanced_machine_features :
    node_config__advanced_machine_features list;
  boot_disk_kms_key : string prop;
  confidential_nodes : node_config__confidential_nodes list;
  disk_size_gb : float prop;
  disk_type : string prop;
  effective_taints : node_config__effective_taints list;
  enable_confidential_storage : bool prop;
  ephemeral_storage_local_ssd_config :
    node_config__ephemeral_storage_local_ssd_config list;
  fast_socket : node_config__fast_socket list;
  gcfs_config : node_config__gcfs_config list;
  guest_accelerator : node_config__guest_accelerator list;
  gvnic : node_config__gvnic list;
  host_maintenance_policy :
    node_config__host_maintenance_policy list;
  image_type : string prop;
  kubelet_config : node_config__kubelet_config list;
  labels : (string * string prop) list;
  linux_node_config : node_config__linux_node_config list;
  local_nvme_ssd_block_config :
    node_config__local_nvme_ssd_block_config list;
  local_ssd_count : float prop;
  logging_variant : string prop;
  machine_type : string prop;
  metadata : (string * string prop) list;
  min_cpu_platform : string prop;
  node_group : string prop;
  oauth_scopes : string prop list;
  preemptible : bool prop;
  reservation_affinity : node_config__reservation_affinity list;
  resource_labels : (string * string prop) list;
  resource_manager_tags : (string * string prop) list;
  service_account : string prop;
  shielded_instance_config :
    node_config__shielded_instance_config list;
  sole_tenant_config : node_config__sole_tenant_config list;
  spot : bool prop;
  tags : string prop list;
  taint : node_config__taint list;
  workload_metadata_config :
    node_config__workload_metadata_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       advanced_machine_features = v_advanced_machine_features;
       boot_disk_kms_key = v_boot_disk_kms_key;
       confidential_nodes = v_confidential_nodes;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       effective_taints = v_effective_taints;
       enable_confidential_storage = v_enable_confidential_storage;
       ephemeral_storage_local_ssd_config =
         v_ephemeral_storage_local_ssd_config;
       fast_socket = v_fast_socket;
       gcfs_config = v_gcfs_config;
       guest_accelerator = v_guest_accelerator;
       gvnic = v_gvnic;
       host_maintenance_policy = v_host_maintenance_policy;
       image_type = v_image_type;
       kubelet_config = v_kubelet_config;
       labels = v_labels;
       linux_node_config = v_linux_node_config;
       local_nvme_ssd_block_config = v_local_nvme_ssd_block_config;
       local_ssd_count = v_local_ssd_count;
       logging_variant = v_logging_variant;
       machine_type = v_machine_type;
       metadata = v_metadata;
       min_cpu_platform = v_min_cpu_platform;
       node_group = v_node_group;
       oauth_scopes = v_oauth_scopes;
       preemptible = v_preemptible;
       reservation_affinity = v_reservation_affinity;
       resource_labels = v_resource_labels;
       resource_manager_tags = v_resource_manager_tags;
       service_account = v_service_account;
       shielded_instance_config = v_shielded_instance_config;
       sole_tenant_config = v_sole_tenant_config;
       spot = v_spot;
       tags = v_tags;
       taint = v_taint;
       workload_metadata_config = v_workload_metadata_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__workload_metadata_config
             v_workload_metadata_config
         in
         ("workload_metadata_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__taint v_taint
         in
         ("taint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_spot in
         ("spot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__sole_tenant_config
             v_sole_tenant_config
         in
         ("sole_tenant_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__shielded_instance_config
             v_shielded_instance_config
         in
         ("shielded_instance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resource_manager_tags
         in
         ("resource_manager_tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resource_labels
         in
         ("resource_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__reservation_affinity
             v_reservation_affinity
         in
         ("reservation_affinity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preemptible in
         ("preemptible", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_group in
         ("node_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_cpu_platform
         in
         ("min_cpu_platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logging_variant
         in
         ("logging_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__local_nvme_ssd_block_config
             v_local_nvme_ssd_block_config
         in
         ("local_nvme_ssd_block_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__linux_node_config
             v_linux_node_config
         in
         ("linux_node_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__kubelet_config
             v_kubelet_config
         in
         ("kubelet_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_type in
         ("image_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__host_maintenance_policy
             v_host_maintenance_policy
         in
         ("host_maintenance_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__gvnic v_gvnic
         in
         ("gvnic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__guest_accelerator
             v_guest_accelerator
         in
         ("guest_accelerator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__gcfs_config
             v_gcfs_config
         in
         ("gcfs_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__fast_socket
             v_fast_socket
         in
         ("fast_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__ephemeral_storage_local_ssd_config
             v_ephemeral_storage_local_ssd_config
         in
         ("ephemeral_storage_local_ssd_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_confidential_storage
         in
         ("enable_confidential_storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__effective_taints
             v_effective_taints
         in
         ("effective_taints", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config__confidential_nodes
             v_confidential_nodes
         in
         ("confidential_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_boot_disk_kms_key
         in
         ("boot_disk_kms_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_config__advanced_machine_features
             v_advanced_machine_features
         in
         ("advanced_machine_features", arg) :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

[@@@deriving.end]

type node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop;
  batch_percentage : float prop;
  batch_soak_duration : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy) ->
  ()

let yojson_of_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    =
  (function
   | {
       batch_node_count = v_batch_node_count;
       batch_percentage = v_batch_percentage;
       batch_soak_duration = v_batch_soak_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_batch_soak_duration
         in
         ("batch_soak_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_batch_percentage
         in
         ("batch_percentage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_batch_node_count
         in
         ("batch_node_count", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

[@@@deriving.end]

type node_pool__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop;
  standard_rollout_policy :
    node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__upgrade_settings__blue_green_settings) -> ()

let yojson_of_node_pool__upgrade_settings__blue_green_settings =
  (function
   | {
       node_pool_soak_duration = v_node_pool_soak_duration;
       standard_rollout_policy = v_standard_rollout_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
             v_standard_rollout_policy
         in
         ("standard_rollout_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_pool_soak_duration
         in
         ("node_pool_soak_duration", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings__blue_green_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__upgrade_settings__blue_green_settings

[@@@deriving.end]

type node_pool__upgrade_settings = {
  blue_green_settings :
    node_pool__upgrade_settings__blue_green_settings list;
  max_surge : float prop;
  max_unavailable : float prop;
  strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__upgrade_settings) -> ()

let yojson_of_node_pool__upgrade_settings =
  (function
   | {
       blue_green_settings = v_blue_green_settings;
       max_surge = v_max_surge;
       max_unavailable = v_max_unavailable;
       strategy = v_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_strategy in
         ("strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_unavailable
         in
         ("max_unavailable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_surge in
         ("max_surge", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__upgrade_settings__blue_green_settings
             v_blue_green_settings
         in
         ("blue_green_settings", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__upgrade_settings

[@@@deriving.end]

type node_pool__placement_policy = {
  policy_name : string prop;
  tpu_topology : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__placement_policy) -> ()

let yojson_of_node_pool__placement_policy =
  (function
   | {
       policy_name = v_policy_name;
       tpu_topology = v_tpu_topology;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tpu_topology in
         ("tpu_topology", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__placement_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__placement_policy

[@@@deriving.end]

type node_pool__node_config__workload_metadata_config = {
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__workload_metadata_config) -> ()

let yojson_of_node_pool__node_config__workload_metadata_config =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__workload_metadata_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__workload_metadata_config

[@@@deriving.end]

type node_pool__node_config__taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__taint) -> ()

let yojson_of_node_pool__node_config__taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__taint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__taint

[@@@deriving.end]

type node_pool__node_config__sole_tenant_config__node_affinity = {
  key : string prop;
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__sole_tenant_config__node_affinity) ->
  ()

let yojson_of_node_pool__node_config__sole_tenant_config__node_affinity
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__sole_tenant_config__node_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__node_config__sole_tenant_config__node_affinity

[@@@deriving.end]

type node_pool__node_config__sole_tenant_config = {
  node_affinity :
    node_pool__node_config__sole_tenant_config__node_affinity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__sole_tenant_config) -> ()

let yojson_of_node_pool__node_config__sole_tenant_config =
  (function
   | { node_affinity = v_node_affinity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__sole_tenant_config__node_affinity
             v_node_affinity
         in
         ("node_affinity", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__sole_tenant_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__sole_tenant_config

[@@@deriving.end]

type node_pool__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
  enable_secure_boot : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__shielded_instance_config) -> ()

let yojson_of_node_pool__node_config__shielded_instance_config =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_secure_boot
         in
         ("enable_secure_boot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_integrity_monitoring
         in
         ("enable_integrity_monitoring", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__shielded_instance_config

[@@@deriving.end]

type node_pool__node_config__reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__reservation_affinity) -> ()

let yojson_of_node_pool__node_config__reservation_affinity =
  (function
   | {
       consume_reservation_type = v_consume_reservation_type;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consume_reservation_type
         in
         ("consume_reservation_type", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__reservation_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__reservation_affinity

[@@@deriving.end]

type node_pool__node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__local_nvme_ssd_block_config) -> ()

let yojson_of_node_pool__node_config__local_nvme_ssd_block_config =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__local_nvme_ssd_block_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__local_nvme_ssd_block_config

[@@@deriving.end]

type node_pool__node_config__linux_node_config = {
  cgroup_mode : string prop;
  sysctls : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__linux_node_config) -> ()

let yojson_of_node_pool__node_config__linux_node_config =
  (function
   | { cgroup_mode = v_cgroup_mode; sysctls = v_sysctls } ->
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
             v_sysctls
         in
         ("sysctls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cgroup_mode in
         ("cgroup_mode", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__linux_node_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__linux_node_config

[@@@deriving.end]

type node_pool__node_config__kubelet_config = {
  cpu_cfs_quota : bool prop;
  cpu_cfs_quota_period : string prop;
  cpu_manager_policy : string prop;
  pod_pids_limit : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__kubelet_config) -> ()

let yojson_of_node_pool__node_config__kubelet_config =
  (function
   | {
       cpu_cfs_quota = v_cpu_cfs_quota;
       cpu_cfs_quota_period = v_cpu_cfs_quota_period;
       cpu_manager_policy = v_cpu_manager_policy;
       pod_pids_limit = v_pod_pids_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pod_pids_limit in
         ("pod_pids_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_manager_policy
         in
         ("cpu_manager_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_cfs_quota_period
         in
         ("cpu_cfs_quota_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_cpu_cfs_quota in
         ("cpu_cfs_quota", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__kubelet_config

[@@@deriving.end]

type node_pool__node_config__host_maintenance_policy = {
  maintenance_interval : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__host_maintenance_policy) -> ()

let yojson_of_node_pool__node_config__host_maintenance_policy =
  (function
   | { maintenance_interval = v_maintenance_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_interval
         in
         ("maintenance_interval", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__host_maintenance_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__host_maintenance_policy

[@@@deriving.end]

type node_pool__node_config__gvnic = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__gvnic) -> ()

let yojson_of_node_pool__node_config__gvnic =
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
    : node_pool__node_config__gvnic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__gvnic

[@@@deriving.end]

type node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;
  max_shared_clients_per_gpu : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_pool__node_config__guest_accelerator__gpu_sharing_config) ->
  ()

let yojson_of_node_pool__node_config__guest_accelerator__gpu_sharing_config
    =
  (function
   | {
       gpu_sharing_strategy = v_gpu_sharing_strategy;
       max_shared_clients_per_gpu = v_max_shared_clients_per_gpu;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_shared_clients_per_gpu
         in
         ("max_shared_clients_per_gpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_sharing_strategy
         in
         ("gpu_sharing_strategy", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__guest_accelerator__gpu_sharing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__node_config__guest_accelerator__gpu_sharing_config

[@@@deriving.end]

type node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_pool__node_config__guest_accelerator__gpu_driver_installation_config) ->
  ()

let yojson_of_node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    =
  (function
   | { gpu_driver_version = v_gpu_driver_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_driver_version
         in
         ("gpu_driver_version", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__guest_accelerator__gpu_driver_installation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__node_config__guest_accelerator__gpu_driver_installation_config

[@@@deriving.end]

type node_pool__node_config__guest_accelerator = {
  count : float prop;
  gpu_driver_installation_config :
    node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
  gpu_partition_size : string prop;
  gpu_sharing_config :
    node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__guest_accelerator) -> ()

let yojson_of_node_pool__node_config__guest_accelerator =
  (function
   | {
       count = v_count;
       gpu_driver_installation_config =
         v_gpu_driver_installation_config;
       gpu_partition_size = v_gpu_partition_size;
       gpu_sharing_config = v_gpu_sharing_config;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__guest_accelerator__gpu_sharing_config
             v_gpu_sharing_config
         in
         ("gpu_sharing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_partition_size
         in
         ("gpu_partition_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__guest_accelerator__gpu_driver_installation_config
             v_gpu_driver_installation_config
         in
         ("gpu_driver_installation_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__guest_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__guest_accelerator

[@@@deriving.end]

type node_pool__node_config__gcfs_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__gcfs_config) -> ()

let yojson_of_node_pool__node_config__gcfs_config =
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
    : node_pool__node_config__gcfs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__gcfs_config

[@@@deriving.end]

type node_pool__node_config__fast_socket = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__fast_socket) -> ()

let yojson_of_node_pool__node_config__fast_socket =
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
    : node_pool__node_config__fast_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__fast_socket

[@@@deriving.end]

type node_pool__node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__ephemeral_storage_local_ssd_config) ->
  ()

let yojson_of_node_pool__node_config__ephemeral_storage_local_ssd_config
    =
  (function
   | { local_ssd_count = v_local_ssd_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__ephemeral_storage_local_ssd_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__node_config__ephemeral_storage_local_ssd_config

[@@@deriving.end]

type node_pool__node_config__effective_taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__effective_taints) -> ()

let yojson_of_node_pool__node_config__effective_taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__effective_taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__effective_taints

[@@@deriving.end]

type node_pool__node_config__confidential_nodes = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config__confidential_nodes) -> ()

let yojson_of_node_pool__node_config__confidential_nodes =
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
    : node_pool__node_config__confidential_nodes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__confidential_nodes

[@@@deriving.end]

type node_pool__node_config__advanced_machine_features = {
  threads_per_core : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__node_config__advanced_machine_features) -> ()

let yojson_of_node_pool__node_config__advanced_machine_features =
  (function
   | { threads_per_core = v_threads_per_core } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__advanced_machine_features ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__advanced_machine_features

[@@@deriving.end]

type node_pool__node_config = {
  advanced_machine_features :
    node_pool__node_config__advanced_machine_features list;
  boot_disk_kms_key : string prop;
  confidential_nodes :
    node_pool__node_config__confidential_nodes list;
  disk_size_gb : float prop;
  disk_type : string prop;
  effective_taints : node_pool__node_config__effective_taints list;
  enable_confidential_storage : bool prop;
  ephemeral_storage_local_ssd_config :
    node_pool__node_config__ephemeral_storage_local_ssd_config list;
  fast_socket : node_pool__node_config__fast_socket list;
  gcfs_config : node_pool__node_config__gcfs_config list;
  guest_accelerator : node_pool__node_config__guest_accelerator list;
  gvnic : node_pool__node_config__gvnic list;
  host_maintenance_policy :
    node_pool__node_config__host_maintenance_policy list;
  image_type : string prop;
  kubelet_config : node_pool__node_config__kubelet_config list;
  labels : (string * string prop) list;
  linux_node_config : node_pool__node_config__linux_node_config list;
  local_nvme_ssd_block_config :
    node_pool__node_config__local_nvme_ssd_block_config list;
  local_ssd_count : float prop;
  logging_variant : string prop;
  machine_type : string prop;
  metadata : (string * string prop) list;
  min_cpu_platform : string prop;
  node_group : string prop;
  oauth_scopes : string prop list;
  preemptible : bool prop;
  reservation_affinity :
    node_pool__node_config__reservation_affinity list;
  resource_labels : (string * string prop) list;
  resource_manager_tags : (string * string prop) list;
  service_account : string prop;
  shielded_instance_config :
    node_pool__node_config__shielded_instance_config list;
  sole_tenant_config :
    node_pool__node_config__sole_tenant_config list;
  spot : bool prop;
  tags : string prop list;
  taint : node_pool__node_config__taint list;
  workload_metadata_config :
    node_pool__node_config__workload_metadata_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config) -> ()

let yojson_of_node_pool__node_config =
  (function
   | {
       advanced_machine_features = v_advanced_machine_features;
       boot_disk_kms_key = v_boot_disk_kms_key;
       confidential_nodes = v_confidential_nodes;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       effective_taints = v_effective_taints;
       enable_confidential_storage = v_enable_confidential_storage;
       ephemeral_storage_local_ssd_config =
         v_ephemeral_storage_local_ssd_config;
       fast_socket = v_fast_socket;
       gcfs_config = v_gcfs_config;
       guest_accelerator = v_guest_accelerator;
       gvnic = v_gvnic;
       host_maintenance_policy = v_host_maintenance_policy;
       image_type = v_image_type;
       kubelet_config = v_kubelet_config;
       labels = v_labels;
       linux_node_config = v_linux_node_config;
       local_nvme_ssd_block_config = v_local_nvme_ssd_block_config;
       local_ssd_count = v_local_ssd_count;
       logging_variant = v_logging_variant;
       machine_type = v_machine_type;
       metadata = v_metadata;
       min_cpu_platform = v_min_cpu_platform;
       node_group = v_node_group;
       oauth_scopes = v_oauth_scopes;
       preemptible = v_preemptible;
       reservation_affinity = v_reservation_affinity;
       resource_labels = v_resource_labels;
       resource_manager_tags = v_resource_manager_tags;
       service_account = v_service_account;
       shielded_instance_config = v_shielded_instance_config;
       sole_tenant_config = v_sole_tenant_config;
       spot = v_spot;
       tags = v_tags;
       taint = v_taint;
       workload_metadata_config = v_workload_metadata_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__workload_metadata_config
             v_workload_metadata_config
         in
         ("workload_metadata_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__node_config__taint
             v_taint
         in
         ("taint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_spot in
         ("spot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__sole_tenant_config
             v_sole_tenant_config
         in
         ("sole_tenant_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__shielded_instance_config
             v_shielded_instance_config
         in
         ("shielded_instance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resource_manager_tags
         in
         ("resource_manager_tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resource_labels
         in
         ("resource_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__reservation_affinity
             v_reservation_affinity
         in
         ("reservation_affinity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preemptible in
         ("preemptible", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_group in
         ("node_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_cpu_platform
         in
         ("min_cpu_platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logging_variant
         in
         ("logging_variant", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_local_ssd_count
         in
         ("local_ssd_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__local_nvme_ssd_block_config
             v_local_nvme_ssd_block_config
         in
         ("local_nvme_ssd_block_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__linux_node_config
             v_linux_node_config
         in
         ("linux_node_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__kubelet_config
             v_kubelet_config
         in
         ("kubelet_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_type in
         ("image_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__host_maintenance_policy
             v_host_maintenance_policy
         in
         ("host_maintenance_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__node_config__gvnic
             v_gvnic
         in
         ("gvnic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__guest_accelerator
             v_guest_accelerator
         in
         ("guest_accelerator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__gcfs_config
             v_gcfs_config
         in
         ("gcfs_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__fast_socket
             v_fast_socket
         in
         ("fast_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__ephemeral_storage_local_ssd_config
             v_ephemeral_storage_local_ssd_config
         in
         ("ephemeral_storage_local_ssd_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_confidential_storage
         in
         ("enable_confidential_storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__effective_taints
             v_effective_taints
         in
         ("effective_taints", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__confidential_nodes
             v_confidential_nodes
         in
         ("confidential_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_boot_disk_kms_key
         in
         ("boot_disk_kms_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__node_config__advanced_machine_features
             v_advanced_machine_features
         in
         ("advanced_machine_features", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config

[@@@deriving.end]

type node_pool__network_config__pod_cidr_overprovision_config = {
  disabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__network_config__pod_cidr_overprovision_config) ->
  ()

let yojson_of_node_pool__network_config__pod_cidr_overprovision_config
    =
  (function
   | { disabled = v_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__network_config__pod_cidr_overprovision_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__network_config__pod_cidr_overprovision_config

[@@@deriving.end]

type node_pool__network_config__network_performance_config = {
  total_egress_bandwidth_tier : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_pool__network_config__network_performance_config) ->
  ()

let yojson_of_node_pool__network_config__network_performance_config =
  (function
   | { total_egress_bandwidth_tier = v_total_egress_bandwidth_tier }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_total_egress_bandwidth_tier
         in
         ("total_egress_bandwidth_tier", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__network_config__network_performance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__network_config__network_performance_config

[@@@deriving.end]

type node_pool__network_config = {
  create_pod_range : bool prop;
  enable_private_nodes : bool prop;
  network_performance_config :
    node_pool__network_config__network_performance_config list;
  pod_cidr_overprovision_config :
    node_pool__network_config__pod_cidr_overprovision_config list;
  pod_ipv4_cidr_block : string prop;
  pod_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__network_config) -> ()

let yojson_of_node_pool__network_config =
  (function
   | {
       create_pod_range = v_create_pod_range;
       enable_private_nodes = v_enable_private_nodes;
       network_performance_config = v_network_performance_config;
       pod_cidr_overprovision_config =
         v_pod_cidr_overprovision_config;
       pod_ipv4_cidr_block = v_pod_ipv4_cidr_block;
       pod_range = v_pod_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pod_range in
         ("pod_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pod_ipv4_cidr_block
         in
         ("pod_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__network_config__pod_cidr_overprovision_config
             v_pod_cidr_overprovision_config
         in
         ("pod_cidr_overprovision_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool__network_config__network_performance_config
             v_network_performance_config
         in
         ("network_performance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_private_nodes
         in
         ("enable_private_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_create_pod_range
         in
         ("create_pod_range", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__network_config

[@@@deriving.end]

type node_pool__management = {
  auto_repair : bool prop;
  auto_upgrade : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__management) -> ()

let yojson_of_node_pool__management =
  (function
   | { auto_repair = v_auto_repair; auto_upgrade = v_auto_upgrade }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_upgrade in
         ("auto_upgrade", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_repair in
         ("auto_repair", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__management

[@@@deriving.end]

type node_pool__autoscaling = {
  location_policy : string prop;
  max_node_count : float prop;
  min_node_count : float prop;
  total_max_node_count : float prop;
  total_min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__autoscaling) -> ()

let yojson_of_node_pool__autoscaling =
  (function
   | {
       location_policy = v_location_policy;
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
       total_max_node_count = v_total_max_node_count;
       total_min_node_count = v_total_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_min_node_count
         in
         ("total_min_node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_max_node_count
         in
         ("total_max_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_location_policy
         in
         ("location_policy", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__autoscaling

[@@@deriving.end]

type node_pool = {
  autoscaling : node_pool__autoscaling list;
  initial_node_count : float prop;
  instance_group_urls : string prop list;
  managed_instance_group_urls : string prop list;
  management : node_pool__management list;
  max_pods_per_node : float prop;
  name : string prop;
  name_prefix : string prop;
  network_config : node_pool__network_config list;
  node_config : node_pool__node_config list;
  node_count : float prop;
  node_locations : string prop list;
  placement_policy : node_pool__placement_policy list;
  upgrade_settings : node_pool__upgrade_settings list;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool) -> ()

let yojson_of_node_pool =
  (function
   | {
       autoscaling = v_autoscaling;
       initial_node_count = v_initial_node_count;
       instance_group_urls = v_instance_group_urls;
       managed_instance_group_urls = v_managed_instance_group_urls;
       management = v_management;
       max_pods_per_node = v_max_pods_per_node;
       name = v_name;
       name_prefix = v_name_prefix;
       network_config = v_network_config;
       node_config = v_node_config;
       node_count = v_node_count;
       node_locations = v_node_locations;
       placement_policy = v_placement_policy;
       upgrade_settings = v_upgrade_settings;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__upgrade_settings
             v_upgrade_settings
         in
         ("upgrade_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__placement_policy
             v_placement_policy
         in
         ("placement_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_node_locations
         in
         ("node_locations", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__node_config
             v_node_config
         in
         ("node_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__network_config
             v_network_config
         in
         ("network_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name_prefix in
         ("name_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_pods_per_node
         in
         ("max_pods_per_node", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__management
             v_management
         in
         ("management", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_managed_instance_group_urls
         in
         ("managed_instance_group_urls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_instance_group_urls
         in
         ("instance_group_urls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_node_count
         in
         ("initial_node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__autoscaling
             v_autoscaling
         in
         ("autoscaling", arg) :: bnds
       in
       `Assoc bnds
    : node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool

[@@@deriving.end]

type node_pool_auto_config__network_tags = {
  tags : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool_auto_config__network_tags) -> ()

let yojson_of_node_pool_auto_config__network_tags =
  (function
   | { tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
       in
       `Assoc bnds
    : node_pool_auto_config__network_tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_auto_config__network_tags

[@@@deriving.end]

type node_pool_auto_config = {
  network_tags : node_pool_auto_config__network_tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool_auto_config) -> ()

let yojson_of_node_pool_auto_config =
  (function
   | { network_tags = v_network_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool_auto_config__network_tags
             v_network_tags
         in
         ("network_tags", arg) :: bnds
       in
       `Assoc bnds
    : node_pool_auto_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_auto_config

[@@@deriving.end]

type node_pool_defaults__node_config_defaults = {
  logging_variant : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool_defaults__node_config_defaults) -> ()

let yojson_of_node_pool_defaults__node_config_defaults =
  (function
   | { logging_variant = v_logging_variant } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logging_variant
         in
         ("logging_variant", arg) :: bnds
       in
       `Assoc bnds
    : node_pool_defaults__node_config_defaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_defaults__node_config_defaults

[@@@deriving.end]

type node_pool_defaults = {
  node_config_defaults :
    node_pool_defaults__node_config_defaults list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool_defaults) -> ()

let yojson_of_node_pool_defaults =
  (function
   | { node_config_defaults = v_node_config_defaults } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_pool_defaults__node_config_defaults
             v_node_config_defaults
         in
         ("node_config_defaults", arg) :: bnds
       in
       `Assoc bnds
    : node_pool_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_defaults

[@@@deriving.end]

type notification_config__pubsub__filter = {
  event_type : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config__pubsub__filter) -> ()

let yojson_of_notification_config__pubsub__filter =
  (function
   | { event_type = v_event_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_event_type
         in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : notification_config__pubsub__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config__pubsub__filter

[@@@deriving.end]

type notification_config__pubsub = {
  enabled : bool prop;
  filter : notification_config__pubsub__filter list;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config__pubsub) -> ()

let yojson_of_notification_config__pubsub =
  (function
   | { enabled = v_enabled; filter = v_filter; topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_notification_config__pubsub__filter v_filter
         in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : notification_config__pubsub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config__pubsub

[@@@deriving.end]

type notification_config = {
  pubsub : notification_config__pubsub list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config) -> ()

let yojson_of_notification_config =
  (function
   | { pubsub = v_pubsub } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notification_config__pubsub
             v_pubsub
         in
         ("pubsub", arg) :: bnds
       in
       `Assoc bnds
    : notification_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config

[@@@deriving.end]

type private_cluster_config__master_global_access_config = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : private_cluster_config__master_global_access_config) -> ()

let yojson_of_private_cluster_config__master_global_access_config =
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
    : private_cluster_config__master_global_access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_cluster_config__master_global_access_config

[@@@deriving.end]

type private_cluster_config = {
  enable_private_endpoint : bool prop;
  enable_private_nodes : bool prop;
  master_global_access_config :
    private_cluster_config__master_global_access_config list;
  master_ipv4_cidr_block : string prop;
  peering_name : string prop;
  private_endpoint : string prop;
  private_endpoint_subnetwork : string prop;
  public_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_cluster_config) -> ()

let yojson_of_private_cluster_config =
  (function
   | {
       enable_private_endpoint = v_enable_private_endpoint;
       enable_private_nodes = v_enable_private_nodes;
       master_global_access_config = v_master_global_access_config;
       master_ipv4_cidr_block = v_master_ipv4_cidr_block;
       peering_name = v_peering_name;
       private_endpoint = v_private_endpoint;
       private_endpoint_subnetwork = v_private_endpoint_subnetwork;
       public_endpoint = v_public_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_endpoint
         in
         ("public_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_endpoint_subnetwork
         in
         ("private_endpoint_subnetwork", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_endpoint
         in
         ("private_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peering_name in
         ("peering_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_ipv4_cidr_block
         in
         ("master_ipv4_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_private_cluster_config__master_global_access_config
             v_master_global_access_config
         in
         ("master_global_access_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_private_nodes
         in
         ("enable_private_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_private_endpoint
         in
         ("enable_private_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : private_cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_cluster_config

[@@@deriving.end]

type release_channel = { channel : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : release_channel) -> ()

let yojson_of_release_channel =
  (function
   | { channel = v_channel } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel in
         ("channel", arg) :: bnds
       in
       `Assoc bnds
    : release_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_release_channel

[@@@deriving.end]

type resource_usage_export_config__bigquery_destination = {
  dataset_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : resource_usage_export_config__bigquery_destination) -> ()

let yojson_of_resource_usage_export_config__bigquery_destination =
  (function
   | { dataset_id = v_dataset_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : resource_usage_export_config__bigquery_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_usage_export_config__bigquery_destination

[@@@deriving.end]

type resource_usage_export_config = {
  bigquery_destination :
    resource_usage_export_config__bigquery_destination list;
  enable_network_egress_metering : bool prop;
  enable_resource_consumption_metering : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_usage_export_config) -> ()

let yojson_of_resource_usage_export_config =
  (function
   | {
       bigquery_destination = v_bigquery_destination;
       enable_network_egress_metering =
         v_enable_network_egress_metering;
       enable_resource_consumption_metering =
         v_enable_resource_consumption_metering;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_resource_consumption_metering
         in
         ("enable_resource_consumption_metering", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_network_egress_metering
         in
         ("enable_network_egress_metering", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_resource_usage_export_config__bigquery_destination
             v_bigquery_destination
         in
         ("bigquery_destination", arg) :: bnds
       in
       `Assoc bnds
    : resource_usage_export_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_usage_export_config

[@@@deriving.end]

type security_posture_config = {
  mode : string prop;
  vulnerability_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_posture_config) -> ()

let yojson_of_security_posture_config =
  (function
   | { mode = v_mode; vulnerability_mode = v_vulnerability_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vulnerability_mode
         in
         ("vulnerability_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : security_posture_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_posture_config

[@@@deriving.end]

type service_external_ips_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_external_ips_config) -> ()

let yojson_of_service_external_ips_config =
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
    : service_external_ips_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_external_ips_config

[@@@deriving.end]

type vertical_pod_autoscaling = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : vertical_pod_autoscaling) -> ()

let yojson_of_vertical_pod_autoscaling =
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
    : vertical_pod_autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vertical_pod_autoscaling

[@@@deriving.end]

type workload_identity_config = { workload_pool : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_identity_config) -> ()

let yojson_of_workload_identity_config =
  (function
   | { workload_pool = v_workload_pool } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_pool in
         ("workload_pool", arg) :: bnds
       in
       `Assoc bnds
    : workload_identity_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_identity_config

[@@@deriving.end]

type google_container_cluster = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_cluster) -> ()

let yojson_of_google_container_cluster =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_cluster

[@@@deriving.end]

let google_container_cluster ?id ?location ?project ~name () :
    google_container_cluster =
  { id; location; name; project }

type t = {
  addons_config : addons_config list prop;
  allow_net_admin : bool prop;
  authenticator_groups_config :
    authenticator_groups_config list prop;
  binary_authorization : binary_authorization list prop;
  cluster_autoscaling : cluster_autoscaling list prop;
  cluster_ipv4_cidr : string prop;
  confidential_nodes : confidential_nodes list prop;
  cost_management_config : cost_management_config list prop;
  database_encryption : database_encryption list prop;
  datapath_provider : string prop;
  default_max_pods_per_node : float prop;
  default_snat_status : default_snat_status list prop;
  deletion_protection : bool prop;
  description : string prop;
  dns_config : dns_config list prop;
  enable_autopilot : bool prop;
  enable_intranode_visibility : bool prop;
  enable_k8s_beta_apis : enable_k8s_beta_apis list prop;
  enable_kubernetes_alpha : bool prop;
  enable_l4_ilb_subsetting : bool prop;
  enable_legacy_abac : bool prop;
  enable_shielded_nodes : bool prop;
  enable_tpu : bool prop;
  endpoint : string prop;
  fleet : fleet list prop;
  gateway_api_config : gateway_api_config list prop;
  id : string prop;
  identity_service_config : identity_service_config list prop;
  initial_node_count : float prop;
  ip_allocation_policy : ip_allocation_policy list prop;
  label_fingerprint : string prop;
  location : string prop;
  logging_config : logging_config list prop;
  logging_service : string prop;
  maintenance_policy : maintenance_policy list prop;
  master_auth : master_auth list prop;
  master_authorized_networks_config :
    master_authorized_networks_config list prop;
  master_version : string prop;
  mesh_certificates : mesh_certificates list prop;
  min_master_version : string prop;
  monitoring_config : monitoring_config list prop;
  monitoring_service : string prop;
  name : string prop;
  network : string prop;
  network_policy : network_policy list prop;
  networking_mode : string prop;
  node_config : node_config list prop;
  node_locations : string list prop;
  node_pool : node_pool list prop;
  node_pool_auto_config : node_pool_auto_config list prop;
  node_pool_defaults : node_pool_defaults list prop;
  node_version : string prop;
  notification_config : notification_config list prop;
  operation : string prop;
  private_cluster_config : private_cluster_config list prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  release_channel : release_channel list prop;
  remove_default_node_pool : bool prop;
  resource_labels : (string * string) list prop;
  resource_usage_export_config :
    resource_usage_export_config list prop;
  security_posture_config : security_posture_config list prop;
  self_link : string prop;
  service_external_ips_config :
    service_external_ips_config list prop;
  services_ipv4_cidr : string prop;
  subnetwork : string prop;
  tpu_ipv4_cidr_block : string prop;
  vertical_pod_autoscaling : vertical_pod_autoscaling list prop;
  workload_identity_config : workload_identity_config list prop;
}

let make ?id ?location ?project ~name __id =
  let __type = "google_container_cluster" in
  let __attrs =
    ({
       addons_config = Prop.computed __type __id "addons_config";
       allow_net_admin = Prop.computed __type __id "allow_net_admin";
       authenticator_groups_config =
         Prop.computed __type __id "authenticator_groups_config";
       binary_authorization =
         Prop.computed __type __id "binary_authorization";
       cluster_autoscaling =
         Prop.computed __type __id "cluster_autoscaling";
       cluster_ipv4_cidr =
         Prop.computed __type __id "cluster_ipv4_cidr";
       confidential_nodes =
         Prop.computed __type __id "confidential_nodes";
       cost_management_config =
         Prop.computed __type __id "cost_management_config";
       database_encryption =
         Prop.computed __type __id "database_encryption";
       datapath_provider =
         Prop.computed __type __id "datapath_provider";
       default_max_pods_per_node =
         Prop.computed __type __id "default_max_pods_per_node";
       default_snat_status =
         Prop.computed __type __id "default_snat_status";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       description = Prop.computed __type __id "description";
       dns_config = Prop.computed __type __id "dns_config";
       enable_autopilot =
         Prop.computed __type __id "enable_autopilot";
       enable_intranode_visibility =
         Prop.computed __type __id "enable_intranode_visibility";
       enable_k8s_beta_apis =
         Prop.computed __type __id "enable_k8s_beta_apis";
       enable_kubernetes_alpha =
         Prop.computed __type __id "enable_kubernetes_alpha";
       enable_l4_ilb_subsetting =
         Prop.computed __type __id "enable_l4_ilb_subsetting";
       enable_legacy_abac =
         Prop.computed __type __id "enable_legacy_abac";
       enable_shielded_nodes =
         Prop.computed __type __id "enable_shielded_nodes";
       enable_tpu = Prop.computed __type __id "enable_tpu";
       endpoint = Prop.computed __type __id "endpoint";
       fleet = Prop.computed __type __id "fleet";
       gateway_api_config =
         Prop.computed __type __id "gateway_api_config";
       id = Prop.computed __type __id "id";
       identity_service_config =
         Prop.computed __type __id "identity_service_config";
       initial_node_count =
         Prop.computed __type __id "initial_node_count";
       ip_allocation_policy =
         Prop.computed __type __id "ip_allocation_policy";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       location = Prop.computed __type __id "location";
       logging_config = Prop.computed __type __id "logging_config";
       logging_service = Prop.computed __type __id "logging_service";
       maintenance_policy =
         Prop.computed __type __id "maintenance_policy";
       master_auth = Prop.computed __type __id "master_auth";
       master_authorized_networks_config =
         Prop.computed __type __id
           "master_authorized_networks_config";
       master_version = Prop.computed __type __id "master_version";
       mesh_certificates =
         Prop.computed __type __id "mesh_certificates";
       min_master_version =
         Prop.computed __type __id "min_master_version";
       monitoring_config =
         Prop.computed __type __id "monitoring_config";
       monitoring_service =
         Prop.computed __type __id "monitoring_service";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_policy = Prop.computed __type __id "network_policy";
       networking_mode = Prop.computed __type __id "networking_mode";
       node_config = Prop.computed __type __id "node_config";
       node_locations = Prop.computed __type __id "node_locations";
       node_pool = Prop.computed __type __id "node_pool";
       node_pool_auto_config =
         Prop.computed __type __id "node_pool_auto_config";
       node_pool_defaults =
         Prop.computed __type __id "node_pool_defaults";
       node_version = Prop.computed __type __id "node_version";
       notification_config =
         Prop.computed __type __id "notification_config";
       operation = Prop.computed __type __id "operation";
       private_cluster_config =
         Prop.computed __type __id "private_cluster_config";
       private_ipv6_google_access =
         Prop.computed __type __id "private_ipv6_google_access";
       project = Prop.computed __type __id "project";
       release_channel = Prop.computed __type __id "release_channel";
       remove_default_node_pool =
         Prop.computed __type __id "remove_default_node_pool";
       resource_labels = Prop.computed __type __id "resource_labels";
       resource_usage_export_config =
         Prop.computed __type __id "resource_usage_export_config";
       security_posture_config =
         Prop.computed __type __id "security_posture_config";
       self_link = Prop.computed __type __id "self_link";
       service_external_ips_config =
         Prop.computed __type __id "service_external_ips_config";
       services_ipv4_cidr =
         Prop.computed __type __id "services_ipv4_cidr";
       subnetwork = Prop.computed __type __id "subnetwork";
       tpu_ipv4_cidr_block =
         Prop.computed __type __id "tpu_ipv4_cidr_block";
       vertical_pod_autoscaling =
         Prop.computed __type __id "vertical_pod_autoscaling";
       workload_identity_config =
         Prop.computed __type __id "workload_identity_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_cluster
        (google_container_cluster ?id ?location ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
