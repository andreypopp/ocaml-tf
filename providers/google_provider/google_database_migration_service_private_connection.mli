(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_database_migration_service_private_connection__timeouts

type google_database_migration_service_private_connection__vpc_peering_config

type google_database_migration_service_private_connection__error = {
  details : (string * string) list;  (** details *)
  message : string;  (** message *)
}

type google_database_migration_service_private_connection

val google_database_migration_service_private_connection :
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:
    google_database_migration_service_private_connection__timeouts ->
  location:string ->
  private_connection_id:string ->
  vpc_peering_config:
    google_database_migration_service_private_connection__vpc_peering_config
    list ->
  string ->
  unit
