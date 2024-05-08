(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type error = {
  code : float prop;  (** code *)
  details : (string * string prop) list list;
      [@default []] [@yojson_drop_default ( = )]
      (** details *)
  message : string prop;  (** message *)
}

type alloydb__settings__initial_user

val alloydb__settings__initial_user :
  password:string prop ->
  user:string prop ->
  unit ->
  alloydb__settings__initial_user

type alloydb__settings__primary_instance_settings__machine_config

val alloydb__settings__primary_instance_settings__machine_config :
  cpu_count:float prop ->
  unit ->
  alloydb__settings__primary_instance_settings__machine_config

type alloydb__settings__primary_instance_settings

val alloydb__settings__primary_instance_settings :
  ?database_flags:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  id:string prop ->
  machine_config:
    alloydb__settings__primary_instance_settings__machine_config list ->
  unit ->
  alloydb__settings__primary_instance_settings

type alloydb__settings

val alloydb__settings :
  ?labels:(string * string prop) list ->
  ?primary_instance_settings:
    alloydb__settings__primary_instance_settings list ->
  vpc_network:string prop ->
  initial_user:alloydb__settings__initial_user list ->
  unit ->
  alloydb__settings

type alloydb

val alloydb :
  ?settings:alloydb__settings list ->
  cluster_id:string prop ->
  unit ->
  alloydb

type cloudsql__settings__ip_config__authorized_networks

val cloudsql__settings__ip_config__authorized_networks :
  ?expire_time:string prop ->
  ?label:string prop ->
  ?ttl:string prop ->
  value:string prop ->
  unit ->
  cloudsql__settings__ip_config__authorized_networks

type cloudsql__settings__ip_config

val cloudsql__settings__ip_config :
  ?enable_ipv4:bool prop ->
  ?private_network:string prop ->
  ?require_ssl:bool prop ->
  ?authorized_networks:
    cloudsql__settings__ip_config__authorized_networks list ->
  unit ->
  cloudsql__settings__ip_config

type cloudsql__settings

val cloudsql__settings :
  ?activation_policy:string prop ->
  ?auto_storage_increase:bool prop ->
  ?cmek_key_name:string prop ->
  ?collation:string prop ->
  ?data_disk_size_gb:string prop ->
  ?data_disk_type:string prop ->
  ?database_flags:(string * string prop) list ->
  ?database_version:string prop ->
  ?edition:string prop ->
  ?root_password:string prop ->
  ?storage_auto_resize_limit:string prop ->
  ?tier:string prop ->
  ?user_labels:(string * string prop) list ->
  ?zone:string prop ->
  ?ip_config:cloudsql__settings__ip_config list ->
  source_id:string prop ->
  unit ->
  cloudsql__settings

type cloudsql

val cloudsql : ?settings:cloudsql__settings list -> unit -> cloudsql

type mysql__ssl

val mysql__ssl :
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ca_certificate:string prop ->
  unit ->
  mysql__ssl

type mysql

val mysql :
  ?cloud_sql_id:string prop ->
  ?ssl:mysql__ssl list ->
  host:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  unit ->
  mysql

type oracle__forward_ssh_connectivity

val oracle__forward_ssh_connectivity :
  ?password:string prop ->
  ?private_key:string prop ->
  hostname:string prop ->
  port:float prop ->
  username:string prop ->
  unit ->
  oracle__forward_ssh_connectivity

type oracle__private_connectivity

val oracle__private_connectivity :
  private_connection:string prop ->
  unit ->
  oracle__private_connectivity

type oracle__ssl

val oracle__ssl :
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ca_certificate:string prop ->
  unit ->
  oracle__ssl

type oracle__static_service_ip_connectivity

val oracle__static_service_ip_connectivity :
  unit -> oracle__static_service_ip_connectivity

type oracle

val oracle :
  ?forward_ssh_connectivity:oracle__forward_ssh_connectivity list ->
  ?private_connectivity:oracle__private_connectivity list ->
  ?ssl:oracle__ssl list ->
  ?static_service_ip_connectivity:
    oracle__static_service_ip_connectivity list ->
  database_service:string prop ->
  host:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  unit ->
  oracle

type postgresql__ssl

val postgresql__ssl :
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ca_certificate:string prop ->
  unit ->
  postgresql__ssl

type postgresql

val postgresql :
  ?cloud_sql_id:string prop ->
  ?ssl:postgresql__ssl list ->
  host:string prop ->
  password:string prop ->
  port:float prop ->
  username:string prop ->
  unit ->
  postgresql

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_database_migration_service_connection_profile

val google_database_migration_service_connection_profile :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?alloydb:alloydb list ->
  ?cloudsql:cloudsql list ->
  ?mysql:mysql list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  unit ->
  google_database_migration_service_connection_profile

val yojson_of_google_database_migration_service_connection_profile :
  google_database_migration_service_connection_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_profile_id : string prop;
  create_time : string prop;
  dbprovider : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error : error list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?alloydb:alloydb list ->
  ?cloudsql:cloudsql list ->
  ?mysql:mysql list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?alloydb:alloydb list ->
  ?cloudsql:cloudsql list ->
  ?mysql:mysql list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?timeouts:timeouts ->
  connection_profile_id:string prop ->
  string ->
  t Tf_core.resource
