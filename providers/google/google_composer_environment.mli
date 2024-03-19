(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type config__data_retention_config__task_logs_retention_config

val config__data_retention_config__task_logs_retention_config :
  ?storage_mode:string prop ->
  unit ->
  config__data_retention_config__task_logs_retention_config

type config__data_retention_config

val config__data_retention_config :
  task_logs_retention_config:
    config__data_retention_config__task_logs_retention_config list ->
  unit ->
  config__data_retention_config

type config__database_config

val config__database_config :
  ?machine_type:string prop ->
  ?zone:string prop ->
  unit ->
  config__database_config

type config__encryption_config

val config__encryption_config :
  kms_key_name:string prop -> unit -> config__encryption_config

type config__maintenance_window

val config__maintenance_window :
  end_time:string prop ->
  recurrence:string prop ->
  start_time:string prop ->
  unit ->
  config__maintenance_window

type config__master_authorized_networks_config__cidr_blocks

val config__master_authorized_networks_config__cidr_blocks :
  ?display_name:string prop ->
  cidr_block:string prop ->
  unit ->
  config__master_authorized_networks_config__cidr_blocks

type config__master_authorized_networks_config

val config__master_authorized_networks_config :
  enabled:bool prop ->
  cidr_blocks:
    config__master_authorized_networks_config__cidr_blocks list ->
  unit ->
  config__master_authorized_networks_config

type config__node_config__ip_allocation_policy = {
  cluster_ipv4_cidr_block : string prop;
      (** cluster_ipv4_cidr_block *)
  cluster_secondary_range_name : string prop;
      (** cluster_secondary_range_name *)
  services_ipv4_cidr_block : string prop;
      (** services_ipv4_cidr_block *)
  services_secondary_range_name : string prop;
      (** services_secondary_range_name *)
  use_ip_aliases : bool prop;  (** use_ip_aliases *)
}

type config__node_config

val config__node_config :
  ?disk_size_gb:float prop ->
  ?enable_ip_masq_agent:bool prop ->
  ?ip_allocation_policy:
    config__node_config__ip_allocation_policy list ->
  ?machine_type:string prop ->
  ?network:string prop ->
  ?oauth_scopes:string prop list ->
  ?service_account:string prop ->
  ?subnetwork:string prop ->
  ?tags:string prop list ->
  ?zone:string prop ->
  unit ->
  config__node_config

type config__private_environment_config

val config__private_environment_config :
  ?cloud_composer_connection_subnetwork:string prop ->
  ?cloud_composer_network_ipv4_cidr_block:string prop ->
  ?cloud_sql_ipv4_cidr_block:string prop ->
  ?connection_type:string prop ->
  ?enable_private_endpoint:bool prop ->
  ?enable_privately_used_public_ips:bool prop ->
  ?master_ipv4_cidr_block:string prop ->
  ?web_server_ipv4_cidr_block:string prop ->
  unit ->
  config__private_environment_config

type config__recovery_config__scheduled_snapshots_config

val config__recovery_config__scheduled_snapshots_config :
  ?snapshot_creation_schedule:string prop ->
  ?snapshot_location:string prop ->
  ?time_zone:string prop ->
  enabled:bool prop ->
  unit ->
  config__recovery_config__scheduled_snapshots_config

type config__recovery_config

val config__recovery_config :
  scheduled_snapshots_config:
    config__recovery_config__scheduled_snapshots_config list ->
  unit ->
  config__recovery_config

type config__software_config

val config__software_config :
  ?airflow_config_overrides:(string * string prop) list ->
  ?env_variables:(string * string prop) list ->
  ?image_version:string prop ->
  ?pypi_packages:(string * string prop) list ->
  ?python_version:string prop ->
  ?scheduler_count:float prop ->
  unit ->
  config__software_config

type config__web_server_config

val config__web_server_config :
  machine_type:string prop -> unit -> config__web_server_config

type config__web_server_network_access_control__allowed_ip_range

val config__web_server_network_access_control__allowed_ip_range :
  ?description:string prop ->
  value:string prop ->
  unit ->
  config__web_server_network_access_control__allowed_ip_range

type config__web_server_network_access_control

val config__web_server_network_access_control :
  allowed_ip_range:
    config__web_server_network_access_control__allowed_ip_range list ->
  unit ->
  config__web_server_network_access_control

type config__workloads_config__scheduler

val config__workloads_config__scheduler :
  ?count:float prop ->
  ?cpu:float prop ->
  ?memory_gb:float prop ->
  ?storage_gb:float prop ->
  unit ->
  config__workloads_config__scheduler

type config__workloads_config__triggerer

val config__workloads_config__triggerer :
  count:float prop ->
  cpu:float prop ->
  memory_gb:float prop ->
  unit ->
  config__workloads_config__triggerer

type config__workloads_config__web_server

val config__workloads_config__web_server :
  ?cpu:float prop ->
  ?memory_gb:float prop ->
  ?storage_gb:float prop ->
  unit ->
  config__workloads_config__web_server

type config__workloads_config__worker

val config__workloads_config__worker :
  ?cpu:float prop ->
  ?max_count:float prop ->
  ?memory_gb:float prop ->
  ?min_count:float prop ->
  ?storage_gb:float prop ->
  unit ->
  config__workloads_config__worker

type config__workloads_config

val config__workloads_config :
  scheduler:config__workloads_config__scheduler list ->
  triggerer:config__workloads_config__triggerer list ->
  web_server:config__workloads_config__web_server list ->
  worker:config__workloads_config__worker list ->
  unit ->
  config__workloads_config

type config

val config :
  ?environment_size:string prop ->
  ?node_count:float prop ->
  ?resilience_mode:string prop ->
  data_retention_config:config__data_retention_config list ->
  database_config:config__database_config list ->
  encryption_config:config__encryption_config list ->
  maintenance_window:config__maintenance_window list ->
  master_authorized_networks_config:
    config__master_authorized_networks_config list ->
  node_config:config__node_config list ->
  private_environment_config:config__private_environment_config list ->
  recovery_config:config__recovery_config list ->
  software_config:config__software_config list ->
  web_server_config:config__web_server_config list ->
  web_server_network_access_control:
    config__web_server_network_access_control list ->
  workloads_config:config__workloads_config list ->
  unit ->
  config

type storage_config

val storage_config : bucket:string prop -> unit -> storage_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_composer_environment

val google_composer_environment :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  config:config list ->
  storage_config:storage_config list ->
  unit ->
  google_composer_environment

val yojson_of_google_composer_environment :
  google_composer_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  config:config list ->
  storage_config:storage_config list ->
  string ->
  t
