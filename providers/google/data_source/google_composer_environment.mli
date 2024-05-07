(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config__workloads_config__worker = {
  cpu : float prop;  (** cpu *)
  max_count : float prop;  (** max_count *)
  memory_gb : float prop;  (** memory_gb *)
  min_count : float prop;  (** min_count *)
  storage_gb : float prop;  (** storage_gb *)
}

type config__workloads_config__web_server = {
  cpu : float prop;  (** cpu *)
  memory_gb : float prop;  (** memory_gb *)
  storage_gb : float prop;  (** storage_gb *)
}

type config__workloads_config__triggerer = {
  count : float prop;  (** count *)
  cpu : float prop;  (** cpu *)
  memory_gb : float prop;  (** memory_gb *)
}

type config__workloads_config__scheduler = {
  count : float prop;  (** count *)
  cpu : float prop;  (** cpu *)
  memory_gb : float prop;  (** memory_gb *)
  storage_gb : float prop;  (** storage_gb *)
}

type config__workloads_config = {
  scheduler : config__workloads_config__scheduler list;
      (** scheduler *)
  triggerer : config__workloads_config__triggerer list;
      (** triggerer *)
  web_server : config__workloads_config__web_server list;
      (** web_server *)
  worker : config__workloads_config__worker list;  (** worker *)
}

type config__web_server_network_access_control__allowed_ip_range = {
  description : string prop;  (** description *)
  value : string prop;  (** value *)
}

type config__web_server_network_access_control = {
  allowed_ip_range :
    config__web_server_network_access_control__allowed_ip_range list;
      (** allowed_ip_range *)
}

type config__web_server_config = {
  machine_type : string prop;  (** machine_type *)
}

type config__software_config = {
  airflow_config_overrides : (string * string prop) list;
      (** airflow_config_overrides *)
  env_variables : (string * string prop) list;  (** env_variables *)
  image_version : string prop;  (** image_version *)
  pypi_packages : (string * string prop) list;  (** pypi_packages *)
  python_version : string prop;  (** python_version *)
  scheduler_count : float prop;  (** scheduler_count *)
}

type config__recovery_config__scheduled_snapshots_config = {
  enabled : bool prop;  (** enabled *)
  snapshot_creation_schedule : string prop;
      (** snapshot_creation_schedule *)
  snapshot_location : string prop;  (** snapshot_location *)
  time_zone : string prop;  (** time_zone *)
}

type config__recovery_config = {
  scheduled_snapshots_config :
    config__recovery_config__scheduled_snapshots_config list;
      (** scheduled_snapshots_config *)
}

type config__private_environment_config = {
  cloud_composer_connection_subnetwork : string prop;
      (** cloud_composer_connection_subnetwork *)
  cloud_composer_network_ipv4_cidr_block : string prop;
      (** cloud_composer_network_ipv4_cidr_block *)
  cloud_sql_ipv4_cidr_block : string prop;
      (** cloud_sql_ipv4_cidr_block *)
  connection_type : string prop;  (** connection_type *)
  enable_private_endpoint : bool prop;
      (** enable_private_endpoint *)
  enable_privately_used_public_ips : bool prop;
      (** enable_privately_used_public_ips *)
  master_ipv4_cidr_block : string prop;
      (** master_ipv4_cidr_block *)
  web_server_ipv4_cidr_block : string prop;
      (** web_server_ipv4_cidr_block *)
}

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

type config__node_config = {
  disk_size_gb : float prop;  (** disk_size_gb *)
  enable_ip_masq_agent : bool prop;  (** enable_ip_masq_agent *)
  ip_allocation_policy :
    config__node_config__ip_allocation_policy list;
      (** ip_allocation_policy *)
  machine_type : string prop;  (** machine_type *)
  network : string prop;  (** network *)
  oauth_scopes : string prop list;  (** oauth_scopes *)
  service_account : string prop;  (** service_account *)
  subnetwork : string prop;  (** subnetwork *)
  tags : string prop list;  (** tags *)
  zone : string prop;  (** zone *)
}

type config__master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;  (** cidr_block *)
  display_name : string prop;  (** display_name *)
}

type config__master_authorized_networks_config = {
  cidr_blocks :
    config__master_authorized_networks_config__cidr_blocks list;
      (** cidr_blocks *)
  enabled : bool prop;  (** enabled *)
}

type config__maintenance_window = {
  end_time : string prop;  (** end_time *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}

type config__encryption_config = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type config__database_config = {
  machine_type : string prop;  (** machine_type *)
  zone : string prop;  (** zone *)
}

type config__data_retention_config__task_logs_retention_config = {
  storage_mode : string prop;  (** storage_mode *)
}

type config__data_retention_config = {
  task_logs_retention_config :
    config__data_retention_config__task_logs_retention_config list;
      (** task_logs_retention_config *)
}

type config = {
  airflow_uri : string prop;  (** airflow_uri *)
  dag_gcs_prefix : string prop;  (** dag_gcs_prefix *)
  data_retention_config : config__data_retention_config list;
      (** data_retention_config *)
  database_config : config__database_config list;
      (** database_config *)
  encryption_config : config__encryption_config list;
      (** encryption_config *)
  environment_size : string prop;  (** environment_size *)
  gke_cluster : string prop;  (** gke_cluster *)
  maintenance_window : config__maintenance_window list;
      (** maintenance_window *)
  master_authorized_networks_config :
    config__master_authorized_networks_config list;
      (** master_authorized_networks_config *)
  node_config : config__node_config list;  (** node_config *)
  node_count : float prop;  (** node_count *)
  private_environment_config :
    config__private_environment_config list;
      (** private_environment_config *)
  recovery_config : config__recovery_config list;
      (** recovery_config *)
  resilience_mode : string prop;  (** resilience_mode *)
  software_config : config__software_config list;
      (** software_config *)
  web_server_config : config__web_server_config list;
      (** web_server_config *)
  web_server_network_access_control :
    config__web_server_network_access_control list;
      (** web_server_network_access_control *)
  workloads_config : config__workloads_config list;
      (** workloads_config *)
}

type storage_config = { bucket : string prop  (** bucket *) }
type google_composer_environment

val google_composer_environment :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_composer_environment

val yojson_of_google_composer_environment :
  google_composer_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  config : config list prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  storage_config : storage_config list prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
