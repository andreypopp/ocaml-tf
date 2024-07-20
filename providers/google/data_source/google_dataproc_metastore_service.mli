(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_config = { kms_key : string prop  (** kms_key *) }

type hive_metastore_config__kerberos_config__keytab = {
  cloud_secret : string prop;  (** cloud_secret *)
}

type hive_metastore_config__kerberos_config = {
  keytab : hive_metastore_config__kerberos_config__keytab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** keytab *)
  krb5_config_gcs_uri : string prop;  (** krb5_config_gcs_uri *)
  principal : string prop;  (** principal *)
}

type hive_metastore_config__auxiliary_versions = {
  config_overrides : (string * string prop) list;
      (** config_overrides *)
  key : string prop;  (** key *)
  version : string prop;  (** version *)
}

type hive_metastore_config = {
  auxiliary_versions :
    hive_metastore_config__auxiliary_versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** auxiliary_versions *)
  config_overrides : (string * string prop) list;
      (** config_overrides *)
  endpoint_protocol : string prop;  (** endpoint_protocol *)
  kerberos_config : hive_metastore_config__kerberos_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kerberos_config *)
  version : string prop;  (** version *)
}

type maintenance_window = {
  day_of_week : string prop;  (** day_of_week *)
  hour_of_day : float prop;  (** hour_of_day *)
}

type metadata_integration__data_catalog_config = {
  enabled : bool prop;  (** enabled *)
}

type metadata_integration = {
  data_catalog_config :
    metadata_integration__data_catalog_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** data_catalog_config *)
}

type network_config__consumers = {
  endpoint_uri : string prop;  (** endpoint_uri *)
  subnetwork : string prop;  (** subnetwork *)
}

type network_config = {
  consumers : network_config__consumers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** consumers *)
}

type scaling_config = {
  instance_size : string prop;  (** instance_size *)
  scaling_factor : float prop;  (** scaling_factor *)
}

type scheduled_backup = {
  backup_location : string prop;  (** backup_location *)
  cron_schedule : string prop;  (** cron_schedule *)
  enabled : bool prop;  (** enabled *)
  time_zone : string prop;  (** time_zone *)
}

type telemetry_config = {
  log_format : string prop;  (** log_format *)
}

type google_dataproc_metastore_service

val google_dataproc_metastore_service :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
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
  effective_labels : (string * string) list prop;
  encryption_config : encryption_config list prop;
  endpoint_uri : string prop;
  hive_metastore_config : hive_metastore_config list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maintenance_window : maintenance_window list prop;
  metadata_integration : metadata_integration list prop;
  name : string prop;
  network : string prop;
  network_config : network_config list prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  scaling_config : scaling_config list prop;
  scheduled_backup : scheduled_backup list prop;
  service_id : string prop;
  state : string prop;
  state_message : string prop;
  telemetry_config : telemetry_config list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  service_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
