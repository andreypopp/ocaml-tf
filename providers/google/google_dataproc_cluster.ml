(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster_config__autoscaling_config = {
  policy_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__autoscaling_config) -> ()

let yojson_of_cluster_config__autoscaling_config =
  (function
   | { policy_uri = v_policy_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_uri in
         ("policy_uri", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__autoscaling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__autoscaling_config

[@@@deriving.end]

type cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators = {
  accelerator_count : float prop;
  accelerator_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators) ->
  ()

let yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators

[@@@deriving.end]

type cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config) ->
  ()

let yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config

[@@@deriving.end]

type cluster_config__auxiliary_node_groups__node_group__node_group_config = {
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  num_instances : float prop option; [@option]
  accelerators :
    cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    list;
  disk_config :
    cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__auxiliary_node_groups__node_group__node_group_config) ->
  ()

let yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config
    =
  (function
   | {
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       num_instances = v_num_instances;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
             v_disk_config
         in
         ("disk_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
             v_accelerators
         in
         ("accelerators", arg) :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
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
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__auxiliary_node_groups__node_group__node_group_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config

[@@@deriving.end]

type cluster_config__auxiliary_node_groups__node_group = {
  roles : string prop list;
  node_group_config :
    cluster_config__auxiliary_node_groups__node_group__node_group_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__auxiliary_node_groups__node_group) -> ()

let yojson_of_cluster_config__auxiliary_node_groups__node_group =
  (function
   | { roles = v_roles; node_group_config = v_node_group_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__auxiliary_node_groups__node_group__node_group_config
             v_node_group_config
         in
         ("node_group_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_roles
         in
         ("roles", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__auxiliary_node_groups__node_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__auxiliary_node_groups__node_group

[@@@deriving.end]

type cluster_config__auxiliary_node_groups = {
  node_group_id : string prop option; [@option]
  node_group : cluster_config__auxiliary_node_groups__node_group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__auxiliary_node_groups) -> ()

let yojson_of_cluster_config__auxiliary_node_groups =
  (function
   | { node_group_id = v_node_group_id; node_group = v_node_group }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__auxiliary_node_groups__node_group
             v_node_group
         in
         ("node_group", arg) :: bnds
       in
       let bnds =
         match v_node_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__auxiliary_node_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__auxiliary_node_groups

[@@@deriving.end]

type cluster_config__dataproc_metric_config__metrics = {
  metric_overrides : string prop list option; [@option]
  metric_source : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__dataproc_metric_config__metrics) -> ()

let yojson_of_cluster_config__dataproc_metric_config__metrics =
  (function
   | {
       metric_overrides = v_metric_overrides;
       metric_source = v_metric_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_source in
         ("metric_source", arg) :: bnds
       in
       let bnds =
         match v_metric_overrides with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metric_overrides", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__dataproc_metric_config__metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__dataproc_metric_config__metrics

[@@@deriving.end]

type cluster_config__dataproc_metric_config = {
  metrics : cluster_config__dataproc_metric_config__metrics list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__dataproc_metric_config) -> ()

let yojson_of_cluster_config__dataproc_metric_config =
  (function
   | { metrics = v_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__dataproc_metric_config__metrics
             v_metrics
         in
         ("metrics", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__dataproc_metric_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__dataproc_metric_config

[@@@deriving.end]

type cluster_config__encryption_config = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__encryption_config) -> ()

let yojson_of_cluster_config__encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__encryption_config

[@@@deriving.end]

type cluster_config__endpoint_config = {
  enable_http_port_access : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__endpoint_config) -> ()

let yojson_of_cluster_config__endpoint_config =
  (function
   | { enable_http_port_access = v_enable_http_port_access } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_http_port_access
         in
         ("enable_http_port_access", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__endpoint_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__endpoint_config

[@@@deriving.end]

type cluster_config__gce_cluster_config__node_group_affinity = {
  node_group_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__gce_cluster_config__node_group_affinity) ->
  ()

let yojson_of_cluster_config__gce_cluster_config__node_group_affinity
    =
  (function
   | { node_group_uri = v_node_group_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_group_uri
         in
         ("node_group_uri", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__gce_cluster_config__node_group_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__gce_cluster_config__node_group_affinity

[@@@deriving.end]

type cluster_config__gce_cluster_config__reservation_affinity = {
  consume_reservation_type : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__gce_cluster_config__reservation_affinity) ->
  ()

let yojson_of_cluster_config__gce_cluster_config__reservation_affinity
    =
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
         match v_consume_reservation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consume_reservation_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__gce_cluster_config__reservation_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__gce_cluster_config__reservation_affinity

[@@@deriving.end]

type cluster_config__gce_cluster_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
  enable_vtpm : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__gce_cluster_config__shielded_instance_config) ->
  ()

let yojson_of_cluster_config__gce_cluster_config__shielded_instance_config
    =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
       enable_vtpm = v_enable_vtpm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_vtpm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_vtpm", arg in
             bnd :: bnds
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
    : cluster_config__gce_cluster_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__gce_cluster_config__shielded_instance_config

[@@@deriving.end]

type cluster_config__gce_cluster_config = {
  internal_ip_only : bool prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  network : string prop option; [@option]
  service_account : string prop option; [@option]
  service_account_scopes : string prop list option; [@option]
  subnetwork : string prop option; [@option]
  tags : string prop list option; [@option]
  zone : string prop option; [@option]
  node_group_affinity :
    cluster_config__gce_cluster_config__node_group_affinity list;
  reservation_affinity :
    cluster_config__gce_cluster_config__reservation_affinity list;
  shielded_instance_config :
    cluster_config__gce_cluster_config__shielded_instance_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__gce_cluster_config) -> ()

let yojson_of_cluster_config__gce_cluster_config =
  (function
   | {
       internal_ip_only = v_internal_ip_only;
       metadata = v_metadata;
       network = v_network;
       service_account = v_service_account;
       service_account_scopes = v_service_account_scopes;
       subnetwork = v_subnetwork;
       tags = v_tags;
       zone = v_zone;
       node_group_affinity = v_node_group_affinity;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__gce_cluster_config__shielded_instance_config
             v_shielded_instance_config
         in
         ("shielded_instance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__gce_cluster_config__reservation_affinity
             v_reservation_affinity
         in
         ("reservation_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__gce_cluster_config__node_group_affinity
             v_node_group_affinity
         in
         ("node_group_affinity", arg) :: bnds
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
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_account_scopes", arg in
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
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
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
         match v_internal_ip_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_ip_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__gce_cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__gce_cluster_config

[@@@deriving.end]

type cluster_config__initialization_action = {
  script : string prop;
  timeout_sec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__initialization_action) -> ()

let yojson_of_cluster_config__initialization_action =
  (function
   | { script = v_script; timeout_sec = v_timeout_sec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script in
         ("script", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__initialization_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__initialization_action

[@@@deriving.end]

type cluster_config__lifecycle_config = {
  auto_delete_time : string prop option; [@option]
  idle_delete_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__lifecycle_config) -> ()

let yojson_of_cluster_config__lifecycle_config =
  (function
   | {
       auto_delete_time = v_auto_delete_time;
       idle_delete_ttl = v_idle_delete_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_idle_delete_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idle_delete_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_delete_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__lifecycle_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__lifecycle_config

[@@@deriving.end]

type cluster_config__master_config__accelerators = {
  accelerator_count : float prop;
  accelerator_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__master_config__accelerators) -> ()

let yojson_of_cluster_config__master_config__accelerators =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__master_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__master_config__accelerators

[@@@deriving.end]

type cluster_config__master_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__master_config__disk_config) -> ()

let yojson_of_cluster_config__master_config__disk_config =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__master_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__master_config__disk_config

[@@@deriving.end]

type cluster_config__master_config = {
  image_uri : string prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  num_instances : float prop option; [@option]
  accelerators : cluster_config__master_config__accelerators list;
  disk_config : cluster_config__master_config__disk_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__master_config) -> ()

let yojson_of_cluster_config__master_config =
  (function
   | {
       image_uri = v_image_uri;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       num_instances = v_num_instances;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__master_config__disk_config
             v_disk_config
         in
         ("disk_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__master_config__accelerators
             v_accelerators
         in
         ("accelerators", arg) :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
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
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__master_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__master_config

[@@@deriving.end]

type cluster_config__metastore_config = {
  dataproc_metastore_service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__metastore_config) -> ()

let yojson_of_cluster_config__metastore_config =
  (function
   | { dataproc_metastore_service = v_dataproc_metastore_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_dataproc_metastore_service
         in
         ("dataproc_metastore_service", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__metastore_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__metastore_config

[@@@deriving.end]

type cluster_config__preemptible_worker_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__preemptible_worker_config__disk_config) ->
  ()

let yojson_of_cluster_config__preemptible_worker_config__disk_config
    =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__preemptible_worker_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__preemptible_worker_config__disk_config

[@@@deriving.end]

type cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list = {
  machine_types : string prop list option; [@option]
  rank : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list) ->
  ()

let yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    =
  (function
   | { machine_types = v_machine_types; rank = v_rank } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rank with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rank", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "machine_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list

[@@@deriving.end]

type cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results = {
  machine_type : string prop;
  vm_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results) ->
  ()

let yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results
    =
  (function
   | { machine_type = v_machine_type; vm_count = v_vm_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vm_count in
         ("vm_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results

[@@@deriving.end]

type cluster_config__preemptible_worker_config__instance_flexibility_policy = {
  instance_selection_list :
    cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       cluster_config__preemptible_worker_config__instance_flexibility_policy) ->
  ()

let yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy
    =
  (function
   | { instance_selection_list = v_instance_selection_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
             v_instance_selection_list
         in
         ("instance_selection_list", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__preemptible_worker_config__instance_flexibility_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy

[@@@deriving.end]

type cluster_config__preemptible_worker_config = {
  num_instances : float prop option; [@option]
  preemptibility : string prop option; [@option]
  disk_config :
    cluster_config__preemptible_worker_config__disk_config list;
  instance_flexibility_policy :
    cluster_config__preemptible_worker_config__instance_flexibility_policy
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__preemptible_worker_config) -> ()

let yojson_of_cluster_config__preemptible_worker_config =
  (function
   | {
       num_instances = v_num_instances;
       preemptibility = v_preemptibility;
       disk_config = v_disk_config;
       instance_flexibility_policy = v_instance_flexibility_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__preemptible_worker_config__instance_flexibility_policy
             v_instance_flexibility_policy
         in
         ("instance_flexibility_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__preemptible_worker_config__disk_config
             v_disk_config
         in
         ("disk_config", arg) :: bnds
       in
       let bnds =
         match v_preemptibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemptibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__preemptible_worker_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__preemptible_worker_config

[@@@deriving.end]

type cluster_config__security_config__kerberos_config = {
  cross_realm_trust_admin_server : string prop option; [@option]
  cross_realm_trust_kdc : string prop option; [@option]
  cross_realm_trust_realm : string prop option; [@option]
  cross_realm_trust_shared_password_uri : string prop option;
      [@option]
  enable_kerberos : bool prop option; [@option]
  kdc_db_key_uri : string prop option; [@option]
  key_password_uri : string prop option; [@option]
  keystore_password_uri : string prop option; [@option]
  keystore_uri : string prop option; [@option]
  kms_key_uri : string prop;
  realm : string prop option; [@option]
  root_principal_password_uri : string prop;
  tgt_lifetime_hours : float prop option; [@option]
  truststore_password_uri : string prop option; [@option]
  truststore_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cluster_config__security_config__kerberos_config) -> ()

let yojson_of_cluster_config__security_config__kerberos_config =
  (function
   | {
       cross_realm_trust_admin_server =
         v_cross_realm_trust_admin_server;
       cross_realm_trust_kdc = v_cross_realm_trust_kdc;
       cross_realm_trust_realm = v_cross_realm_trust_realm;
       cross_realm_trust_shared_password_uri =
         v_cross_realm_trust_shared_password_uri;
       enable_kerberos = v_enable_kerberos;
       kdc_db_key_uri = v_kdc_db_key_uri;
       key_password_uri = v_key_password_uri;
       keystore_password_uri = v_keystore_password_uri;
       keystore_uri = v_keystore_uri;
       kms_key_uri = v_kms_key_uri;
       realm = v_realm;
       root_principal_password_uri = v_root_principal_password_uri;
       tgt_lifetime_hours = v_tgt_lifetime_hours;
       truststore_password_uri = v_truststore_password_uri;
       truststore_uri = v_truststore_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_truststore_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "truststore_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_truststore_password_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "truststore_password_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tgt_lifetime_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tgt_lifetime_hours", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_root_principal_password_uri
         in
         ("root_principal_password_uri", arg) :: bnds
       in
       let bnds =
         match v_realm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "realm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_uri in
         ("kms_key_uri", arg) :: bnds
       in
       let bnds =
         match v_keystore_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keystore_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keystore_password_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keystore_password_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_password_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_password_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kdc_db_key_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kdc_db_key_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_kerberos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_kerberos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_shared_password_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cross_realm_trust_shared_password_uri", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_realm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_realm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_kdc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_kdc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_admin_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_admin_server", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__security_config__kerberos_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__security_config__kerberos_config

[@@@deriving.end]

type cluster_config__security_config = {
  kerberos_config :
    cluster_config__security_config__kerberos_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__security_config) -> ()

let yojson_of_cluster_config__security_config =
  (function
   | { kerberos_config = v_kerberos_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__security_config__kerberos_config
             v_kerberos_config
         in
         ("kerberos_config", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__security_config

[@@@deriving.end]

type cluster_config__software_config = {
  image_version : string prop option; [@option]
  optional_components : string prop list option; [@option]
  override_properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__software_config) -> ()

let yojson_of_cluster_config__software_config =
  (function
   | {
       image_version = v_image_version;
       optional_components = v_optional_components;
       override_properties = v_override_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_override_properties with
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
             let bnd = "override_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "optional_components", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__software_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__software_config

[@@@deriving.end]

type cluster_config__worker_config__accelerators = {
  accelerator_count : float prop;
  accelerator_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__worker_config__accelerators) -> ()

let yojson_of_cluster_config__worker_config__accelerators =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : cluster_config__worker_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__worker_config__accelerators

[@@@deriving.end]

type cluster_config__worker_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__worker_config__disk_config) -> ()

let yojson_of_cluster_config__worker_config__disk_config =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__worker_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__worker_config__disk_config

[@@@deriving.end]

type cluster_config__worker_config = {
  image_uri : string prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  min_num_instances : float prop option; [@option]
  num_instances : float prop option; [@option]
  accelerators : cluster_config__worker_config__accelerators list;
  disk_config : cluster_config__worker_config__disk_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config__worker_config) -> ()

let yojson_of_cluster_config__worker_config =
  (function
   | {
       image_uri = v_image_uri;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       min_num_instances = v_min_num_instances;
       num_instances = v_num_instances;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__worker_config__disk_config
             v_disk_config
         in
         ("disk_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__worker_config__accelerators
             v_accelerators
         in
         ("accelerators", arg) :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_num_instances", arg in
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
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config__worker_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config__worker_config

[@@@deriving.end]

type cluster_config = {
  staging_bucket : string prop option; [@option]
  temp_bucket : string prop option; [@option]
  autoscaling_config : cluster_config__autoscaling_config list;
  auxiliary_node_groups : cluster_config__auxiliary_node_groups list;
  dataproc_metric_config :
    cluster_config__dataproc_metric_config list;
  encryption_config : cluster_config__encryption_config list;
  endpoint_config : cluster_config__endpoint_config list;
  gce_cluster_config : cluster_config__gce_cluster_config list;
  initialization_action : cluster_config__initialization_action list;
  lifecycle_config : cluster_config__lifecycle_config list;
  master_config : cluster_config__master_config list;
  metastore_config : cluster_config__metastore_config list;
  preemptible_worker_config :
    cluster_config__preemptible_worker_config list;
  security_config : cluster_config__security_config list;
  software_config : cluster_config__software_config list;
  worker_config : cluster_config__worker_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_config) -> ()

let yojson_of_cluster_config =
  (function
   | {
       staging_bucket = v_staging_bucket;
       temp_bucket = v_temp_bucket;
       autoscaling_config = v_autoscaling_config;
       auxiliary_node_groups = v_auxiliary_node_groups;
       dataproc_metric_config = v_dataproc_metric_config;
       encryption_config = v_encryption_config;
       endpoint_config = v_endpoint_config;
       gce_cluster_config = v_gce_cluster_config;
       initialization_action = v_initialization_action;
       lifecycle_config = v_lifecycle_config;
       master_config = v_master_config;
       metastore_config = v_metastore_config;
       preemptible_worker_config = v_preemptible_worker_config;
       security_config = v_security_config;
       software_config = v_software_config;
       worker_config = v_worker_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__worker_config
             v_worker_config
         in
         ("worker_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__software_config
             v_software_config
         in
         ("software_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__security_config
             v_security_config
         in
         ("security_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__preemptible_worker_config
             v_preemptible_worker_config
         in
         ("preemptible_worker_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__metastore_config
             v_metastore_config
         in
         ("metastore_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__master_config
             v_master_config
         in
         ("master_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__lifecycle_config
             v_lifecycle_config
         in
         ("lifecycle_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__initialization_action
             v_initialization_action
         in
         ("initialization_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__gce_cluster_config
             v_gce_cluster_config
         in
         ("gce_cluster_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__endpoint_config
             v_endpoint_config
         in
         ("endpoint_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config__encryption_config
             v_encryption_config
         in
         ("encryption_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__dataproc_metric_config
             v_dataproc_metric_config
         in
         ("dataproc_metric_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__auxiliary_node_groups
             v_auxiliary_node_groups
         in
         ("auxiliary_node_groups", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cluster_config__autoscaling_config
             v_autoscaling_config
         in
         ("autoscaling_config", arg) :: bnds
       in
       let bnds =
         match v_temp_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temp_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_staging_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "staging_bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_config

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

type virtual_cluster_config__auxiliary_services_config__metastore_config = {
  dataproc_metastore_service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__auxiliary_services_config__metastore_config) ->
  ()

let yojson_of_virtual_cluster_config__auxiliary_services_config__metastore_config
    =
  (function
   | { dataproc_metastore_service = v_dataproc_metastore_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dataproc_metastore_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_metastore_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__auxiliary_services_config__metastore_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__auxiliary_services_config__metastore_config

[@@@deriving.end]

type virtual_cluster_config__auxiliary_services_config__spark_history_server_config = {
  dataproc_cluster : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__auxiliary_services_config__spark_history_server_config) ->
  ()

let yojson_of_virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    =
  (function
   | { dataproc_cluster = v_dataproc_cluster } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dataproc_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_cluster", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__auxiliary_services_config__spark_history_server_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__auxiliary_services_config__spark_history_server_config

[@@@deriving.end]

type virtual_cluster_config__auxiliary_services_config = {
  metastore_config :
    virtual_cluster_config__auxiliary_services_config__metastore_config
    list;
  spark_history_server_config :
    virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_cluster_config__auxiliary_services_config) -> ()

let yojson_of_virtual_cluster_config__auxiliary_services_config =
  (function
   | {
       metastore_config = v_metastore_config;
       spark_history_server_config = v_spark_history_server_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__auxiliary_services_config__spark_history_server_config
             v_spark_history_server_config
         in
         ("spark_history_server_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__auxiliary_services_config__metastore_config
             v_metastore_config
         in
         ("metastore_config", arg) :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__auxiliary_services_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_cluster_config__auxiliary_services_config

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling = {
  max_node_count : float prop option; [@option]
  min_node_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config = {
  local_ssd_count : float prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  preemptible : bool prop option; [@option]
  spot : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    =
  (function
   | {
       local_ssd_count = v_local_ssd_count;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       preemptible = v_preemptible;
       spot = v_spot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_preemptible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preemptible", arg in
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
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
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
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config = {
  locations : string prop list;
  autoscaling :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    list;
  config :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    =
  (function
   | {
       locations = v_locations;
       autoscaling = v_autoscaling;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
             v_config
         in
         ("config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
             v_autoscaling
         in
         ("autoscaling", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_locations
         in
         ("locations", arg) :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target = {
  node_pool : string prop;
  roles : string prop list;
  node_pool_config :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    =
  (function
   | {
       node_pool = v_node_pool;
       roles = v_roles;
       node_pool_config = v_node_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
             v_node_pool_config
         in
         ("node_pool_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_roles
         in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_pool in
         ("node_pool", arg) :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config = {
  gke_cluster_target : string prop option; [@option]
  node_pool_target :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    =
  (function
   | {
       gke_cluster_target = v_gke_cluster_target;
       node_pool_target = v_node_pool_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
             v_node_pool_target
         in
         ("node_pool_target", arg) :: bnds
       in
       let bnds =
         match v_gke_cluster_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gke_cluster_target", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config = {
  component_version : (string * string prop) list;
  properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config) ->
  ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    =
  (function
   | {
       component_version = v_component_version;
       properties = v_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_properties with
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
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_component_version
         in
         ("component_version", arg) :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config

[@@@deriving.end]

type virtual_cluster_config__kubernetes_cluster_config = {
  kubernetes_namespace : string prop option; [@option]
  gke_cluster_config :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    list;
  kubernetes_software_config :
    virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_cluster_config__kubernetes_cluster_config) -> ()

let yojson_of_virtual_cluster_config__kubernetes_cluster_config =
  (function
   | {
       kubernetes_namespace = v_kubernetes_namespace;
       gke_cluster_config = v_gke_cluster_config;
       kubernetes_software_config = v_kubernetes_software_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
             v_kubernetes_software_config
         in
         ("kubernetes_software_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
             v_gke_cluster_config
         in
         ("gke_cluster_config", arg) :: bnds
       in
       let bnds =
         match v_kubernetes_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kubernetes_namespace", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config__kubernetes_cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_cluster_config__kubernetes_cluster_config

[@@@deriving.end]

type virtual_cluster_config = {
  staging_bucket : string prop option; [@option]
  auxiliary_services_config :
    virtual_cluster_config__auxiliary_services_config list;
  kubernetes_cluster_config :
    virtual_cluster_config__kubernetes_cluster_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_cluster_config) -> ()

let yojson_of_virtual_cluster_config =
  (function
   | {
       staging_bucket = v_staging_bucket;
       auxiliary_services_config = v_auxiliary_services_config;
       kubernetes_cluster_config = v_kubernetes_cluster_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__kubernetes_cluster_config
             v_kubernetes_cluster_config
         in
         ("kubernetes_cluster_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_cluster_config__auxiliary_services_config
             v_auxiliary_services_config
         in
         ("auxiliary_services_config", arg) :: bnds
       in
       let bnds =
         match v_staging_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "staging_bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_cluster_config

[@@@deriving.end]

type google_dataproc_cluster = {
  graceful_decommission_timeout : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  cluster_config : cluster_config list;
  timeouts : timeouts option;
  virtual_cluster_config : virtual_cluster_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_cluster) -> ()

let yojson_of_google_dataproc_cluster =
  (function
   | {
       graceful_decommission_timeout =
         v_graceful_decommission_timeout;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       cluster_config = v_cluster_config;
       timeouts = v_timeouts;
       virtual_cluster_config = v_virtual_cluster_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_cluster_config
             v_virtual_cluster_config
         in
         ("virtual_cluster_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_config v_cluster_config
         in
         ("cluster_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_graceful_decommission_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "graceful_decommission_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataproc_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_cluster

[@@@deriving.end]

let cluster_config__autoscaling_config ~policy_uri () :
    cluster_config__autoscaling_config =
  { policy_uri }

let cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    ~accelerator_count ~accelerator_type () :
    cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    =
  { accelerator_count; accelerator_type }

let cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    ?boot_disk_size_gb ?boot_disk_type ?num_local_ssds () :
    cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let cluster_config__auxiliary_node_groups__node_group__node_group_config
    ?machine_type ?min_cpu_platform ?num_instances
    ?(disk_config = []) ~accelerators () :
    cluster_config__auxiliary_node_groups__node_group__node_group_config
    =
  {
    machine_type;
    min_cpu_platform;
    num_instances;
    accelerators;
    disk_config;
  }

let cluster_config__auxiliary_node_groups__node_group
    ?(node_group_config = []) ~roles () :
    cluster_config__auxiliary_node_groups__node_group =
  { roles; node_group_config }

let cluster_config__auxiliary_node_groups ?node_group_id ~node_group
    () : cluster_config__auxiliary_node_groups =
  { node_group_id; node_group }

let cluster_config__dataproc_metric_config__metrics ?metric_overrides
    ~metric_source () :
    cluster_config__dataproc_metric_config__metrics =
  { metric_overrides; metric_source }

let cluster_config__dataproc_metric_config ~metrics () :
    cluster_config__dataproc_metric_config =
  { metrics }

let cluster_config__encryption_config ~kms_key_name () :
    cluster_config__encryption_config =
  { kms_key_name }

let cluster_config__endpoint_config ~enable_http_port_access () :
    cluster_config__endpoint_config =
  { enable_http_port_access }

let cluster_config__gce_cluster_config__node_group_affinity
    ~node_group_uri () :
    cluster_config__gce_cluster_config__node_group_affinity =
  { node_group_uri }

let cluster_config__gce_cluster_config__reservation_affinity
    ?consume_reservation_type ?key ?values () :
    cluster_config__gce_cluster_config__reservation_affinity =
  { consume_reservation_type; key; values }

let cluster_config__gce_cluster_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot ?enable_vtpm ()
    : cluster_config__gce_cluster_config__shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let cluster_config__gce_cluster_config ?internal_ip_only ?metadata
    ?network ?service_account ?service_account_scopes ?subnetwork
    ?tags ?zone ?(node_group_affinity = [])
    ?(reservation_affinity = []) ?(shielded_instance_config = []) ()
    : cluster_config__gce_cluster_config =
  {
    internal_ip_only;
    metadata;
    network;
    service_account;
    service_account_scopes;
    subnetwork;
    tags;
    zone;
    node_group_affinity;
    reservation_affinity;
    shielded_instance_config;
  }

let cluster_config__initialization_action ?timeout_sec ~script () :
    cluster_config__initialization_action =
  { script; timeout_sec }

let cluster_config__lifecycle_config ?auto_delete_time
    ?idle_delete_ttl () : cluster_config__lifecycle_config =
  { auto_delete_time; idle_delete_ttl }

let cluster_config__master_config__accelerators ~accelerator_count
    ~accelerator_type () :
    cluster_config__master_config__accelerators =
  { accelerator_count; accelerator_type }

let cluster_config__master_config__disk_config ?boot_disk_size_gb
    ?boot_disk_type ?num_local_ssds () :
    cluster_config__master_config__disk_config =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let cluster_config__master_config ?image_uri ?machine_type
    ?min_cpu_platform ?num_instances ?(disk_config = [])
    ~accelerators () : cluster_config__master_config =
  {
    image_uri;
    machine_type;
    min_cpu_platform;
    num_instances;
    accelerators;
    disk_config;
  }

let cluster_config__metastore_config ~dataproc_metastore_service () :
    cluster_config__metastore_config =
  { dataproc_metastore_service }

let cluster_config__preemptible_worker_config__disk_config
    ?boot_disk_size_gb ?boot_disk_type ?num_local_ssds () :
    cluster_config__preemptible_worker_config__disk_config =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    ?machine_types ?rank () :
    cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    =
  { machine_types; rank }

let cluster_config__preemptible_worker_config__instance_flexibility_policy
    ?(instance_selection_list = []) () :
    cluster_config__preemptible_worker_config__instance_flexibility_policy
    =
  { instance_selection_list }

let cluster_config__preemptible_worker_config ?num_instances
    ?preemptibility ?(disk_config = [])
    ?(instance_flexibility_policy = []) () :
    cluster_config__preemptible_worker_config =
  {
    num_instances;
    preemptibility;
    disk_config;
    instance_flexibility_policy;
  }

let cluster_config__security_config__kerberos_config
    ?cross_realm_trust_admin_server ?cross_realm_trust_kdc
    ?cross_realm_trust_realm ?cross_realm_trust_shared_password_uri
    ?enable_kerberos ?kdc_db_key_uri ?key_password_uri
    ?keystore_password_uri ?keystore_uri ?realm ?tgt_lifetime_hours
    ?truststore_password_uri ?truststore_uri ~kms_key_uri
    ~root_principal_password_uri () :
    cluster_config__security_config__kerberos_config =
  {
    cross_realm_trust_admin_server;
    cross_realm_trust_kdc;
    cross_realm_trust_realm;
    cross_realm_trust_shared_password_uri;
    enable_kerberos;
    kdc_db_key_uri;
    key_password_uri;
    keystore_password_uri;
    keystore_uri;
    kms_key_uri;
    realm;
    root_principal_password_uri;
    tgt_lifetime_hours;
    truststore_password_uri;
    truststore_uri;
  }

let cluster_config__security_config ~kerberos_config () :
    cluster_config__security_config =
  { kerberos_config }

let cluster_config__software_config ?image_version
    ?optional_components ?override_properties () :
    cluster_config__software_config =
  { image_version; optional_components; override_properties }

let cluster_config__worker_config__accelerators ~accelerator_count
    ~accelerator_type () :
    cluster_config__worker_config__accelerators =
  { accelerator_count; accelerator_type }

let cluster_config__worker_config__disk_config ?boot_disk_size_gb
    ?boot_disk_type ?num_local_ssds () :
    cluster_config__worker_config__disk_config =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let cluster_config__worker_config ?image_uri ?machine_type
    ?min_cpu_platform ?min_num_instances ?num_instances
    ?(disk_config = []) ~accelerators () :
    cluster_config__worker_config =
  {
    image_uri;
    machine_type;
    min_cpu_platform;
    min_num_instances;
    num_instances;
    accelerators;
    disk_config;
  }

let cluster_config ?staging_bucket ?temp_bucket
    ?(autoscaling_config = []) ?(auxiliary_node_groups = [])
    ?(dataproc_metric_config = []) ?(encryption_config = [])
    ?(endpoint_config = []) ?(gce_cluster_config = [])
    ?(initialization_action = []) ?(lifecycle_config = [])
    ?(master_config = []) ?(metastore_config = [])
    ?(preemptible_worker_config = []) ?(security_config = [])
    ?(software_config = []) ?(worker_config = []) () : cluster_config
    =
  {
    staging_bucket;
    temp_bucket;
    autoscaling_config;
    auxiliary_node_groups;
    dataproc_metric_config;
    encryption_config;
    endpoint_config;
    gce_cluster_config;
    initialization_action;
    lifecycle_config;
    master_config;
    metastore_config;
    preemptible_worker_config;
    security_config;
    software_config;
    worker_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_cluster_config__auxiliary_services_config__metastore_config
    ?dataproc_metastore_service () :
    virtual_cluster_config__auxiliary_services_config__metastore_config
    =
  { dataproc_metastore_service }

let virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    ?dataproc_cluster () :
    virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    =
  { dataproc_cluster }

let virtual_cluster_config__auxiliary_services_config
    ?(metastore_config = []) ?(spark_history_server_config = []) () :
    virtual_cluster_config__auxiliary_services_config =
  { metastore_config; spark_history_server_config }

let virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    ?max_node_count ?min_node_count () :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    =
  { max_node_count; min_node_count }

let virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    ?local_ssd_count ?machine_type ?min_cpu_platform ?preemptible
    ?spot () :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    =
  {
    local_ssd_count;
    machine_type;
    min_cpu_platform;
    preemptible;
    spot;
  }

let virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    ?(autoscaling = []) ?(config = []) ~locations () :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    =
  { locations; autoscaling; config }

let virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    ?(node_pool_config = []) ~node_pool ~roles () :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    =
  { node_pool; roles; node_pool_config }

let virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    ?gke_cluster_target ?(node_pool_target = []) () :
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    =
  { gke_cluster_target; node_pool_target }

let virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    ?properties ~component_version () :
    virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    =
  { component_version; properties }

let virtual_cluster_config__kubernetes_cluster_config
    ?kubernetes_namespace ~gke_cluster_config
    ~kubernetes_software_config () :
    virtual_cluster_config__kubernetes_cluster_config =
  {
    kubernetes_namespace;
    gke_cluster_config;
    kubernetes_software_config;
  }

let virtual_cluster_config ?staging_bucket
    ?(auxiliary_services_config = [])
    ?(kubernetes_cluster_config = []) () : virtual_cluster_config =
  {
    staging_bucket;
    auxiliary_services_config;
    kubernetes_cluster_config;
  }

let google_dataproc_cluster ?graceful_decommission_timeout ?id
    ?labels ?project ?region ?(cluster_config = []) ?timeouts
    ?(virtual_cluster_config = []) ~name () : google_dataproc_cluster
    =
  {
    graceful_decommission_timeout;
    id;
    labels;
    name;
    project;
    region;
    cluster_config;
    timeouts;
    virtual_cluster_config;
  }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  graceful_decommission_timeout : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?graceful_decommission_timeout ?id ?labels ?project ?region
    ?(cluster_config = []) ?timeouts ?(virtual_cluster_config = [])
    ~name __id =
  let __type = "google_dataproc_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       graceful_decommission_timeout =
         Prop.computed __type __id "graceful_decommission_timeout";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_cluster
        (google_dataproc_cluster ?graceful_decommission_timeout ?id
           ?labels ?project ?region ~cluster_config ?timeouts
           ~virtual_cluster_config ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?graceful_decommission_timeout ?id ?labels
    ?project ?region ?(cluster_config = []) ?timeouts
    ?(virtual_cluster_config = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?graceful_decommission_timeout ?id ?labels ?project ?region
      ~cluster_config ?timeouts ~virtual_cluster_config ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
