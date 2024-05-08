(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addons_config__cloudrun_config = {
  disabled : bool prop;
  load_balancer_type : string prop option; [@option]
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
         match v_load_balancer_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_type", arg in
             bnd :: bnds
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

type addons_config = {
  cloudrun_config : addons_config__cloudrun_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  config_connector_config :
    addons_config__config_connector_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_cache_config : addons_config__dns_cache_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gce_persistent_disk_csi_driver_config :
    addons_config__gce_persistent_disk_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcp_filestore_csi_driver_config :
    addons_config__gcp_filestore_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcs_fuse_csi_driver_config :
    addons_config__gcs_fuse_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gke_backup_agent_config :
    addons_config__gke_backup_agent_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  horizontal_pod_autoscaling :
    addons_config__horizontal_pod_autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_load_balancing : addons_config__http_load_balancing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_policy_config : addons_config__network_policy_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_network_policy_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__network_policy_config)
               v_network_policy_config
           in
           let bnd = "network_policy_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_load_balancing then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__http_load_balancing)
               v_http_load_balancing
           in
           let bnd = "http_load_balancing", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_horizontal_pod_autoscaling then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__horizontal_pod_autoscaling)
               v_horizontal_pod_autoscaling
           in
           let bnd = "horizontal_pod_autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gke_backup_agent_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__gke_backup_agent_config)
               v_gke_backup_agent_config
           in
           let bnd = "gke_backup_agent_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_fuse_csi_driver_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__gcs_fuse_csi_driver_config)
               v_gcs_fuse_csi_driver_config
           in
           let bnd = "gcs_fuse_csi_driver_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcp_filestore_csi_driver_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__gcp_filestore_csi_driver_config)
               v_gcp_filestore_csi_driver_config
           in
           let bnd = "gcp_filestore_csi_driver_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gce_persistent_disk_csi_driver_config
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__gce_persistent_disk_csi_driver_config)
               v_gce_persistent_disk_csi_driver_config
           in
           let bnd = "gce_persistent_disk_csi_driver_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_cache_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__dns_cache_config)
               v_dns_cache_config
           in
           let bnd = "dns_cache_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config_connector_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_addons_config__config_connector_config)
               v_config_connector_config
           in
           let bnd = "config_connector_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudrun_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_addons_config__cloudrun_config)
               v_cloudrun_config
           in
           let bnd = "cloudrun_config", arg in
           bnd :: bnds
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
  enabled : bool prop option; [@option]
  evaluation_mode : string prop option; [@option]
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
         match v_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_mode", arg in
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
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

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
  auto_repair : bool prop option; [@option]
  auto_upgrade : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_autoscaling__auto_provisioning_defaults__management) ->
  ()

let yojson_of_cluster_autoscaling__auto_provisioning_defaults__management
    =
  (function
   | { auto_repair = v_auto_repair; auto_upgrade = v_auto_upgrade }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_auto_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_repair", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__management ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__management

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
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
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
  batch_percentage : float prop option; [@option]
  batch_soak_duration : string prop option; [@option]
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
         match v_batch_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch_soak_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
  standard_rollout_policy :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_standard_rollout_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy)
               v_standard_rollout_policy
           in
           let bnd = "standard_rollout_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_node_pool_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_pool_soak_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings = {
  max_surge : float prop option; [@option]
  max_unavailable : float prop option; [@option]
  strategy : string prop option; [@option]
  blue_green_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       max_surge = v_max_surge;
       max_unavailable = v_max_unavailable;
       strategy = v_strategy;
       blue_green_settings = v_blue_green_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_blue_green_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings)
               v_blue_green_settings
           in
           let bnd = "blue_green_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings

[@@@deriving.end]

type cluster_autoscaling__auto_provisioning_defaults = {
  boot_disk_kms_key : string prop option; [@option]
  disk_size : float prop option; [@option]
  disk_type : string prop option; [@option]
  image_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
  service_account : string prop option; [@option]
  management :
    cluster_autoscaling__auto_provisioning_defaults__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config :
    cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  upgrade_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       min_cpu_platform = v_min_cpu_platform;
       oauth_scopes = v_oauth_scopes;
       service_account = v_service_account;
       management = v_management;
       shielded_instance_config = v_shielded_instance_config;
       upgrade_settings = v_upgrade_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_upgrade_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults__upgrade_settings)
               v_upgrade_settings
           in
           let bnd = "upgrade_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults__management)
               v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__auto_provisioning_defaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_autoscaling__auto_provisioning_defaults

[@@@deriving.end]

type cluster_autoscaling__resource_limits = {
  maximum : float prop option; [@option]
  minimum : float prop option; [@option]
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
         match v_minimum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_autoscaling__resource_limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_autoscaling__resource_limits

[@@@deriving.end]

type cluster_autoscaling = {
  autoscaling_profile : string prop option; [@option]
  enabled : bool prop option; [@option]
  auto_provisioning_defaults :
    cluster_autoscaling__auto_provisioning_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_limits : cluster_autoscaling__resource_limits list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_autoscaling) -> ()

let yojson_of_cluster_autoscaling =
  (function
   | {
       autoscaling_profile = v_autoscaling_profile;
       enabled = v_enabled;
       auto_provisioning_defaults = v_auto_provisioning_defaults;
       resource_limits = v_resource_limits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_limits then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__resource_limits)
               v_resource_limits
           in
           let bnd = "resource_limits", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_provisioning_defaults then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cluster_autoscaling__auto_provisioning_defaults)
               v_auto_provisioning_defaults
           in
           let bnd = "auto_provisioning_defaults", arg in
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
       let bnds =
         match v_autoscaling_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscaling_profile", arg in
             bnd :: bnds
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
  key_name : string prop option; [@option]
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
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
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
  cluster_dns : string prop option; [@option]
  cluster_dns_domain : string prop option; [@option]
  cluster_dns_scope : string prop option; [@option]
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
         match v_cluster_dns_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_dns_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_dns_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_dns_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_dns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_dns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

[@@@deriving.end]

type enable_k8s_beta_apis = {
  enabled_apis : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enable_k8s_beta_apis) -> ()

let yojson_of_enable_k8s_beta_apis =
  (function
   | { enabled_apis = v_enabled_apis } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_enabled_apis then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_enabled_apis
           in
           let bnd = "enabled_apis", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : enable_k8s_beta_apis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enable_k8s_beta_apis

[@@@deriving.end]

type fleet = { project : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { project = v_project } ->
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

type identity_service_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_service_config) -> ()

let yojson_of_identity_service_config =
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
    : identity_service_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_service_config

[@@@deriving.end]

type ip_allocation_policy__additional_pod_ranges_config = {
  pod_range_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_pod_range_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_pod_range_names
           in
           let bnd = "pod_range_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ip_allocation_policy__additional_pod_ranges_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allocation_policy__additional_pod_ranges_config

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

type ip_allocation_policy = {
  cluster_ipv4_cidr_block : string prop option; [@option]
  cluster_secondary_range_name : string prop option; [@option]
  services_ipv4_cidr_block : string prop option; [@option]
  services_secondary_range_name : string prop option; [@option]
  stack_type : string prop option; [@option]
  additional_pod_ranges_config :
    ip_allocation_policy__additional_pod_ranges_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_cidr_overprovision_config :
    ip_allocation_policy__pod_cidr_overprovision_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_allocation_policy) -> ()

let yojson_of_ip_allocation_policy =
  (function
   | {
       cluster_ipv4_cidr_block = v_cluster_ipv4_cidr_block;
       cluster_secondary_range_name = v_cluster_secondary_range_name;
       services_ipv4_cidr_block = v_services_ipv4_cidr_block;
       services_secondary_range_name =
         v_services_secondary_range_name;
       stack_type = v_stack_type;
       additional_pod_ranges_config = v_additional_pod_ranges_config;
       pod_cidr_overprovision_config =
         v_pod_cidr_overprovision_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_cidr_overprovision_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ip_allocation_policy__pod_cidr_overprovision_config)
               v_pod_cidr_overprovision_config
           in
           let bnd = "pod_cidr_overprovision_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_pod_ranges_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ip_allocation_policy__additional_pod_ranges_config)
               v_additional_pod_ranges_config
           in
           let bnd = "additional_pod_ranges_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stack_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_services_secondary_range_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "services_secondary_range_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_services_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "services_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_secondary_range_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_secondary_range_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ip_allocation_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allocation_policy

[@@@deriving.end]

type logging_config = {
  enable_components : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | { enable_components = v_enable_components } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_enable_components then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_enable_components
           in
           let bnd = "enable_components", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type maintenance_policy__daily_maintenance_window = {
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__daily_maintenance_window) -> ()

let yojson_of_maintenance_policy__daily_maintenance_window =
  (function
   | { start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__daily_maintenance_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__daily_maintenance_window

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
  start_time : string prop;
  exclusion_options :
    maintenance_policy__maintenance_exclusion__exclusion_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__maintenance_exclusion) -> ()

let yojson_of_maintenance_policy__maintenance_exclusion =
  (function
   | {
       end_time = v_end_time;
       exclusion_name = v_exclusion_name;
       start_time = v_start_time;
       exclusion_options = v_exclusion_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__maintenance_exclusion__exclusion_options)
               v_exclusion_options
           in
           let bnd = "exclusion_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
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

type maintenance_policy = {
  daily_maintenance_window :
    maintenance_policy__daily_maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_exclusion :
    maintenance_policy__maintenance_exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recurring_window : maintenance_policy__recurring_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_recurring_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__recurring_window)
               v_recurring_window
           in
           let bnd = "recurring_window", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_exclusion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__maintenance_exclusion)
               v_maintenance_exclusion
           in
           let bnd = "maintenance_exclusion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_daily_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__daily_maintenance_window)
               v_daily_maintenance_window
           in
           let bnd = "daily_maintenance_window", arg in
           bnd :: bnds
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
  client_certificate_config :
    master_auth__client_certificate_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_auth) -> ()

let yojson_of_master_auth =
  (function
   | { client_certificate_config = v_client_certificate_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_client_certificate_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_auth__client_certificate_config)
               v_client_certificate_config
           in
           let bnd = "client_certificate_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : master_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_auth

[@@@deriving.end]

type master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
  display_name : string prop option; [@option]
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
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
  gcp_public_cidrs_access_enabled : bool prop option; [@option]
  cidr_blocks : master_authorized_networks_config__cidr_blocks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_authorized_networks_config) -> ()

let yojson_of_master_authorized_networks_config =
  (function
   | {
       gcp_public_cidrs_access_enabled =
         v_gcp_public_cidrs_access_enabled;
       cidr_blocks = v_cidr_blocks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_authorized_networks_config__cidr_blocks)
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         match v_gcp_public_cidrs_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "gcp_public_cidrs_access_enabled", arg in
             bnd :: bnds
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

type monitoring_config__advanced_datapath_observability_config = {
  enable_metrics : bool prop;
  enable_relay : bool prop option; [@option]
  relay_mode : string prop option; [@option]
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
         match v_relay_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relay_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_relay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_relay", arg in
             bnd :: bnds
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

type monitoring_config = {
  enable_components : string prop list option; [@option]
  advanced_datapath_observability_config :
    monitoring_config__advanced_datapath_observability_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_prometheus : monitoring_config__managed_prometheus list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config) -> ()

let yojson_of_monitoring_config =
  (function
   | {
       enable_components = v_enable_components;
       advanced_datapath_observability_config =
         v_advanced_datapath_observability_config;
       managed_prometheus = v_managed_prometheus;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_prometheus then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__managed_prometheus)
               v_managed_prometheus
           in
           let bnd = "managed_prometheus", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_datapath_observability_config
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__advanced_datapath_observability_config)
               v_advanced_datapath_observability_config
           in
           let bnd = "advanced_datapath_observability_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enable_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enable_components", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitoring_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config

[@@@deriving.end]

type network_policy = {
  enabled : bool prop;
  provider : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_policy) -> ()

let yojson_of_network_policy =
  (function
   | { enabled = v_enabled; provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : network_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_policy

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

type node_config__kubelet_config = {
  cpu_cfs_quota : bool prop option; [@option]
  cpu_cfs_quota_period : string prop option; [@option]
  cpu_manager_policy : string prop;
  pod_pids_limit : float prop option; [@option]
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
         match v_pod_pids_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pod_pids_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_manager_policy
         in
         ("cpu_manager_policy", arg) :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_cfs_quota_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_cfs_quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__kubelet_config

[@@@deriving.end]

type node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
  sysctls : (string * string prop) list option; [@option]
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
         match v_sysctls with
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
             let bnd = "sysctls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cgroup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cgroup_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__linux_node_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__linux_node_config

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

type node_config__reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
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

type node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
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
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__shielded_instance_config

[@@@deriving.end]

type node_config__sole_tenant_config__node_affinity = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_node_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__sole_tenant_config__node_affinity)
               v_node_affinity
           in
           let bnd = "node_affinity", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_config__sole_tenant_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config__sole_tenant_config

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gpu_partition_size : string prop;
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_gpu_sharing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__guest_accelerator__gpu_sharing_config)
               v_gpu_sharing_config
           in
           let bnd = "gpu_sharing_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_partition_size
         in
         ("gpu_partition_size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gpu_driver_installation_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__guest_accelerator__gpu_driver_installation_config)
               v_gpu_driver_installation_config
           in
           let bnd = "gpu_driver_installation_config", arg in
           bnd :: bnds
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

type node_config = {
  boot_disk_kms_key : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  disk_type : string prop option; [@option]
  enable_confidential_storage : bool prop option; [@option]
  guest_accelerator : node_config__guest_accelerator list option;
      [@option]
  image_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  local_ssd_count : float prop option; [@option]
  logging_variant : string prop option; [@option]
  machine_type : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  min_cpu_platform : string prop option; [@option]
  node_group : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
  preemptible : bool prop option; [@option]
  resource_labels : (string * string prop) list option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  service_account : string prop option; [@option]
  spot : bool prop option; [@option]
  tags : string prop list option; [@option]
  advanced_machine_features :
    node_config__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidential_nodes : node_config__confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage_local_ssd_config :
    node_config__ephemeral_storage_local_ssd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fast_socket : node_config__fast_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcfs_config : node_config__gcfs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gvnic : node_config__gvnic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host_maintenance_policy :
    node_config__host_maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kubelet_config : node_config__kubelet_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linux_node_config : node_config__linux_node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  local_nvme_ssd_block_config :
    node_config__local_nvme_ssd_block_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity : node_config__reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config :
    node_config__shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sole_tenant_config : node_config__sole_tenant_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taint : node_config__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workload_metadata_config :
    node_config__workload_metadata_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       boot_disk_kms_key = v_boot_disk_kms_key;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       enable_confidential_storage = v_enable_confidential_storage;
       guest_accelerator = v_guest_accelerator;
       image_type = v_image_type;
       labels = v_labels;
       local_ssd_count = v_local_ssd_count;
       logging_variant = v_logging_variant;
       machine_type = v_machine_type;
       metadata = v_metadata;
       min_cpu_platform = v_min_cpu_platform;
       node_group = v_node_group;
       oauth_scopes = v_oauth_scopes;
       preemptible = v_preemptible;
       resource_labels = v_resource_labels;
       resource_manager_tags = v_resource_manager_tags;
       service_account = v_service_account;
       spot = v_spot;
       tags = v_tags;
       advanced_machine_features = v_advanced_machine_features;
       confidential_nodes = v_confidential_nodes;
       ephemeral_storage_local_ssd_config =
         v_ephemeral_storage_local_ssd_config;
       fast_socket = v_fast_socket;
       gcfs_config = v_gcfs_config;
       gvnic = v_gvnic;
       host_maintenance_policy = v_host_maintenance_policy;
       kubelet_config = v_kubelet_config;
       linux_node_config = v_linux_node_config;
       local_nvme_ssd_block_config = v_local_nvme_ssd_block_config;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
       sole_tenant_config = v_sole_tenant_config;
       taint = v_taint;
       workload_metadata_config = v_workload_metadata_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workload_metadata_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__workload_metadata_config)
               v_workload_metadata_config
           in
           let bnd = "workload_metadata_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_taint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__taint) v_taint
           in
           let bnd = "taint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sole_tenant_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__sole_tenant_config)
               v_sole_tenant_config
           in
           let bnd = "sole_tenant_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_nvme_ssd_block_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__local_nvme_ssd_block_config)
               v_local_nvme_ssd_block_config
           in
           let bnd = "local_nvme_ssd_block_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__linux_node_config)
               v_linux_node_config
           in
           let bnd = "linux_node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kubelet_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__kubelet_config)
               v_kubelet_config
           in
           let bnd = "kubelet_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__host_maintenance_policy)
               v_host_maintenance_policy
           in
           let bnd = "host_maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gvnic then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__gvnic) v_gvnic
           in
           let bnd = "gvnic", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcfs_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__gcfs_config)
               v_gcfs_config
           in
           let bnd = "gcfs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fast_socket then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config__fast_socket)
               v_fast_socket
           in
           let bnd = "fast_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_storage_local_ssd_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__ephemeral_storage_local_ssd_config)
               v_ephemeral_storage_local_ssd_config
           in
           let bnd = "ephemeral_storage_local_ssd_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidential_nodes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__confidential_nodes)
               v_confidential_nodes
           in
           let bnd = "confidential_nodes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_config__advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "spot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_tags with
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
             let bnd = "resource_manager_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_labels with
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
             let bnd = "resource_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preemptible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preemptible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
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
         match v_logging_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_variant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ssd_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "local_ssd_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guest_accelerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_node_config__guest_accelerator v
             in
             let bnd = "guest_accelerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_confidential_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

[@@@deriving.end]

type node_pool__autoscaling = {
  location_policy : string prop option; [@option]
  max_node_count : float prop option; [@option]
  min_node_count : float prop option; [@option]
  total_max_node_count : float prop option; [@option]
  total_min_node_count : float prop option; [@option]
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
         match v_total_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_total_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_max_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__autoscaling

[@@@deriving.end]

type node_pool__management = {
  auto_repair : bool prop option; [@option]
  auto_upgrade : bool prop option; [@option]
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
         match v_auto_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_repair", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__management

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

type node_pool__network_config = {
  create_pod_range : bool prop option; [@option]
  enable_private_nodes : bool prop option; [@option]
  pod_ipv4_cidr_block : string prop option; [@option]
  pod_range : string prop option; [@option]
  network_performance_config :
    node_pool__network_config__network_performance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_cidr_overprovision_config :
    node_pool__network_config__pod_cidr_overprovision_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__network_config) -> ()

let yojson_of_node_pool__network_config =
  (function
   | {
       create_pod_range = v_create_pod_range;
       enable_private_nodes = v_enable_private_nodes;
       pod_ipv4_cidr_block = v_pod_ipv4_cidr_block;
       pod_range = v_pod_range;
       network_performance_config = v_network_performance_config;
       pod_cidr_overprovision_config =
         v_pod_cidr_overprovision_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_cidr_overprovision_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__network_config__pod_cidr_overprovision_config)
               v_pod_cidr_overprovision_config
           in
           let bnd = "pod_cidr_overprovision_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_performance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__network_config__network_performance_config)
               v_network_performance_config
           in
           let bnd = "network_performance_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_pod_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_private_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_pod_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_pod_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__network_config

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

type node_pool__node_config__kubelet_config = {
  cpu_cfs_quota : bool prop option; [@option]
  cpu_cfs_quota_period : string prop option; [@option]
  cpu_manager_policy : string prop;
  pod_pids_limit : float prop option; [@option]
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
         match v_pod_pids_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pod_pids_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_manager_policy
         in
         ("cpu_manager_policy", arg) :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_cfs_quota_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_cfs_quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__kubelet_config

[@@@deriving.end]

type node_pool__node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
  sysctls : (string * string prop) list option; [@option]
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
         match v_sysctls with
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
             let bnd = "sysctls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cgroup_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cgroup_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__linux_node_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__linux_node_config

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

type node_pool__node_config__reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
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

type node_pool__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
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
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__shielded_instance_config

[@@@deriving.end]

type node_pool__node_config__sole_tenant_config__node_affinity = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_node_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__sole_tenant_config__node_affinity)
               v_node_affinity
           in
           let bnd = "node_affinity", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_pool__node_config__sole_tenant_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config__sole_tenant_config

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gpu_partition_size : string prop;
  gpu_sharing_config :
    node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_gpu_sharing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__guest_accelerator__gpu_sharing_config)
               v_gpu_sharing_config
           in
           let bnd = "gpu_sharing_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gpu_partition_size
         in
         ("gpu_partition_size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gpu_driver_installation_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__guest_accelerator__gpu_driver_installation_config)
               v_gpu_driver_installation_config
           in
           let bnd = "gpu_driver_installation_config", arg in
           bnd :: bnds
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

type node_pool__node_config = {
  boot_disk_kms_key : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  disk_type : string prop option; [@option]
  enable_confidential_storage : bool prop option; [@option]
  guest_accelerator :
    node_pool__node_config__guest_accelerator list option;
      [@option]
  image_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  local_ssd_count : float prop option; [@option]
  logging_variant : string prop option; [@option]
  machine_type : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  min_cpu_platform : string prop option; [@option]
  node_group : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
  preemptible : bool prop option; [@option]
  resource_labels : (string * string prop) list option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  service_account : string prop option; [@option]
  spot : bool prop option; [@option]
  tags : string prop list option; [@option]
  advanced_machine_features :
    node_pool__node_config__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidential_nodes :
    node_pool__node_config__confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage_local_ssd_config :
    node_pool__node_config__ephemeral_storage_local_ssd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fast_socket : node_pool__node_config__fast_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcfs_config : node_pool__node_config__gcfs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gvnic : node_pool__node_config__gvnic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host_maintenance_policy :
    node_pool__node_config__host_maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kubelet_config : node_pool__node_config__kubelet_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linux_node_config : node_pool__node_config__linux_node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  local_nvme_ssd_block_config :
    node_pool__node_config__local_nvme_ssd_block_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity :
    node_pool__node_config__reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config :
    node_pool__node_config__shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sole_tenant_config :
    node_pool__node_config__sole_tenant_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taint : node_pool__node_config__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workload_metadata_config :
    node_pool__node_config__workload_metadata_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__node_config) -> ()

let yojson_of_node_pool__node_config =
  (function
   | {
       boot_disk_kms_key = v_boot_disk_kms_key;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       enable_confidential_storage = v_enable_confidential_storage;
       guest_accelerator = v_guest_accelerator;
       image_type = v_image_type;
       labels = v_labels;
       local_ssd_count = v_local_ssd_count;
       logging_variant = v_logging_variant;
       machine_type = v_machine_type;
       metadata = v_metadata;
       min_cpu_platform = v_min_cpu_platform;
       node_group = v_node_group;
       oauth_scopes = v_oauth_scopes;
       preemptible = v_preemptible;
       resource_labels = v_resource_labels;
       resource_manager_tags = v_resource_manager_tags;
       service_account = v_service_account;
       spot = v_spot;
       tags = v_tags;
       advanced_machine_features = v_advanced_machine_features;
       confidential_nodes = v_confidential_nodes;
       ephemeral_storage_local_ssd_config =
         v_ephemeral_storage_local_ssd_config;
       fast_socket = v_fast_socket;
       gcfs_config = v_gcfs_config;
       gvnic = v_gvnic;
       host_maintenance_policy = v_host_maintenance_policy;
       kubelet_config = v_kubelet_config;
       linux_node_config = v_linux_node_config;
       local_nvme_ssd_block_config = v_local_nvme_ssd_block_config;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
       sole_tenant_config = v_sole_tenant_config;
       taint = v_taint;
       workload_metadata_config = v_workload_metadata_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workload_metadata_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__workload_metadata_config)
               v_workload_metadata_config
           in
           let bnd = "workload_metadata_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_taint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__node_config__taint)
               v_taint
           in
           let bnd = "taint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sole_tenant_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__sole_tenant_config)
               v_sole_tenant_config
           in
           let bnd = "sole_tenant_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_nvme_ssd_block_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__local_nvme_ssd_block_config)
               v_local_nvme_ssd_block_config
           in
           let bnd = "local_nvme_ssd_block_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_node_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__linux_node_config)
               v_linux_node_config
           in
           let bnd = "linux_node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kubelet_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__kubelet_config)
               v_kubelet_config
           in
           let bnd = "kubelet_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__host_maintenance_policy)
               v_host_maintenance_policy
           in
           let bnd = "host_maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gvnic then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__node_config__gvnic)
               v_gvnic
           in
           let bnd = "gvnic", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcfs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__gcfs_config)
               v_gcfs_config
           in
           let bnd = "gcfs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fast_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__fast_socket)
               v_fast_socket
           in
           let bnd = "fast_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_storage_local_ssd_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__ephemeral_storage_local_ssd_config)
               v_ephemeral_storage_local_ssd_config
           in
           let bnd = "ephemeral_storage_local_ssd_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidential_nodes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__confidential_nodes)
               v_confidential_nodes
           in
           let bnd = "confidential_nodes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__node_config__advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "spot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_tags with
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
             let bnd = "resource_manager_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_labels with
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
             let bnd = "resource_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preemptible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preemptible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
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
         match v_logging_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_variant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ssd_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "local_ssd_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guest_accelerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_node_pool__node_config__guest_accelerator
                 v
             in
             let bnd = "guest_accelerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_confidential_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__node_config

[@@@deriving.end]

type node_pool__placement_policy = {
  policy_name : string prop option; [@option]
  tpu_topology : string prop option; [@option]
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
         match v_tpu_topology with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpu_topology", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__placement_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__placement_policy

[@@@deriving.end]

type node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
  batch_percentage : float prop option; [@option]
  batch_soak_duration : string prop option; [@option]
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
         match v_batch_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch_soak_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

[@@@deriving.end]

type node_pool__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
  standard_rollout_policy :
    node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_standard_rollout_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy)
               v_standard_rollout_policy
           in
           let bnd = "standard_rollout_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_node_pool_soak_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_pool_soak_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings__blue_green_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__upgrade_settings__blue_green_settings

[@@@deriving.end]

type node_pool__upgrade_settings = {
  max_surge : float prop option; [@option]
  max_unavailable : float prop option; [@option]
  strategy : string prop option; [@option]
  blue_green_settings :
    node_pool__upgrade_settings__blue_green_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__upgrade_settings) -> ()

let yojson_of_node_pool__upgrade_settings =
  (function
   | {
       max_surge = v_max_surge;
       max_unavailable = v_max_unavailable;
       strategy = v_strategy;
       blue_green_settings = v_blue_green_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_blue_green_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool__upgrade_settings__blue_green_settings)
               v_blue_green_settings
           in
           let bnd = "blue_green_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__upgrade_settings

[@@@deriving.end]

type node_pool = {
  initial_node_count : float prop option; [@option]
  max_pods_per_node : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  node_count : float prop option; [@option]
  node_locations : string prop list option; [@option]
  version : string prop option; [@option]
  autoscaling : node_pool__autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : node_pool__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : node_pool__network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_pool__node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement_policy : node_pool__placement_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  upgrade_settings : node_pool__upgrade_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool) -> ()

let yojson_of_node_pool =
  (function
   | {
       initial_node_count = v_initial_node_count;
       max_pods_per_node = v_max_pods_per_node;
       name = v_name;
       name_prefix = v_name_prefix;
       node_count = v_node_count;
       node_locations = v_node_locations;
       version = v_version;
       autoscaling = v_autoscaling;
       management = v_management;
       network_config = v_network_config;
       node_config = v_node_config;
       placement_policy = v_placement_policy;
       upgrade_settings = v_upgrade_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_upgrade_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__upgrade_settings)
               v_upgrade_settings
           in
           let bnd = "upgrade_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_placement_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__placement_policy)
               v_placement_policy
           in
           let bnd = "placement_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__node_config)
               v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__management)
               v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__autoscaling)
               v_autoscaling
           in
           let bnd = "autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "node_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
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
         match v_max_pods_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pods_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool

[@@@deriving.end]

type node_pool_auto_config__network_tags = {
  tags : string prop list option; [@option]
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool_auto_config__network_tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_auto_config__network_tags

[@@@deriving.end]

type node_pool_auto_config = {
  network_tags : node_pool_auto_config__network_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_network_tags then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool_auto_config__network_tags)
               v_network_tags
           in
           let bnd = "network_tags", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_pool_auto_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_auto_config

[@@@deriving.end]

type node_pool_defaults__node_config_defaults = {
  logging_variant : string prop option; [@option]
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
         match v_logging_variant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_variant", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool_defaults__node_config_defaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_defaults__node_config_defaults

[@@@deriving.end]

type node_pool_defaults = {
  node_config_defaults :
    node_pool_defaults__node_config_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_node_config_defaults then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_pool_defaults__node_config_defaults)
               v_node_config_defaults
           in
           let bnd = "node_config_defaults", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_pool_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_defaults

[@@@deriving.end]

type notification_config__pubsub__filter = {
  event_type : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_event_type then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_event_type
           in
           let bnd = "event_type", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_config__pubsub__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config__pubsub__filter

[@@@deriving.end]

type notification_config__pubsub = {
  enabled : bool prop;
  topic : string prop option; [@option]
  filter : notification_config__pubsub__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config__pubsub) -> ()

let yojson_of_notification_config__pubsub =
  (function
   | { enabled = v_enabled; topic = v_topic; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_config__pubsub__filter)
               v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic", arg in
             bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_pubsub then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_config__pubsub)
               v_pubsub
           in
           let bnd = "pubsub", arg in
           bnd :: bnds
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
  enable_private_endpoint : bool prop option; [@option]
  enable_private_nodes : bool prop option; [@option]
  master_ipv4_cidr_block : string prop option; [@option]
  private_endpoint_subnetwork : string prop option; [@option]
  master_global_access_config :
    private_cluster_config__master_global_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_cluster_config) -> ()

let yojson_of_private_cluster_config =
  (function
   | {
       enable_private_endpoint = v_enable_private_endpoint;
       enable_private_nodes = v_enable_private_nodes;
       master_ipv4_cidr_block = v_master_ipv4_cidr_block;
       private_endpoint_subnetwork = v_private_endpoint_subnetwork;
       master_global_access_config = v_master_global_access_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_master_global_access_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_private_cluster_config__master_global_access_config)
               v_master_global_access_config
           in
           let bnd = "master_global_access_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_private_endpoint_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_endpoint_subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_ipv4_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_ipv4_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_private_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_private_endpoint", arg in
             bnd :: bnds
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
  enable_network_egress_metering : bool prop option; [@option]
  enable_resource_consumption_metering : bool prop option; [@option]
  bigquery_destination :
    resource_usage_export_config__bigquery_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_usage_export_config) -> ()

let yojson_of_resource_usage_export_config =
  (function
   | {
       enable_network_egress_metering =
         v_enable_network_egress_metering;
       enable_resource_consumption_metering =
         v_enable_resource_consumption_metering;
       bigquery_destination = v_bigquery_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_resource_usage_export_config__bigquery_destination)
               v_bigquery_destination
           in
           let bnd = "bigquery_destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enable_resource_consumption_metering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_resource_consumption_metering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_network_egress_metering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_network_egress_metering", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_usage_export_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_usage_export_config

[@@@deriving.end]

type security_posture_config = {
  mode : string prop option; [@option]
  vulnerability_mode : string prop option; [@option]
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
         match v_vulnerability_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vulnerability_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type workload_identity_config = {
  workload_pool : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_identity_config) -> ()

let yojson_of_workload_identity_config =
  (function
   | { workload_pool = v_workload_pool } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_workload_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workload_pool", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload_identity_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_identity_config

[@@@deriving.end]

type google_container_cluster = {
  allow_net_admin : bool prop option; [@option]
  cluster_ipv4_cidr : string prop option; [@option]
  datapath_provider : string prop option; [@option]
  default_max_pods_per_node : float prop option; [@option]
  deletion_protection : bool prop option; [@option]
  description : string prop option; [@option]
  enable_autopilot : bool prop option; [@option]
  enable_intranode_visibility : bool prop option; [@option]
  enable_kubernetes_alpha : bool prop option; [@option]
  enable_l4_ilb_subsetting : bool prop option; [@option]
  enable_legacy_abac : bool prop option; [@option]
  enable_shielded_nodes : bool prop option; [@option]
  enable_tpu : bool prop option; [@option]
  id : string prop option; [@option]
  initial_node_count : float prop option; [@option]
  location : string prop option; [@option]
  logging_service : string prop option; [@option]
  min_master_version : string prop option; [@option]
  monitoring_service : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  networking_mode : string prop option; [@option]
  node_locations : string prop list option; [@option]
  node_version : string prop option; [@option]
  private_ipv6_google_access : string prop option; [@option]
  project : string prop option; [@option]
  remove_default_node_pool : bool prop option; [@option]
  resource_labels : (string * string prop) list option; [@option]
  subnetwork : string prop option; [@option]
  addons_config : addons_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  authenticator_groups_config : authenticator_groups_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  binary_authorization : binary_authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cluster_autoscaling : cluster_autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidential_nodes : confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_management_config : cost_management_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_encryption : database_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_snat_status : default_snat_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_config : dns_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enable_k8s_beta_apis : enable_k8s_beta_apis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fleet : fleet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gateway_api_config : gateway_api_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity_service_config : identity_service_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_allocation_policy : ip_allocation_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logging_config : logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_policy : maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_auth : master_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_authorized_networks_config :
    master_authorized_networks_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mesh_certificates : mesh_certificates list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring_config : monitoring_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_policy : network_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_pool : node_pool list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_pool_auto_config : node_pool_auto_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_pool_defaults : node_pool_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_config : notification_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_cluster_config : private_cluster_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  release_channel : release_channel list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_usage_export_config : resource_usage_export_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_posture_config : security_posture_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_external_ips_config : service_external_ips_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vertical_pod_autoscaling : vertical_pod_autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workload_identity_config : workload_identity_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_cluster) -> ()

let yojson_of_google_container_cluster =
  (function
   | {
       allow_net_admin = v_allow_net_admin;
       cluster_ipv4_cidr = v_cluster_ipv4_cidr;
       datapath_provider = v_datapath_provider;
       default_max_pods_per_node = v_default_max_pods_per_node;
       deletion_protection = v_deletion_protection;
       description = v_description;
       enable_autopilot = v_enable_autopilot;
       enable_intranode_visibility = v_enable_intranode_visibility;
       enable_kubernetes_alpha = v_enable_kubernetes_alpha;
       enable_l4_ilb_subsetting = v_enable_l4_ilb_subsetting;
       enable_legacy_abac = v_enable_legacy_abac;
       enable_shielded_nodes = v_enable_shielded_nodes;
       enable_tpu = v_enable_tpu;
       id = v_id;
       initial_node_count = v_initial_node_count;
       location = v_location;
       logging_service = v_logging_service;
       min_master_version = v_min_master_version;
       monitoring_service = v_monitoring_service;
       name = v_name;
       network = v_network;
       networking_mode = v_networking_mode;
       node_locations = v_node_locations;
       node_version = v_node_version;
       private_ipv6_google_access = v_private_ipv6_google_access;
       project = v_project;
       remove_default_node_pool = v_remove_default_node_pool;
       resource_labels = v_resource_labels;
       subnetwork = v_subnetwork;
       addons_config = v_addons_config;
       authenticator_groups_config = v_authenticator_groups_config;
       binary_authorization = v_binary_authorization;
       cluster_autoscaling = v_cluster_autoscaling;
       confidential_nodes = v_confidential_nodes;
       cost_management_config = v_cost_management_config;
       database_encryption = v_database_encryption;
       default_snat_status = v_default_snat_status;
       dns_config = v_dns_config;
       enable_k8s_beta_apis = v_enable_k8s_beta_apis;
       fleet = v_fleet;
       gateway_api_config = v_gateway_api_config;
       identity_service_config = v_identity_service_config;
       ip_allocation_policy = v_ip_allocation_policy;
       logging_config = v_logging_config;
       maintenance_policy = v_maintenance_policy;
       master_auth = v_master_auth;
       master_authorized_networks_config =
         v_master_authorized_networks_config;
       mesh_certificates = v_mesh_certificates;
       monitoring_config = v_monitoring_config;
       network_policy = v_network_policy;
       node_config = v_node_config;
       node_pool = v_node_pool;
       node_pool_auto_config = v_node_pool_auto_config;
       node_pool_defaults = v_node_pool_defaults;
       notification_config = v_notification_config;
       private_cluster_config = v_private_cluster_config;
       release_channel = v_release_channel;
       resource_usage_export_config = v_resource_usage_export_config;
       security_posture_config = v_security_posture_config;
       service_external_ips_config = v_service_external_ips_config;
       timeouts = v_timeouts;
       vertical_pod_autoscaling = v_vertical_pod_autoscaling;
       workload_identity_config = v_workload_identity_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workload_identity_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workload_identity_config)
               v_workload_identity_config
           in
           let bnd = "workload_identity_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vertical_pod_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vertical_pod_autoscaling)
               v_vertical_pod_autoscaling
           in
           let bnd = "vertical_pod_autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_external_ips_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_external_ips_config)
               v_service_external_ips_config
           in
           let bnd = "service_external_ips_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_posture_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_posture_config)
               v_security_posture_config
           in
           let bnd = "security_posture_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_usage_export_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_usage_export_config)
               v_resource_usage_export_config
           in
           let bnd = "resource_usage_export_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_release_channel then bnds
         else
           let arg =
             (yojson_of_list yojson_of_release_channel)
               v_release_channel
           in
           let bnd = "release_channel", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_cluster_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_cluster_config)
               v_private_cluster_config
           in
           let bnd = "private_cluster_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_config)
               v_notification_config
           in
           let bnd = "notification_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool_defaults then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool_defaults)
               v_node_pool_defaults
           in
           let bnd = "node_pool_defaults", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool_auto_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool_auto_config)
               v_node_pool_auto_config
           in
           let bnd = "node_pool_auto_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool) v_node_pool
           in
           let bnd = "node_pool", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config) v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_policy)
               v_network_policy
           in
           let bnd = "network_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring_config)
               v_monitoring_config
           in
           let bnd = "monitoring_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mesh_certificates then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mesh_certificates)
               v_mesh_certificates
           in
           let bnd = "mesh_certificates", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_master_authorized_networks_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_authorized_networks_config)
               v_master_authorized_networks_config
           in
           let bnd = "master_authorized_networks_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_master_auth then bnds
         else
           let arg =
             (yojson_of_list yojson_of_master_auth) v_master_auth
           in
           let bnd = "master_auth", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_policy)
               v_maintenance_policy
           in
           let bnd = "maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_allocation_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_allocation_policy)
               v_ip_allocation_policy
           in
           let bnd = "ip_allocation_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_service_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity_service_config)
               v_identity_service_config
           in
           let bnd = "identity_service_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gateway_api_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gateway_api_config)
               v_gateway_api_config
           in
           let bnd = "gateway_api_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet then bnds
         else
           let arg = (yojson_of_list yojson_of_fleet) v_fleet in
           let bnd = "fleet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enable_k8s_beta_apis then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enable_k8s_beta_apis)
               v_enable_k8s_beta_apis
           in
           let bnd = "enable_k8s_beta_apis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dns_config) v_dns_config
           in
           let bnd = "dns_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_snat_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_snat_status)
               v_default_snat_status
           in
           let bnd = "default_snat_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_database_encryption)
               v_database_encryption
           in
           let bnd = "database_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_management_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cost_management_config)
               v_cost_management_config
           in
           let bnd = "cost_management_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidential_nodes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_confidential_nodes)
               v_confidential_nodes
           in
           let bnd = "confidential_nodes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_autoscaling)
               v_cluster_autoscaling
           in
           let bnd = "cluster_autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_binary_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_binary_authorization)
               v_binary_authorization
           in
           let bnd = "binary_authorization", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authenticator_groups_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authenticator_groups_config)
               v_authenticator_groups_config
           in
           let bnd = "authenticator_groups_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addons_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_addons_config) v_addons_config
           in
           let bnd = "addons_config", arg in
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
         match v_resource_labels with
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
             let bnd = "resource_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remove_default_node_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remove_default_node_pool", arg in
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
         match v_private_ipv6_google_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ipv6_google_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "node_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_networking_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "networking_mode", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_monitoring_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitoring_service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_master_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_master_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_service", arg in
             bnd :: bnds
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
         match v_initial_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_node_count", arg in
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
         match v_enable_tpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_tpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_shielded_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_shielded_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_legacy_abac with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_legacy_abac", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_l4_ilb_subsetting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_l4_ilb_subsetting", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_kubernetes_alpha with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_kubernetes_alpha", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_intranode_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_intranode_visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_autopilot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_autopilot", arg in
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
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_max_pods_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_max_pods_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datapath_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datapath_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_ipv4_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_ipv4_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_net_admin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_net_admin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_cluster

[@@@deriving.end]

let addons_config__cloudrun_config ?load_balancer_type ~disabled () :
    addons_config__cloudrun_config =
  { disabled; load_balancer_type }

let addons_config__config_connector_config ~enabled () :
    addons_config__config_connector_config =
  { enabled }

let addons_config__dns_cache_config ~enabled () :
    addons_config__dns_cache_config =
  { enabled }

let addons_config__gce_persistent_disk_csi_driver_config ~enabled ()
    : addons_config__gce_persistent_disk_csi_driver_config =
  { enabled }

let addons_config__gcp_filestore_csi_driver_config ~enabled () :
    addons_config__gcp_filestore_csi_driver_config =
  { enabled }

let addons_config__gcs_fuse_csi_driver_config ~enabled () :
    addons_config__gcs_fuse_csi_driver_config =
  { enabled }

let addons_config__gke_backup_agent_config ~enabled () :
    addons_config__gke_backup_agent_config =
  { enabled }

let addons_config__horizontal_pod_autoscaling ~disabled () :
    addons_config__horizontal_pod_autoscaling =
  { disabled }

let addons_config__http_load_balancing ~disabled () :
    addons_config__http_load_balancing =
  { disabled }

let addons_config__network_policy_config ~disabled () :
    addons_config__network_policy_config =
  { disabled }

let addons_config ?(cloudrun_config = [])
    ?(config_connector_config = []) ?(dns_cache_config = [])
    ?(gce_persistent_disk_csi_driver_config = [])
    ?(gcp_filestore_csi_driver_config = [])
    ?(gcs_fuse_csi_driver_config = [])
    ?(gke_backup_agent_config = [])
    ?(horizontal_pod_autoscaling = []) ?(http_load_balancing = [])
    ?(network_policy_config = []) () : addons_config =
  {
    cloudrun_config;
    config_connector_config;
    dns_cache_config;
    gce_persistent_disk_csi_driver_config;
    gcp_filestore_csi_driver_config;
    gcs_fuse_csi_driver_config;
    gke_backup_agent_config;
    horizontal_pod_autoscaling;
    http_load_balancing;
    network_policy_config;
  }

let authenticator_groups_config ~security_group () :
    authenticator_groups_config =
  { security_group }

let binary_authorization ?enabled ?evaluation_mode () :
    binary_authorization =
  { enabled; evaluation_mode }

let cluster_autoscaling__auto_provisioning_defaults__management
    ?auto_repair ?auto_upgrade () :
    cluster_autoscaling__auto_provisioning_defaults__management =
  { auto_repair; auto_upgrade }

let cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot () :
    cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    =
  { enable_integrity_monitoring; enable_secure_boot }

let cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    ?batch_node_count ?batch_percentage ?batch_soak_duration () :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    =
  { batch_node_count; batch_percentage; batch_soak_duration }

let cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    ?node_pool_soak_duration ?(standard_rollout_policy = []) () :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    =
  { node_pool_soak_duration; standard_rollout_policy }

let cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    ?max_surge ?max_unavailable ?strategy ?(blue_green_settings = [])
    () :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    =
  { max_surge; max_unavailable; strategy; blue_green_settings }

let cluster_autoscaling__auto_provisioning_defaults
    ?boot_disk_kms_key ?disk_size ?disk_type ?image_type
    ?min_cpu_platform ?oauth_scopes ?service_account
    ?(management = []) ?(shielded_instance_config = [])
    ?(upgrade_settings = []) () :
    cluster_autoscaling__auto_provisioning_defaults =
  {
    boot_disk_kms_key;
    disk_size;
    disk_type;
    image_type;
    min_cpu_platform;
    oauth_scopes;
    service_account;
    management;
    shielded_instance_config;
    upgrade_settings;
  }

let cluster_autoscaling__resource_limits ?maximum ?minimum
    ~resource_type () : cluster_autoscaling__resource_limits =
  { maximum; minimum; resource_type }

let cluster_autoscaling ?autoscaling_profile ?enabled
    ?(auto_provisioning_defaults = []) ?(resource_limits = []) () :
    cluster_autoscaling =
  {
    autoscaling_profile;
    enabled;
    auto_provisioning_defaults;
    resource_limits;
  }

let confidential_nodes ~enabled () : confidential_nodes = { enabled }

let cost_management_config ~enabled () : cost_management_config =
  { enabled }

let database_encryption ?key_name ~state () : database_encryption =
  { key_name; state }

let default_snat_status ~disabled () : default_snat_status =
  { disabled }

let dns_config ?cluster_dns ?cluster_dns_domain ?cluster_dns_scope ()
    : dns_config =
  { cluster_dns; cluster_dns_domain; cluster_dns_scope }

let enable_k8s_beta_apis ~enabled_apis () : enable_k8s_beta_apis =
  { enabled_apis }

let fleet ?project () : fleet = { project }
let gateway_api_config ~channel () : gateway_api_config = { channel }

let identity_service_config ?enabled () : identity_service_config =
  { enabled }

let ip_allocation_policy__additional_pod_ranges_config
    ~pod_range_names () :
    ip_allocation_policy__additional_pod_ranges_config =
  { pod_range_names }

let ip_allocation_policy__pod_cidr_overprovision_config ~disabled ()
    : ip_allocation_policy__pod_cidr_overprovision_config =
  { disabled }

let ip_allocation_policy ?cluster_ipv4_cidr_block
    ?cluster_secondary_range_name ?services_ipv4_cidr_block
    ?services_secondary_range_name ?stack_type
    ?(additional_pod_ranges_config = [])
    ?(pod_cidr_overprovision_config = []) () : ip_allocation_policy =
  {
    cluster_ipv4_cidr_block;
    cluster_secondary_range_name;
    services_ipv4_cidr_block;
    services_secondary_range_name;
    stack_type;
    additional_pod_ranges_config;
    pod_cidr_overprovision_config;
  }

let logging_config ~enable_components () : logging_config =
  { enable_components }

let maintenance_policy__daily_maintenance_window ~start_time () :
    maintenance_policy__daily_maintenance_window =
  { start_time }

let maintenance_policy__maintenance_exclusion__exclusion_options
    ~scope () :
    maintenance_policy__maintenance_exclusion__exclusion_options =
  { scope }

let maintenance_policy__maintenance_exclusion
    ?(exclusion_options = []) ~end_time ~exclusion_name ~start_time
    () : maintenance_policy__maintenance_exclusion =
  { end_time; exclusion_name; start_time; exclusion_options }

let maintenance_policy__recurring_window ~end_time ~recurrence
    ~start_time () : maintenance_policy__recurring_window =
  { end_time; recurrence; start_time }

let maintenance_policy ?(daily_maintenance_window = [])
    ?(recurring_window = []) ~maintenance_exclusion () :
    maintenance_policy =
  {
    daily_maintenance_window;
    maintenance_exclusion;
    recurring_window;
  }

let master_auth__client_certificate_config ~issue_client_certificate
    () : master_auth__client_certificate_config =
  { issue_client_certificate }

let master_auth ~client_certificate_config () : master_auth =
  { client_certificate_config }

let master_authorized_networks_config__cidr_blocks ?display_name
    ~cidr_block () : master_authorized_networks_config__cidr_blocks =
  { cidr_block; display_name }

let master_authorized_networks_config
    ?gcp_public_cidrs_access_enabled ~cidr_blocks () :
    master_authorized_networks_config =
  { gcp_public_cidrs_access_enabled; cidr_blocks }

let mesh_certificates ~enable_certificates () : mesh_certificates =
  { enable_certificates }

let monitoring_config__advanced_datapath_observability_config
    ?enable_relay ?relay_mode ~enable_metrics () :
    monitoring_config__advanced_datapath_observability_config =
  { enable_metrics; enable_relay; relay_mode }

let monitoring_config__managed_prometheus ~enabled () :
    monitoring_config__managed_prometheus =
  { enabled }

let monitoring_config ?enable_components
    ?(advanced_datapath_observability_config = [])
    ?(managed_prometheus = []) () : monitoring_config =
  {
    enable_components;
    advanced_datapath_observability_config;
    managed_prometheus;
  }

let network_policy ?provider ~enabled () : network_policy =
  { enabled; provider }

let node_config__advanced_machine_features ~threads_per_core () :
    node_config__advanced_machine_features =
  { threads_per_core }

let node_config__confidential_nodes ~enabled () :
    node_config__confidential_nodes =
  { enabled }

let node_config__ephemeral_storage_local_ssd_config ~local_ssd_count
    () : node_config__ephemeral_storage_local_ssd_config =
  { local_ssd_count }

let node_config__fast_socket ~enabled () : node_config__fast_socket =
  { enabled }

let node_config__gcfs_config ~enabled () : node_config__gcfs_config =
  { enabled }

let node_config__gvnic ~enabled () : node_config__gvnic = { enabled }

let node_config__host_maintenance_policy ~maintenance_interval () :
    node_config__host_maintenance_policy =
  { maintenance_interval }

let node_config__kubelet_config ?cpu_cfs_quota ?cpu_cfs_quota_period
    ?pod_pids_limit ~cpu_manager_policy () :
    node_config__kubelet_config =
  {
    cpu_cfs_quota;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    pod_pids_limit;
  }

let node_config__linux_node_config ?cgroup_mode ?sysctls () :
    node_config__linux_node_config =
  { cgroup_mode; sysctls }

let node_config__local_nvme_ssd_block_config ~local_ssd_count () :
    node_config__local_nvme_ssd_block_config =
  { local_ssd_count }

let node_config__reservation_affinity ?key ?values
    ~consume_reservation_type () : node_config__reservation_affinity
    =
  { consume_reservation_type; key; values }

let node_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot () :
    node_config__shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot }

let node_config__sole_tenant_config__node_affinity ~key ~operator
    ~values () : node_config__sole_tenant_config__node_affinity =
  { key; operator; values }

let node_config__sole_tenant_config ~node_affinity () :
    node_config__sole_tenant_config =
  { node_affinity }

let node_config__taint ~effect ~key ~value () : node_config__taint =
  { effect; key; value }

let node_config__workload_metadata_config ~mode () :
    node_config__workload_metadata_config =
  { mode }

let node_config ?boot_disk_kms_key ?disk_size_gb ?disk_type
    ?enable_confidential_storage ?guest_accelerator ?image_type
    ?labels ?local_ssd_count ?logging_variant ?machine_type ?metadata
    ?min_cpu_platform ?node_group ?oauth_scopes ?preemptible
    ?resource_labels ?resource_manager_tags ?service_account ?spot
    ?tags ?(advanced_machine_features = [])
    ?(confidential_nodes = [])
    ?(ephemeral_storage_local_ssd_config = []) ?(fast_socket = [])
    ?(gcfs_config = []) ?(gvnic = []) ?(host_maintenance_policy = [])
    ?(kubelet_config = []) ?(linux_node_config = [])
    ?(local_nvme_ssd_block_config = []) ?(reservation_affinity = [])
    ?(shielded_instance_config = []) ?(sole_tenant_config = [])
    ?(taint = []) ?(workload_metadata_config = []) () : node_config =
  {
    boot_disk_kms_key;
    disk_size_gb;
    disk_type;
    enable_confidential_storage;
    guest_accelerator;
    image_type;
    labels;
    local_ssd_count;
    logging_variant;
    machine_type;
    metadata;
    min_cpu_platform;
    node_group;
    oauth_scopes;
    preemptible;
    resource_labels;
    resource_manager_tags;
    service_account;
    spot;
    tags;
    advanced_machine_features;
    confidential_nodes;
    ephemeral_storage_local_ssd_config;
    fast_socket;
    gcfs_config;
    gvnic;
    host_maintenance_policy;
    kubelet_config;
    linux_node_config;
    local_nvme_ssd_block_config;
    reservation_affinity;
    shielded_instance_config;
    sole_tenant_config;
    taint;
    workload_metadata_config;
  }

let node_pool__autoscaling ?location_policy ?max_node_count
    ?min_node_count ?total_max_node_count ?total_min_node_count () :
    node_pool__autoscaling =
  {
    location_policy;
    max_node_count;
    min_node_count;
    total_max_node_count;
    total_min_node_count;
  }

let node_pool__management ?auto_repair ?auto_upgrade () :
    node_pool__management =
  { auto_repair; auto_upgrade }

let node_pool__network_config__network_performance_config
    ~total_egress_bandwidth_tier () :
    node_pool__network_config__network_performance_config =
  { total_egress_bandwidth_tier }

let node_pool__network_config__pod_cidr_overprovision_config
    ~disabled () :
    node_pool__network_config__pod_cidr_overprovision_config =
  { disabled }

let node_pool__network_config ?create_pod_range ?enable_private_nodes
    ?pod_ipv4_cidr_block ?pod_range
    ?(network_performance_config = [])
    ?(pod_cidr_overprovision_config = []) () :
    node_pool__network_config =
  {
    create_pod_range;
    enable_private_nodes;
    pod_ipv4_cidr_block;
    pod_range;
    network_performance_config;
    pod_cidr_overprovision_config;
  }

let node_pool__node_config__advanced_machine_features
    ~threads_per_core () :
    node_pool__node_config__advanced_machine_features =
  { threads_per_core }

let node_pool__node_config__confidential_nodes ~enabled () :
    node_pool__node_config__confidential_nodes =
  { enabled }

let node_pool__node_config__ephemeral_storage_local_ssd_config
    ~local_ssd_count () :
    node_pool__node_config__ephemeral_storage_local_ssd_config =
  { local_ssd_count }

let node_pool__node_config__fast_socket ~enabled () :
    node_pool__node_config__fast_socket =
  { enabled }

let node_pool__node_config__gcfs_config ~enabled () :
    node_pool__node_config__gcfs_config =
  { enabled }

let node_pool__node_config__gvnic ~enabled () :
    node_pool__node_config__gvnic =
  { enabled }

let node_pool__node_config__host_maintenance_policy
    ~maintenance_interval () :
    node_pool__node_config__host_maintenance_policy =
  { maintenance_interval }

let node_pool__node_config__kubelet_config ?cpu_cfs_quota
    ?cpu_cfs_quota_period ?pod_pids_limit ~cpu_manager_policy () :
    node_pool__node_config__kubelet_config =
  {
    cpu_cfs_quota;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    pod_pids_limit;
  }

let node_pool__node_config__linux_node_config ?cgroup_mode ?sysctls
    () : node_pool__node_config__linux_node_config =
  { cgroup_mode; sysctls }

let node_pool__node_config__local_nvme_ssd_block_config
    ~local_ssd_count () :
    node_pool__node_config__local_nvme_ssd_block_config =
  { local_ssd_count }

let node_pool__node_config__reservation_affinity ?key ?values
    ~consume_reservation_type () :
    node_pool__node_config__reservation_affinity =
  { consume_reservation_type; key; values }

let node_pool__node_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot () :
    node_pool__node_config__shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot }

let node_pool__node_config__sole_tenant_config__node_affinity ~key
    ~operator ~values () :
    node_pool__node_config__sole_tenant_config__node_affinity =
  { key; operator; values }

let node_pool__node_config__sole_tenant_config ~node_affinity () :
    node_pool__node_config__sole_tenant_config =
  { node_affinity }

let node_pool__node_config__taint ~effect ~key ~value () :
    node_pool__node_config__taint =
  { effect; key; value }

let node_pool__node_config__workload_metadata_config ~mode () :
    node_pool__node_config__workload_metadata_config =
  { mode }

let node_pool__node_config ?boot_disk_kms_key ?disk_size_gb
    ?disk_type ?enable_confidential_storage ?guest_accelerator
    ?image_type ?labels ?local_ssd_count ?logging_variant
    ?machine_type ?metadata ?min_cpu_platform ?node_group
    ?oauth_scopes ?preemptible ?resource_labels
    ?resource_manager_tags ?service_account ?spot ?tags
    ?(advanced_machine_features = []) ?(confidential_nodes = [])
    ?(ephemeral_storage_local_ssd_config = []) ?(fast_socket = [])
    ?(gcfs_config = []) ?(gvnic = []) ?(host_maintenance_policy = [])
    ?(kubelet_config = []) ?(linux_node_config = [])
    ?(local_nvme_ssd_block_config = []) ?(reservation_affinity = [])
    ?(shielded_instance_config = []) ?(sole_tenant_config = [])
    ?(taint = []) ?(workload_metadata_config = []) () :
    node_pool__node_config =
  {
    boot_disk_kms_key;
    disk_size_gb;
    disk_type;
    enable_confidential_storage;
    guest_accelerator;
    image_type;
    labels;
    local_ssd_count;
    logging_variant;
    machine_type;
    metadata;
    min_cpu_platform;
    node_group;
    oauth_scopes;
    preemptible;
    resource_labels;
    resource_manager_tags;
    service_account;
    spot;
    tags;
    advanced_machine_features;
    confidential_nodes;
    ephemeral_storage_local_ssd_config;
    fast_socket;
    gcfs_config;
    gvnic;
    host_maintenance_policy;
    kubelet_config;
    linux_node_config;
    local_nvme_ssd_block_config;
    reservation_affinity;
    shielded_instance_config;
    sole_tenant_config;
    taint;
    workload_metadata_config;
  }

let node_pool__placement_policy ?policy_name ?tpu_topology ~type_ ()
    : node_pool__placement_policy =
  { policy_name; tpu_topology; type_ }

let node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    ?batch_node_count ?batch_percentage ?batch_soak_duration () :
    node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    =
  { batch_node_count; batch_percentage; batch_soak_duration }

let node_pool__upgrade_settings__blue_green_settings
    ?node_pool_soak_duration ~standard_rollout_policy () :
    node_pool__upgrade_settings__blue_green_settings =
  { node_pool_soak_duration; standard_rollout_policy }

let node_pool__upgrade_settings ?max_surge ?max_unavailable ?strategy
    ?(blue_green_settings = []) () : node_pool__upgrade_settings =
  { max_surge; max_unavailable; strategy; blue_green_settings }

let node_pool ?initial_node_count ?max_pods_per_node ?name
    ?name_prefix ?node_count ?node_locations ?version
    ?(autoscaling = []) ?(management = []) ?(network_config = [])
    ?(node_config = []) ?(placement_policy = [])
    ?(upgrade_settings = []) () : node_pool =
  {
    initial_node_count;
    max_pods_per_node;
    name;
    name_prefix;
    node_count;
    node_locations;
    version;
    autoscaling;
    management;
    network_config;
    node_config;
    placement_policy;
    upgrade_settings;
  }

let node_pool_auto_config__network_tags ?tags () :
    node_pool_auto_config__network_tags =
  { tags }

let node_pool_auto_config ?(network_tags = []) () :
    node_pool_auto_config =
  { network_tags }

let node_pool_defaults__node_config_defaults ?logging_variant () :
    node_pool_defaults__node_config_defaults =
  { logging_variant }

let node_pool_defaults ?(node_config_defaults = []) () :
    node_pool_defaults =
  { node_config_defaults }

let notification_config__pubsub__filter ~event_type () :
    notification_config__pubsub__filter =
  { event_type }

let notification_config__pubsub ?topic ?(filter = []) ~enabled () :
    notification_config__pubsub =
  { enabled; topic; filter }

let notification_config ~pubsub () : notification_config = { pubsub }

let private_cluster_config__master_global_access_config ~enabled () :
    private_cluster_config__master_global_access_config =
  { enabled }

let private_cluster_config ?enable_private_endpoint
    ?enable_private_nodes ?master_ipv4_cidr_block
    ?private_endpoint_subnetwork ?(master_global_access_config = [])
    () : private_cluster_config =
  {
    enable_private_endpoint;
    enable_private_nodes;
    master_ipv4_cidr_block;
    private_endpoint_subnetwork;
    master_global_access_config;
  }

let release_channel ~channel () : release_channel = { channel }

let resource_usage_export_config__bigquery_destination ~dataset_id ()
    : resource_usage_export_config__bigquery_destination =
  { dataset_id }

let resource_usage_export_config ?enable_network_egress_metering
    ?enable_resource_consumption_metering ~bigquery_destination () :
    resource_usage_export_config =
  {
    enable_network_egress_metering;
    enable_resource_consumption_metering;
    bigquery_destination;
  }

let security_posture_config ?mode ?vulnerability_mode () :
    security_posture_config =
  { mode; vulnerability_mode }

let service_external_ips_config ~enabled () :
    service_external_ips_config =
  { enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vertical_pod_autoscaling ~enabled () : vertical_pod_autoscaling =
  { enabled }

let workload_identity_config ?workload_pool () :
    workload_identity_config =
  { workload_pool }

let google_container_cluster ?allow_net_admin ?cluster_ipv4_cidr
    ?datapath_provider ?default_max_pods_per_node
    ?deletion_protection ?description ?enable_autopilot
    ?enable_intranode_visibility ?enable_kubernetes_alpha
    ?enable_l4_ilb_subsetting ?enable_legacy_abac
    ?enable_shielded_nodes ?enable_tpu ?id ?initial_node_count
    ?location ?logging_service ?min_master_version
    ?monitoring_service ?network ?networking_mode ?node_locations
    ?node_version ?private_ipv6_google_access ?project
    ?remove_default_node_pool ?resource_labels ?subnetwork
    ?(addons_config = []) ?(authenticator_groups_config = [])
    ?(binary_authorization = []) ?(cluster_autoscaling = [])
    ?(confidential_nodes = []) ?(cost_management_config = [])
    ?(database_encryption = []) ?(default_snat_status = [])
    ?(dns_config = []) ?(enable_k8s_beta_apis = []) ?(fleet = [])
    ?(gateway_api_config = []) ?(identity_service_config = [])
    ?(ip_allocation_policy = []) ?(logging_config = [])
    ?(maintenance_policy = []) ?(master_auth = [])
    ?(master_authorized_networks_config = [])
    ?(mesh_certificates = []) ?(monitoring_config = [])
    ?(network_policy = []) ?(node_config = []) ?(node_pool = [])
    ?(node_pool_auto_config = []) ?(node_pool_defaults = [])
    ?(notification_config = []) ?(private_cluster_config = [])
    ?(release_channel = []) ?(resource_usage_export_config = [])
    ?(security_posture_config = [])
    ?(service_external_ips_config = []) ?timeouts
    ?(vertical_pod_autoscaling = []) ?(workload_identity_config = [])
    ~name () : google_container_cluster =
  {
    allow_net_admin;
    cluster_ipv4_cidr;
    datapath_provider;
    default_max_pods_per_node;
    deletion_protection;
    description;
    enable_autopilot;
    enable_intranode_visibility;
    enable_kubernetes_alpha;
    enable_l4_ilb_subsetting;
    enable_legacy_abac;
    enable_shielded_nodes;
    enable_tpu;
    id;
    initial_node_count;
    location;
    logging_service;
    min_master_version;
    monitoring_service;
    name;
    network;
    networking_mode;
    node_locations;
    node_version;
    private_ipv6_google_access;
    project;
    remove_default_node_pool;
    resource_labels;
    subnetwork;
    addons_config;
    authenticator_groups_config;
    binary_authorization;
    cluster_autoscaling;
    confidential_nodes;
    cost_management_config;
    database_encryption;
    default_snat_status;
    dns_config;
    enable_k8s_beta_apis;
    fleet;
    gateway_api_config;
    identity_service_config;
    ip_allocation_policy;
    logging_config;
    maintenance_policy;
    master_auth;
    master_authorized_networks_config;
    mesh_certificates;
    monitoring_config;
    network_policy;
    node_config;
    node_pool;
    node_pool_auto_config;
    node_pool_defaults;
    notification_config;
    private_cluster_config;
    release_channel;
    resource_usage_export_config;
    security_posture_config;
    service_external_ips_config;
    timeouts;
    vertical_pod_autoscaling;
    workload_identity_config;
  }

type t = {
  tf_name : string;
  allow_net_admin : bool prop;
  cluster_ipv4_cidr : string prop;
  datapath_provider : string prop;
  default_max_pods_per_node : float prop;
  deletion_protection : bool prop;
  description : string prop;
  enable_autopilot : bool prop;
  enable_intranode_visibility : bool prop;
  enable_kubernetes_alpha : bool prop;
  enable_l4_ilb_subsetting : bool prop;
  enable_legacy_abac : bool prop;
  enable_shielded_nodes : bool prop;
  enable_tpu : bool prop;
  endpoint : string prop;
  id : string prop;
  initial_node_count : float prop;
  label_fingerprint : string prop;
  location : string prop;
  logging_service : string prop;
  master_version : string prop;
  min_master_version : string prop;
  monitoring_service : string prop;
  name : string prop;
  network : string prop;
  networking_mode : string prop;
  node_locations : string list prop;
  node_version : string prop;
  operation : string prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  remove_default_node_pool : bool prop;
  resource_labels : (string * string) list prop;
  self_link : string prop;
  services_ipv4_cidr : string prop;
  subnetwork : string prop;
  tpu_ipv4_cidr_block : string prop;
}

let make ?allow_net_admin ?cluster_ipv4_cidr ?datapath_provider
    ?default_max_pods_per_node ?deletion_protection ?description
    ?enable_autopilot ?enable_intranode_visibility
    ?enable_kubernetes_alpha ?enable_l4_ilb_subsetting
    ?enable_legacy_abac ?enable_shielded_nodes ?enable_tpu ?id
    ?initial_node_count ?location ?logging_service
    ?min_master_version ?monitoring_service ?network ?networking_mode
    ?node_locations ?node_version ?private_ipv6_google_access
    ?project ?remove_default_node_pool ?resource_labels ?subnetwork
    ?(addons_config = []) ?(authenticator_groups_config = [])
    ?(binary_authorization = []) ?(cluster_autoscaling = [])
    ?(confidential_nodes = []) ?(cost_management_config = [])
    ?(database_encryption = []) ?(default_snat_status = [])
    ?(dns_config = []) ?(enable_k8s_beta_apis = []) ?(fleet = [])
    ?(gateway_api_config = []) ?(identity_service_config = [])
    ?(ip_allocation_policy = []) ?(logging_config = [])
    ?(maintenance_policy = []) ?(master_auth = [])
    ?(master_authorized_networks_config = [])
    ?(mesh_certificates = []) ?(monitoring_config = [])
    ?(network_policy = []) ?(node_config = []) ?(node_pool = [])
    ?(node_pool_auto_config = []) ?(node_pool_defaults = [])
    ?(notification_config = []) ?(private_cluster_config = [])
    ?(release_channel = []) ?(resource_usage_export_config = [])
    ?(security_posture_config = [])
    ?(service_external_ips_config = []) ?timeouts
    ?(vertical_pod_autoscaling = []) ?(workload_identity_config = [])
    ~name __id =
  let __type = "google_container_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       allow_net_admin = Prop.computed __type __id "allow_net_admin";
       cluster_ipv4_cidr =
         Prop.computed __type __id "cluster_ipv4_cidr";
       datapath_provider =
         Prop.computed __type __id "datapath_provider";
       default_max_pods_per_node =
         Prop.computed __type __id "default_max_pods_per_node";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       description = Prop.computed __type __id "description";
       enable_autopilot =
         Prop.computed __type __id "enable_autopilot";
       enable_intranode_visibility =
         Prop.computed __type __id "enable_intranode_visibility";
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
       id = Prop.computed __type __id "id";
       initial_node_count =
         Prop.computed __type __id "initial_node_count";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       location = Prop.computed __type __id "location";
       logging_service = Prop.computed __type __id "logging_service";
       master_version = Prop.computed __type __id "master_version";
       min_master_version =
         Prop.computed __type __id "min_master_version";
       monitoring_service =
         Prop.computed __type __id "monitoring_service";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       networking_mode = Prop.computed __type __id "networking_mode";
       node_locations = Prop.computed __type __id "node_locations";
       node_version = Prop.computed __type __id "node_version";
       operation = Prop.computed __type __id "operation";
       private_ipv6_google_access =
         Prop.computed __type __id "private_ipv6_google_access";
       project = Prop.computed __type __id "project";
       remove_default_node_pool =
         Prop.computed __type __id "remove_default_node_pool";
       resource_labels = Prop.computed __type __id "resource_labels";
       self_link = Prop.computed __type __id "self_link";
       services_ipv4_cidr =
         Prop.computed __type __id "services_ipv4_cidr";
       subnetwork = Prop.computed __type __id "subnetwork";
       tpu_ipv4_cidr_block =
         Prop.computed __type __id "tpu_ipv4_cidr_block";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_cluster
        (google_container_cluster ?allow_net_admin ?cluster_ipv4_cidr
           ?datapath_provider ?default_max_pods_per_node
           ?deletion_protection ?description ?enable_autopilot
           ?enable_intranode_visibility ?enable_kubernetes_alpha
           ?enable_l4_ilb_subsetting ?enable_legacy_abac
           ?enable_shielded_nodes ?enable_tpu ?id ?initial_node_count
           ?location ?logging_service ?min_master_version
           ?monitoring_service ?network ?networking_mode
           ?node_locations ?node_version ?private_ipv6_google_access
           ?project ?remove_default_node_pool ?resource_labels
           ?subnetwork ~addons_config ~authenticator_groups_config
           ~binary_authorization ~cluster_autoscaling
           ~confidential_nodes ~cost_management_config
           ~database_encryption ~default_snat_status ~dns_config
           ~enable_k8s_beta_apis ~fleet ~gateway_api_config
           ~identity_service_config ~ip_allocation_policy
           ~logging_config ~maintenance_policy ~master_auth
           ~master_authorized_networks_config ~mesh_certificates
           ~monitoring_config ~network_policy ~node_config ~node_pool
           ~node_pool_auto_config ~node_pool_defaults
           ~notification_config ~private_cluster_config
           ~release_channel ~resource_usage_export_config
           ~security_posture_config ~service_external_ips_config
           ?timeouts ~vertical_pod_autoscaling
           ~workload_identity_config ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_net_admin ?cluster_ipv4_cidr
    ?datapath_provider ?default_max_pods_per_node
    ?deletion_protection ?description ?enable_autopilot
    ?enable_intranode_visibility ?enable_kubernetes_alpha
    ?enable_l4_ilb_subsetting ?enable_legacy_abac
    ?enable_shielded_nodes ?enable_tpu ?id ?initial_node_count
    ?location ?logging_service ?min_master_version
    ?monitoring_service ?network ?networking_mode ?node_locations
    ?node_version ?private_ipv6_google_access ?project
    ?remove_default_node_pool ?resource_labels ?subnetwork
    ?(addons_config = []) ?(authenticator_groups_config = [])
    ?(binary_authorization = []) ?(cluster_autoscaling = [])
    ?(confidential_nodes = []) ?(cost_management_config = [])
    ?(database_encryption = []) ?(default_snat_status = [])
    ?(dns_config = []) ?(enable_k8s_beta_apis = []) ?(fleet = [])
    ?(gateway_api_config = []) ?(identity_service_config = [])
    ?(ip_allocation_policy = []) ?(logging_config = [])
    ?(maintenance_policy = []) ?(master_auth = [])
    ?(master_authorized_networks_config = [])
    ?(mesh_certificates = []) ?(monitoring_config = [])
    ?(network_policy = []) ?(node_config = []) ?(node_pool = [])
    ?(node_pool_auto_config = []) ?(node_pool_defaults = [])
    ?(notification_config = []) ?(private_cluster_config = [])
    ?(release_channel = []) ?(resource_usage_export_config = [])
    ?(security_posture_config = [])
    ?(service_external_ips_config = []) ?timeouts
    ?(vertical_pod_autoscaling = []) ?(workload_identity_config = [])
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_net_admin ?cluster_ipv4_cidr ?datapath_provider
      ?default_max_pods_per_node ?deletion_protection ?description
      ?enable_autopilot ?enable_intranode_visibility
      ?enable_kubernetes_alpha ?enable_l4_ilb_subsetting
      ?enable_legacy_abac ?enable_shielded_nodes ?enable_tpu ?id
      ?initial_node_count ?location ?logging_service
      ?min_master_version ?monitoring_service ?network
      ?networking_mode ?node_locations ?node_version
      ?private_ipv6_google_access ?project ?remove_default_node_pool
      ?resource_labels ?subnetwork ~addons_config
      ~authenticator_groups_config ~binary_authorization
      ~cluster_autoscaling ~confidential_nodes
      ~cost_management_config ~database_encryption
      ~default_snat_status ~dns_config ~enable_k8s_beta_apis ~fleet
      ~gateway_api_config ~identity_service_config
      ~ip_allocation_policy ~logging_config ~maintenance_policy
      ~master_auth ~master_authorized_networks_config
      ~mesh_certificates ~monitoring_config ~network_policy
      ~node_config ~node_pool ~node_pool_auto_config
      ~node_pool_defaults ~notification_config
      ~private_cluster_config ~release_channel
      ~resource_usage_export_config ~security_posture_config
      ~service_external_ips_config ?timeouts
      ~vertical_pod_autoscaling ~workload_identity_config ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
