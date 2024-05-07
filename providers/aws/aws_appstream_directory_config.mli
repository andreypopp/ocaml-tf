(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_account_credentials

val service_account_credentials :
  account_name:string prop ->
  account_password:string prop ->
  unit ->
  service_account_credentials

type aws_appstream_directory_config

val aws_appstream_directory_config :
  ?id:string prop ->
  directory_name:string prop ->
  organizational_unit_distinguished_names:string prop list ->
  service_account_credentials:service_account_credentials list ->
  unit ->
  aws_appstream_directory_config

val yojson_of_aws_appstream_directory_config :
  aws_appstream_directory_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_time : string prop;
  directory_name : string prop;
  id : string prop;
  organizational_unit_distinguished_names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  directory_name:string prop ->
  organizational_unit_distinguished_names:string prop list ->
  service_account_credentials:service_account_credentials list ->
  string ->
  t

val make :
  ?id:string prop ->
  directory_name:string prop ->
  organizational_unit_distinguished_names:string prop list ->
  service_account_credentials:service_account_credentials list ->
  string ->
  t Tf_core.resource
