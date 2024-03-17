(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_database_migration_service_private_connection__timeouts

type google_database_migration_service_private_connection__vpc_peering_config

type google_database_migration_service_private_connection__error = {
  details : (string * string prop) list;  (** details *)
  message : string prop;  (** message *)
}

type google_database_migration_service_private_connection

type t = private {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error :
    google_database_migration_service_private_connection__error list
    prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  private_connection_id : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val google_database_migration_service_private_connection :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:
    google_database_migration_service_private_connection__timeouts ->
  location:string prop ->
  private_connection_id:string prop ->
  vpc_peering_config:
    google_database_migration_service_private_connection__vpc_peering_config
    list ->
  string ->
  t
