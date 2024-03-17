(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_database_migration_service_connection_profile__alloydb__settings__initial_user

type google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings__machine_config

type google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings

type google_database_migration_service_connection_profile__alloydb__settings

type google_database_migration_service_connection_profile__alloydb

type google_database_migration_service_connection_profile__cloudsql__settings__ip_config__authorized_networks

type google_database_migration_service_connection_profile__cloudsql__settings__ip_config

type google_database_migration_service_connection_profile__cloudsql__settings

type google_database_migration_service_connection_profile__cloudsql
type google_database_migration_service_connection_profile__mysql__ssl
type google_database_migration_service_connection_profile__mysql

type google_database_migration_service_connection_profile__oracle__forward_ssh_connectivity

type google_database_migration_service_connection_profile__oracle__private_connectivity

type google_database_migration_service_connection_profile__oracle__ssl

type google_database_migration_service_connection_profile__oracle__static_service_ip_connectivity

type google_database_migration_service_connection_profile__oracle

type google_database_migration_service_connection_profile__postgresql__ssl

type google_database_migration_service_connection_profile__postgresql
type google_database_migration_service_connection_profile__timeouts

type google_database_migration_service_connection_profile__error = {
  code : float;  (** code *)
  details : (string * string) list list;  (** details *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_database_migration_service_connection_profile

val google_database_migration_service_connection_profile :
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?timeouts:
    google_database_migration_service_connection_profile__timeouts ->
  connection_profile_id:string ->
  alloydb:
    google_database_migration_service_connection_profile__alloydb
    list ->
  cloudsql:
    google_database_migration_service_connection_profile__cloudsql
    list ->
  mysql:
    google_database_migration_service_connection_profile__mysql list ->
  oracle:
    google_database_migration_service_connection_profile__oracle list ->
  postgresql:
    google_database_migration_service_connection_profile__postgresql
    list ->
  string ->
  unit
