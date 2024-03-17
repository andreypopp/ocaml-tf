(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_datastream_connection_profile__bigquery_profile
type google_datastream_connection_profile__forward_ssh_connectivity
type google_datastream_connection_profile__gcs_profile
type google_datastream_connection_profile__mysql_profile__ssl_config
type google_datastream_connection_profile__mysql_profile
type google_datastream_connection_profile__oracle_profile
type google_datastream_connection_profile__postgresql_profile
type google_datastream_connection_profile__private_connectivity
type google_datastream_connection_profile__timeouts
type google_datastream_connection_profile

type t = private {
  connection_profile_id : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val google_datastream_connection_profile :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_datastream_connection_profile__timeouts ->
  connection_profile_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  bigquery_profile:
    google_datastream_connection_profile__bigquery_profile list ->
  forward_ssh_connectivity:
    google_datastream_connection_profile__forward_ssh_connectivity
    list ->
  gcs_profile:google_datastream_connection_profile__gcs_profile list ->
  mysql_profile:
    google_datastream_connection_profile__mysql_profile list ->
  oracle_profile:
    google_datastream_connection_profile__oracle_profile list ->
  postgresql_profile:
    google_datastream_connection_profile__postgresql_profile list ->
  private_connectivity:
    google_datastream_connection_profile__private_connectivity list ->
  string ->
  t
