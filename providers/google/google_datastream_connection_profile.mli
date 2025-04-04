(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_profile

val bigquery_profile : unit -> bigquery_profile

type forward_ssh_connectivity

val forward_ssh_connectivity :
  ?password:string prop ->
  ?port:float prop ->
  ?private_key:string prop ->
  hostname:string prop ->
  username:string prop ->
  unit ->
  forward_ssh_connectivity

type gcs_profile

val gcs_profile :
  ?root_path:string prop -> bucket:string prop -> unit -> gcs_profile

type mysql_profile__ssl_config

val mysql_profile__ssl_config :
  ?ca_certificate:string prop ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  unit ->
  mysql_profile__ssl_config

type mysql_profile

val mysql_profile :
  ?port:float prop ->
  ?ssl_config:mysql_profile__ssl_config list ->
  hostname:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  mysql_profile

type oracle_profile

val oracle_profile :
  ?connection_attributes:string prop Tf_core.assoc ->
  ?port:float prop ->
  database_service:string prop ->
  hostname:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  oracle_profile

type postgresql_profile

val postgresql_profile :
  ?port:float prop ->
  database:string prop ->
  hostname:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  postgresql_profile

type private_connectivity

val private_connectivity :
  private_connection:string prop -> unit -> private_connectivity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_datastream_connection_profile

val google_datastream_connection_profile :
  ?create_without_validation:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?bigquery_profile:bigquery_profile list ->
  ?forward_ssh_connectivity:forward_ssh_connectivity list ->
  ?gcs_profile:gcs_profile list ->
  ?mysql_profile:mysql_profile list ->
  ?oracle_profile:oracle_profile list ->
  ?postgresql_profile:postgresql_profile list ->
  ?private_connectivity:private_connectivity list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  unit ->
  google_datastream_connection_profile

val yojson_of_google_datastream_connection_profile :
  google_datastream_connection_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_profile_id : string prop;
  create_without_validation : bool prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_without_validation:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?bigquery_profile:bigquery_profile list ->
  ?forward_ssh_connectivity:forward_ssh_connectivity list ->
  ?gcs_profile:gcs_profile list ->
  ?mysql_profile:mysql_profile list ->
  ?oracle_profile:oracle_profile list ->
  ?postgresql_profile:postgresql_profile list ->
  ?private_connectivity:private_connectivity list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?create_without_validation:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?bigquery_profile:bigquery_profile list ->
  ?forward_ssh_connectivity:forward_ssh_connectivity list ->
  ?gcs_profile:gcs_profile list ->
  ?mysql_profile:mysql_profile list ->
  ?oracle_profile:oracle_profile list ->
  ?postgresql_profile:postgresql_profile list ->
  ?private_connectivity:private_connectivity list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
