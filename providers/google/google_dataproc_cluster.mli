(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cluster_config__autoscaling_config

val cluster_config__autoscaling_config :
  policy_uri:string prop ->
  unit ->
  cluster_config__autoscaling_config

type cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators

val cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators :
  accelerator_count:float prop ->
  accelerator_type:string prop ->
  unit ->
  cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators

type cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config

val cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config

type cluster_config__auxiliary_node_groups__node_group__node_group_config

val cluster_config__auxiliary_node_groups__node_group__node_group_config :
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?num_instances:float prop ->
  accelerators:
    cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    list ->
  disk_config:
    cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    list ->
  unit ->
  cluster_config__auxiliary_node_groups__node_group__node_group_config

type cluster_config__auxiliary_node_groups__node_group

val cluster_config__auxiliary_node_groups__node_group :
  roles:string prop list ->
  node_group_config:
    cluster_config__auxiliary_node_groups__node_group__node_group_config
    list ->
  unit ->
  cluster_config__auxiliary_node_groups__node_group

type cluster_config__auxiliary_node_groups

val cluster_config__auxiliary_node_groups :
  ?node_group_id:string prop ->
  node_group:cluster_config__auxiliary_node_groups__node_group list ->
  unit ->
  cluster_config__auxiliary_node_groups

type cluster_config__dataproc_metric_config__metrics

val cluster_config__dataproc_metric_config__metrics :
  ?metric_overrides:string prop list ->
  metric_source:string prop ->
  unit ->
  cluster_config__dataproc_metric_config__metrics

type cluster_config__dataproc_metric_config

val cluster_config__dataproc_metric_config :
  metrics:cluster_config__dataproc_metric_config__metrics list ->
  unit ->
  cluster_config__dataproc_metric_config

type cluster_config__encryption_config

val cluster_config__encryption_config :
  kms_key_name:string prop ->
  unit ->
  cluster_config__encryption_config

type cluster_config__endpoint_config

val cluster_config__endpoint_config :
  enable_http_port_access:bool prop ->
  unit ->
  cluster_config__endpoint_config

type cluster_config__gce_cluster_config__node_group_affinity

val cluster_config__gce_cluster_config__node_group_affinity :
  node_group_uri:string prop ->
  unit ->
  cluster_config__gce_cluster_config__node_group_affinity

type cluster_config__gce_cluster_config__reservation_affinity

val cluster_config__gce_cluster_config__reservation_affinity :
  ?consume_reservation_type:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  cluster_config__gce_cluster_config__reservation_affinity

type cluster_config__gce_cluster_config__shielded_instance_config

val cluster_config__gce_cluster_config__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  ?enable_vtpm:bool prop ->
  unit ->
  cluster_config__gce_cluster_config__shielded_instance_config

type cluster_config__gce_cluster_config

val cluster_config__gce_cluster_config :
  ?internal_ip_only:bool prop ->
  ?metadata:(string * string prop) list ->
  ?network:string prop ->
  ?service_account:string prop ->
  ?service_account_scopes:string prop list ->
  ?subnetwork:string prop ->
  ?tags:string prop list ->
  ?zone:string prop ->
  node_group_affinity:
    cluster_config__gce_cluster_config__node_group_affinity list ->
  reservation_affinity:
    cluster_config__gce_cluster_config__reservation_affinity list ->
  shielded_instance_config:
    cluster_config__gce_cluster_config__shielded_instance_config list ->
  unit ->
  cluster_config__gce_cluster_config

type cluster_config__initialization_action

val cluster_config__initialization_action :
  ?timeout_sec:float prop ->
  script:string prop ->
  unit ->
  cluster_config__initialization_action

type cluster_config__lifecycle_config

val cluster_config__lifecycle_config :
  ?auto_delete_time:string prop ->
  ?idle_delete_ttl:string prop ->
  unit ->
  cluster_config__lifecycle_config

type cluster_config__master_config__accelerators

val cluster_config__master_config__accelerators :
  accelerator_count:float prop ->
  accelerator_type:string prop ->
  unit ->
  cluster_config__master_config__accelerators

type cluster_config__master_config__disk_config

val cluster_config__master_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  cluster_config__master_config__disk_config

type cluster_config__master_config

val cluster_config__master_config :
  ?image_uri:string prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?num_instances:float prop ->
  accelerators:cluster_config__master_config__accelerators list ->
  disk_config:cluster_config__master_config__disk_config list ->
  unit ->
  cluster_config__master_config

type cluster_config__metastore_config

val cluster_config__metastore_config :
  dataproc_metastore_service:string prop ->
  unit ->
  cluster_config__metastore_config

type cluster_config__preemptible_worker_config__disk_config

val cluster_config__preemptible_worker_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  cluster_config__preemptible_worker_config__disk_config

type cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results = {
  machine_type : string prop;  (** machine_type *)
  vm_count : float prop;  (** vm_count *)
}

type cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list

val cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list :
  ?machine_types:string prop list ->
  ?rank:float prop ->
  unit ->
  cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list

type cluster_config__preemptible_worker_config__instance_flexibility_policy

val cluster_config__preemptible_worker_config__instance_flexibility_policy :
  instance_selection_list:
    cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    list ->
  unit ->
  cluster_config__preemptible_worker_config__instance_flexibility_policy

type cluster_config__preemptible_worker_config

val cluster_config__preemptible_worker_config :
  ?num_instances:float prop ->
  ?preemptibility:string prop ->
  disk_config:
    cluster_config__preemptible_worker_config__disk_config list ->
  instance_flexibility_policy:
    cluster_config__preemptible_worker_config__instance_flexibility_policy
    list ->
  unit ->
  cluster_config__preemptible_worker_config

type cluster_config__security_config__kerberos_config

val cluster_config__security_config__kerberos_config :
  ?cross_realm_trust_admin_server:string prop ->
  ?cross_realm_trust_kdc:string prop ->
  ?cross_realm_trust_realm:string prop ->
  ?cross_realm_trust_shared_password_uri:string prop ->
  ?enable_kerberos:bool prop ->
  ?kdc_db_key_uri:string prop ->
  ?key_password_uri:string prop ->
  ?keystore_password_uri:string prop ->
  ?keystore_uri:string prop ->
  ?realm:string prop ->
  ?tgt_lifetime_hours:float prop ->
  ?truststore_password_uri:string prop ->
  ?truststore_uri:string prop ->
  kms_key_uri:string prop ->
  root_principal_password_uri:string prop ->
  unit ->
  cluster_config__security_config__kerberos_config

type cluster_config__security_config

val cluster_config__security_config :
  kerberos_config:
    cluster_config__security_config__kerberos_config list ->
  unit ->
  cluster_config__security_config

type cluster_config__software_config

val cluster_config__software_config :
  ?image_version:string prop ->
  ?optional_components:string prop list ->
  ?override_properties:(string * string prop) list ->
  unit ->
  cluster_config__software_config

type cluster_config__worker_config__accelerators

val cluster_config__worker_config__accelerators :
  accelerator_count:float prop ->
  accelerator_type:string prop ->
  unit ->
  cluster_config__worker_config__accelerators

type cluster_config__worker_config__disk_config

val cluster_config__worker_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  cluster_config__worker_config__disk_config

type cluster_config__worker_config

val cluster_config__worker_config :
  ?image_uri:string prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?min_num_instances:float prop ->
  ?num_instances:float prop ->
  accelerators:cluster_config__worker_config__accelerators list ->
  disk_config:cluster_config__worker_config__disk_config list ->
  unit ->
  cluster_config__worker_config

type cluster_config

val cluster_config :
  ?staging_bucket:string prop ->
  ?temp_bucket:string prop ->
  autoscaling_config:cluster_config__autoscaling_config list ->
  auxiliary_node_groups:cluster_config__auxiliary_node_groups list ->
  dataproc_metric_config:cluster_config__dataproc_metric_config list ->
  encryption_config:cluster_config__encryption_config list ->
  endpoint_config:cluster_config__endpoint_config list ->
  gce_cluster_config:cluster_config__gce_cluster_config list ->
  initialization_action:cluster_config__initialization_action list ->
  lifecycle_config:cluster_config__lifecycle_config list ->
  master_config:cluster_config__master_config list ->
  metastore_config:cluster_config__metastore_config list ->
  preemptible_worker_config:
    cluster_config__preemptible_worker_config list ->
  security_config:cluster_config__security_config list ->
  software_config:cluster_config__software_config list ->
  worker_config:cluster_config__worker_config list ->
  unit ->
  cluster_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_cluster_config__auxiliary_services_config__metastore_config

val virtual_cluster_config__auxiliary_services_config__metastore_config :
  ?dataproc_metastore_service:string prop ->
  unit ->
  virtual_cluster_config__auxiliary_services_config__metastore_config

type virtual_cluster_config__auxiliary_services_config__spark_history_server_config

val virtual_cluster_config__auxiliary_services_config__spark_history_server_config :
  ?dataproc_cluster:string prop ->
  unit ->
  virtual_cluster_config__auxiliary_services_config__spark_history_server_config

type virtual_cluster_config__auxiliary_services_config

val virtual_cluster_config__auxiliary_services_config :
  metastore_config:
    virtual_cluster_config__auxiliary_services_config__metastore_config
    list ->
  spark_history_server_config:
    virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    list ->
  unit ->
  virtual_cluster_config__auxiliary_services_config

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling

val virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling :
  ?max_node_count:float prop ->
  ?min_node_count:float prop ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config

val virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config :
  ?local_ssd_count:float prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?preemptible:bool prop ->
  ?spot:bool prop ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config

val virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config :
  locations:string prop list ->
  autoscaling:
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    list ->
  config:
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    list ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target

val virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target :
  node_pool:string prop ->
  roles:string prop list ->
  node_pool_config:
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    list ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target

type virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config

val virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config :
  ?gke_cluster_target:string prop ->
  node_pool_target:
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    list ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config

type virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config

val virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config :
  ?properties:(string * string prop) list ->
  component_version:(string * string prop) list ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config

type virtual_cluster_config__kubernetes_cluster_config

val virtual_cluster_config__kubernetes_cluster_config :
  ?kubernetes_namespace:string prop ->
  gke_cluster_config:
    virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    list ->
  kubernetes_software_config:
    virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    list ->
  unit ->
  virtual_cluster_config__kubernetes_cluster_config

type virtual_cluster_config

val virtual_cluster_config :
  ?staging_bucket:string prop ->
  auxiliary_services_config:
    virtual_cluster_config__auxiliary_services_config list ->
  kubernetes_cluster_config:
    virtual_cluster_config__kubernetes_cluster_config list ->
  unit ->
  virtual_cluster_config

type google_dataproc_cluster

val google_dataproc_cluster :
  ?graceful_decommission_timeout:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  cluster_config:cluster_config list ->
  virtual_cluster_config:virtual_cluster_config list ->
  unit ->
  google_dataproc_cluster

val yojson_of_google_dataproc_cluster :
  google_dataproc_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  effective_labels : (string * string) list prop;
  graceful_decommission_timeout : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?graceful_decommission_timeout:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  cluster_config:cluster_config list ->
  virtual_cluster_config:virtual_cluster_config list ->
  string ->
  t
