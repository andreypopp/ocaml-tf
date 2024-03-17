(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_composer_environment__config__data_retention_config__task_logs_retention_config

type google_composer_environment__config__data_retention_config
type google_composer_environment__config__database_config
type google_composer_environment__config__encryption_config
type google_composer_environment__config__maintenance_window

type google_composer_environment__config__master_authorized_networks_config__cidr_blocks

type google_composer_environment__config__master_authorized_networks_config

type google_composer_environment__config__node_config__ip_allocation_policy = {
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

type google_composer_environment__config__node_config
type google_composer_environment__config__private_environment_config

type google_composer_environment__config__recovery_config__scheduled_snapshots_config

type google_composer_environment__config__recovery_config
type google_composer_environment__config__software_config
type google_composer_environment__config__web_server_config

type google_composer_environment__config__web_server_network_access_control__allowed_ip_range

type google_composer_environment__config__web_server_network_access_control

type google_composer_environment__config__workloads_config__scheduler
type google_composer_environment__config__workloads_config__triggerer
type google_composer_environment__config__workloads_config__web_server
type google_composer_environment__config__workloads_config__worker
type google_composer_environment__config__workloads_config
type google_composer_environment__config
type google_composer_environment__storage_config
type google_composer_environment__timeouts
type google_composer_environment

val google_composer_environment :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_composer_environment__timeouts ->
  name:string prop ->
  config:google_composer_environment__config list ->
  storage_config:google_composer_environment__storage_config list ->
  string ->
  unit
