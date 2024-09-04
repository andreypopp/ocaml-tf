(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type jobs__hadoop_job__logging_config

val jobs__hadoop_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__hadoop_job__logging_config

type jobs__hadoop_job

val jobs__hadoop_job :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?main_class:string prop ->
  ?main_jar_file_uri:string prop ->
  ?properties:string prop Tf_core.assoc ->
  ?logging_config:jobs__hadoop_job__logging_config list ->
  unit ->
  jobs__hadoop_job

type jobs__hive_job__query_list

val jobs__hive_job__query_list :
  queries:string prop list -> unit -> jobs__hive_job__query_list

type jobs__hive_job

val jobs__hive_job :
  ?continue_on_failure:bool prop ->
  ?jar_file_uris:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?query_file_uri:string prop ->
  ?script_variables:string prop Tf_core.assoc ->
  ?query_list:jobs__hive_job__query_list list ->
  unit ->
  jobs__hive_job

type jobs__pig_job__logging_config

val jobs__pig_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__pig_job__logging_config

type jobs__pig_job__query_list

val jobs__pig_job__query_list :
  queries:string prop list -> unit -> jobs__pig_job__query_list

type jobs__pig_job

val jobs__pig_job :
  ?continue_on_failure:bool prop ->
  ?jar_file_uris:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?query_file_uri:string prop ->
  ?script_variables:string prop Tf_core.assoc ->
  ?logging_config:jobs__pig_job__logging_config list ->
  ?query_list:jobs__pig_job__query_list list ->
  unit ->
  jobs__pig_job

type jobs__presto_job__logging_config

val jobs__presto_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__presto_job__logging_config

type jobs__presto_job__query_list

val jobs__presto_job__query_list :
  queries:string prop list -> unit -> jobs__presto_job__query_list

type jobs__presto_job

val jobs__presto_job :
  ?client_tags:string prop list ->
  ?continue_on_failure:bool prop ->
  ?output_format:string prop ->
  ?properties:string prop Tf_core.assoc ->
  ?query_file_uri:string prop ->
  ?logging_config:jobs__presto_job__logging_config list ->
  ?query_list:jobs__presto_job__query_list list ->
  unit ->
  jobs__presto_job

type jobs__pyspark_job__logging_config

val jobs__pyspark_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__pyspark_job__logging_config

type jobs__pyspark_job

val jobs__pyspark_job :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?python_file_uris:string prop list ->
  ?logging_config:jobs__pyspark_job__logging_config list ->
  main_python_file_uri:string prop ->
  unit ->
  jobs__pyspark_job

type jobs__scheduling

val jobs__scheduling :
  ?max_failures_per_hour:float prop ->
  ?max_failures_total:float prop ->
  unit ->
  jobs__scheduling

type jobs__spark_job__logging_config

val jobs__spark_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__spark_job__logging_config

type jobs__spark_job

val jobs__spark_job :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?main_class:string prop ->
  ?main_jar_file_uri:string prop ->
  ?properties:string prop Tf_core.assoc ->
  ?logging_config:jobs__spark_job__logging_config list ->
  unit ->
  jobs__spark_job

type jobs__spark_r_job__logging_config

val jobs__spark_r_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__spark_r_job__logging_config

type jobs__spark_r_job

val jobs__spark_r_job :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?logging_config:jobs__spark_r_job__logging_config list ->
  main_r_file_uri:string prop ->
  unit ->
  jobs__spark_r_job

type jobs__spark_sql_job__logging_config

val jobs__spark_sql_job__logging_config :
  ?driver_log_levels:string prop Tf_core.assoc ->
  unit ->
  jobs__spark_sql_job__logging_config

type jobs__spark_sql_job__query_list

val jobs__spark_sql_job__query_list :
  queries:string prop list -> unit -> jobs__spark_sql_job__query_list

type jobs__spark_sql_job

val jobs__spark_sql_job :
  ?jar_file_uris:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?query_file_uri:string prop ->
  ?script_variables:string prop Tf_core.assoc ->
  ?logging_config:jobs__spark_sql_job__logging_config list ->
  ?query_list:jobs__spark_sql_job__query_list list ->
  unit ->
  jobs__spark_sql_job

type jobs

val jobs :
  ?labels:string prop Tf_core.assoc ->
  ?prerequisite_step_ids:string prop list ->
  ?hadoop_job:jobs__hadoop_job list ->
  ?hive_job:jobs__hive_job list ->
  ?pig_job:jobs__pig_job list ->
  ?presto_job:jobs__presto_job list ->
  ?pyspark_job:jobs__pyspark_job list ->
  ?scheduling:jobs__scheduling list ->
  ?spark_job:jobs__spark_job list ->
  ?spark_r_job:jobs__spark_r_job list ->
  ?spark_sql_job:jobs__spark_sql_job list ->
  step_id:string prop ->
  unit ->
  jobs

type parameters__validation__regex

val parameters__validation__regex :
  regexes:string prop list -> unit -> parameters__validation__regex

type parameters__validation__values

val parameters__validation__values :
  values:string prop list -> unit -> parameters__validation__values

type parameters__validation

val parameters__validation :
  ?regex:parameters__validation__regex list ->
  ?values:parameters__validation__values list ->
  unit ->
  parameters__validation

type parameters

val parameters :
  ?description:string prop ->
  ?validation:parameters__validation list ->
  fields:string prop list ->
  name:string prop ->
  unit ->
  parameters

type placement__cluster_selector

val placement__cluster_selector :
  ?zone:string prop ->
  cluster_labels:string prop Tf_core.assoc ->
  unit ->
  placement__cluster_selector

type placement__managed_cluster__config__autoscaling_config

val placement__managed_cluster__config__autoscaling_config :
  ?policy:string prop ->
  unit ->
  placement__managed_cluster__config__autoscaling_config

type placement__managed_cluster__config__encryption_config

val placement__managed_cluster__config__encryption_config :
  ?gce_pd_kms_key_name:string prop ->
  unit ->
  placement__managed_cluster__config__encryption_config

type placement__managed_cluster__config__endpoint_config

val placement__managed_cluster__config__endpoint_config :
  ?enable_http_port_access:bool prop ->
  unit ->
  placement__managed_cluster__config__endpoint_config

type placement__managed_cluster__config__gce_cluster_config__node_group_affinity

val placement__managed_cluster__config__gce_cluster_config__node_group_affinity :
  node_group:string prop ->
  unit ->
  placement__managed_cluster__config__gce_cluster_config__node_group_affinity

type placement__managed_cluster__config__gce_cluster_config__reservation_affinity

val placement__managed_cluster__config__gce_cluster_config__reservation_affinity :
  ?consume_reservation_type:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  placement__managed_cluster__config__gce_cluster_config__reservation_affinity

type placement__managed_cluster__config__gce_cluster_config__shielded_instance_config

val placement__managed_cluster__config__gce_cluster_config__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  ?enable_vtpm:bool prop ->
  unit ->
  placement__managed_cluster__config__gce_cluster_config__shielded_instance_config

type placement__managed_cluster__config__gce_cluster_config

val placement__managed_cluster__config__gce_cluster_config :
  ?internal_ip_only:bool prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?private_ipv6_google_access:string prop ->
  ?service_account:string prop ->
  ?service_account_scopes:string prop list ->
  ?subnetwork:string prop ->
  ?tags:string prop list ->
  ?zone:string prop ->
  ?node_group_affinity:
    placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    list ->
  ?reservation_affinity:
    placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    list ->
  ?shielded_instance_config:
    placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    list ->
  unit ->
  placement__managed_cluster__config__gce_cluster_config

type placement__managed_cluster__config__initialization_actions

val placement__managed_cluster__config__initialization_actions :
  ?executable_file:string prop ->
  ?execution_timeout:string prop ->
  unit ->
  placement__managed_cluster__config__initialization_actions

type placement__managed_cluster__config__lifecycle_config

val placement__managed_cluster__config__lifecycle_config :
  ?auto_delete_time:string prop ->
  ?auto_delete_ttl:string prop ->
  ?idle_delete_ttl:string prop ->
  unit ->
  placement__managed_cluster__config__lifecycle_config

type placement__managed_cluster__config__master_config__managed_group_config = {
  instance_group_manager_name : string prop;
      (** instance_group_manager_name *)
  instance_template_name : string prop;  (** instance_template_name *)
}

type placement__managed_cluster__config__master_config__accelerators

val placement__managed_cluster__config__master_config__accelerators :
  ?accelerator_count:float prop ->
  ?accelerator_type:string prop ->
  unit ->
  placement__managed_cluster__config__master_config__accelerators

type placement__managed_cluster__config__master_config__disk_config

val placement__managed_cluster__config__master_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  placement__managed_cluster__config__master_config__disk_config

type placement__managed_cluster__config__master_config

val placement__managed_cluster__config__master_config :
  ?image:string prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?num_instances:float prop ->
  ?preemptibility:string prop ->
  ?accelerators:
    placement__managed_cluster__config__master_config__accelerators
    list ->
  ?disk_config:
    placement__managed_cluster__config__master_config__disk_config
    list ->
  unit ->
  placement__managed_cluster__config__master_config

type placement__managed_cluster__config__secondary_worker_config__managed_group_config = {
  instance_group_manager_name : string prop;
      (** instance_group_manager_name *)
  instance_template_name : string prop;  (** instance_template_name *)
}

type placement__managed_cluster__config__secondary_worker_config__accelerators

val placement__managed_cluster__config__secondary_worker_config__accelerators :
  ?accelerator_count:float prop ->
  ?accelerator_type:string prop ->
  unit ->
  placement__managed_cluster__config__secondary_worker_config__accelerators

type placement__managed_cluster__config__secondary_worker_config__disk_config

val placement__managed_cluster__config__secondary_worker_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  placement__managed_cluster__config__secondary_worker_config__disk_config

type placement__managed_cluster__config__secondary_worker_config

val placement__managed_cluster__config__secondary_worker_config :
  ?image:string prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?num_instances:float prop ->
  ?preemptibility:string prop ->
  ?accelerators:
    placement__managed_cluster__config__secondary_worker_config__accelerators
    list ->
  ?disk_config:
    placement__managed_cluster__config__secondary_worker_config__disk_config
    list ->
  unit ->
  placement__managed_cluster__config__secondary_worker_config

type placement__managed_cluster__config__security_config__kerberos_config

val placement__managed_cluster__config__security_config__kerberos_config :
  ?cross_realm_trust_admin_server:string prop ->
  ?cross_realm_trust_kdc:string prop ->
  ?cross_realm_trust_realm:string prop ->
  ?cross_realm_trust_shared_password:string prop ->
  ?enable_kerberos:bool prop ->
  ?kdc_db_key:string prop ->
  ?key_password:string prop ->
  ?keystore:string prop ->
  ?keystore_password:string prop ->
  ?kms_key:string prop ->
  ?realm:string prop ->
  ?root_principal_password:string prop ->
  ?tgt_lifetime_hours:float prop ->
  ?truststore:string prop ->
  ?truststore_password:string prop ->
  unit ->
  placement__managed_cluster__config__security_config__kerberos_config

type placement__managed_cluster__config__security_config

val placement__managed_cluster__config__security_config :
  ?kerberos_config:
    placement__managed_cluster__config__security_config__kerberos_config
    list ->
  unit ->
  placement__managed_cluster__config__security_config

type placement__managed_cluster__config__software_config

val placement__managed_cluster__config__software_config :
  ?image_version:string prop ->
  ?optional_components:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  unit ->
  placement__managed_cluster__config__software_config

type placement__managed_cluster__config__worker_config__managed_group_config = {
  instance_group_manager_name : string prop;
      (** instance_group_manager_name *)
  instance_template_name : string prop;  (** instance_template_name *)
}

type placement__managed_cluster__config__worker_config__accelerators

val placement__managed_cluster__config__worker_config__accelerators :
  ?accelerator_count:float prop ->
  ?accelerator_type:string prop ->
  unit ->
  placement__managed_cluster__config__worker_config__accelerators

type placement__managed_cluster__config__worker_config__disk_config

val placement__managed_cluster__config__worker_config__disk_config :
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?num_local_ssds:float prop ->
  unit ->
  placement__managed_cluster__config__worker_config__disk_config

type placement__managed_cluster__config__worker_config

val placement__managed_cluster__config__worker_config :
  ?image:string prop ->
  ?machine_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?num_instances:float prop ->
  ?preemptibility:string prop ->
  ?accelerators:
    placement__managed_cluster__config__worker_config__accelerators
    list ->
  ?disk_config:
    placement__managed_cluster__config__worker_config__disk_config
    list ->
  unit ->
  placement__managed_cluster__config__worker_config

type placement__managed_cluster__config

val placement__managed_cluster__config :
  ?staging_bucket:string prop ->
  ?temp_bucket:string prop ->
  ?autoscaling_config:
    placement__managed_cluster__config__autoscaling_config list ->
  ?encryption_config:
    placement__managed_cluster__config__encryption_config list ->
  ?endpoint_config:
    placement__managed_cluster__config__endpoint_config list ->
  ?gce_cluster_config:
    placement__managed_cluster__config__gce_cluster_config list ->
  ?initialization_actions:
    placement__managed_cluster__config__initialization_actions list ->
  ?lifecycle_config:
    placement__managed_cluster__config__lifecycle_config list ->
  ?master_config:
    placement__managed_cluster__config__master_config list ->
  ?secondary_worker_config:
    placement__managed_cluster__config__secondary_worker_config list ->
  ?security_config:
    placement__managed_cluster__config__security_config list ->
  ?software_config:
    placement__managed_cluster__config__software_config list ->
  ?worker_config:
    placement__managed_cluster__config__worker_config list ->
  unit ->
  placement__managed_cluster__config

type placement__managed_cluster

val placement__managed_cluster :
  ?labels:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  config:placement__managed_cluster__config list ->
  unit ->
  placement__managed_cluster

type placement

val placement :
  ?cluster_selector:placement__cluster_selector list ->
  ?managed_cluster:placement__managed_cluster list ->
  unit ->
  placement

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataproc_workflow_template

val google_dataproc_workflow_template :
  ?dag_timeout:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?version:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  jobs:jobs list ->
  placement:placement list ->
  unit ->
  google_dataproc_workflow_template

val yojson_of_google_dataproc_workflow_template :
  google_dataproc_workflow_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  dag_timeout : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?dag_timeout:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?version:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  jobs:jobs list ->
  placement:placement list ->
  string ->
  t

val make :
  ?dag_timeout:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?version:float prop ->
  ?parameters:parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  jobs:jobs list ->
  placement:placement list ->
  string ->
  t Tf_core.resource
