(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_config

val encryption_config :
  kms_key:string prop -> unit -> encryption_config

type hive_metastore_config__auxiliary_versions

val hive_metastore_config__auxiliary_versions :
  ?config_overrides:string prop Tf_core.assoc ->
  key:string prop ->
  version:string prop ->
  unit ->
  hive_metastore_config__auxiliary_versions

type hive_metastore_config__kerberos_config__keytab

val hive_metastore_config__kerberos_config__keytab :
  cloud_secret:string prop ->
  unit ->
  hive_metastore_config__kerberos_config__keytab

type hive_metastore_config__kerberos_config

val hive_metastore_config__kerberos_config :
  krb5_config_gcs_uri:string prop ->
  principal:string prop ->
  keytab:hive_metastore_config__kerberos_config__keytab list ->
  unit ->
  hive_metastore_config__kerberos_config

type hive_metastore_config

val hive_metastore_config :
  ?config_overrides:string prop Tf_core.assoc ->
  ?endpoint_protocol:string prop ->
  ?kerberos_config:hive_metastore_config__kerberos_config list ->
  version:string prop ->
  auxiliary_versions:hive_metastore_config__auxiliary_versions list ->
  unit ->
  hive_metastore_config

type maintenance_window

val maintenance_window :
  day_of_week:string prop ->
  hour_of_day:float prop ->
  unit ->
  maintenance_window

type metadata_integration__data_catalog_config

val metadata_integration__data_catalog_config :
  enabled:bool prop ->
  unit ->
  metadata_integration__data_catalog_config

type metadata_integration

val metadata_integration :
  data_catalog_config:metadata_integration__data_catalog_config list ->
  unit ->
  metadata_integration

type network_config__consumers

val network_config__consumers :
  subnetwork:string prop -> unit -> network_config__consumers

type network_config

val network_config :
  consumers:network_config__consumers list -> unit -> network_config

type scaling_config

val scaling_config :
  ?instance_size:string prop ->
  ?scaling_factor:float prop ->
  unit ->
  scaling_config

type scheduled_backup

val scheduled_backup :
  ?cron_schedule:string prop ->
  ?enabled:bool prop ->
  ?time_zone:string prop ->
  backup_location:string prop ->
  unit ->
  scheduled_backup

type telemetry_config

val telemetry_config :
  ?log_format:string prop -> unit -> telemetry_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataproc_metastore_service

val google_dataproc_metastore_service :
  ?database_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?tier:string prop ->
  ?encryption_config:encryption_config list ->
  ?hive_metastore_config:hive_metastore_config list ->
  ?maintenance_window:maintenance_window list ->
  ?metadata_integration:metadata_integration list ->
  ?network_config:network_config list ->
  ?scaling_config:scaling_config list ->
  ?scheduled_backup:scheduled_backup list ->
  ?telemetry_config:telemetry_config list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  unit ->
  google_dataproc_metastore_service

val yojson_of_google_dataproc_metastore_service :
  google_dataproc_metastore_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  artifact_gcs_uri : string prop;
  database_type : string prop;
  effective_labels : string Tf_core.assoc prop;
  endpoint_uri : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  service_id : string prop;
  state : string prop;
  state_message : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tier : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?tier:string prop ->
  ?encryption_config:encryption_config list ->
  ?hive_metastore_config:hive_metastore_config list ->
  ?maintenance_window:maintenance_window list ->
  ?metadata_integration:metadata_integration list ->
  ?network_config:network_config list ->
  ?scaling_config:scaling_config list ->
  ?scheduled_backup:scheduled_backup list ->
  ?telemetry_config:telemetry_config list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t

val make :
  ?database_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?tier:string prop ->
  ?encryption_config:encryption_config list ->
  ?hive_metastore_config:hive_metastore_config list ->
  ?maintenance_window:maintenance_window list ->
  ?metadata_integration:metadata_integration list ->
  ?network_config:network_config list ->
  ?scaling_config:scaling_config list ->
  ?scheduled_backup:scheduled_backup list ->
  ?telemetry_config:telemetry_config list ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
