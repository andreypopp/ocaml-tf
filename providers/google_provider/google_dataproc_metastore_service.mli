(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_metastore_service__encryption_config

type google_dataproc_metastore_service__hive_metastore_config__auxiliary_versions

type google_dataproc_metastore_service__hive_metastore_config__kerberos_config__keytab

type google_dataproc_metastore_service__hive_metastore_config__kerberos_config

type google_dataproc_metastore_service__hive_metastore_config
type google_dataproc_metastore_service__maintenance_window

type google_dataproc_metastore_service__metadata_integration__data_catalog_config

type google_dataproc_metastore_service__metadata_integration
type google_dataproc_metastore_service__network_config__consumers
type google_dataproc_metastore_service__network_config
type google_dataproc_metastore_service__scaling_config
type google_dataproc_metastore_service__telemetry_config
type google_dataproc_metastore_service__timeouts
type google_dataproc_metastore_service

val google_dataproc_metastore_service :
  ?database_type:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?release_channel:string ->
  ?timeouts:google_dataproc_metastore_service__timeouts ->
  service_id:string ->
  encryption_config:
    google_dataproc_metastore_service__encryption_config list ->
  hive_metastore_config:
    google_dataproc_metastore_service__hive_metastore_config list ->
  maintenance_window:
    google_dataproc_metastore_service__maintenance_window list ->
  metadata_integration:
    google_dataproc_metastore_service__metadata_integration list ->
  network_config:
    google_dataproc_metastore_service__network_config list ->
  scaling_config:
    google_dataproc_metastore_service__scaling_config list ->
  telemetry_config:
    google_dataproc_metastore_service__telemetry_config list ->
  string ->
  unit
