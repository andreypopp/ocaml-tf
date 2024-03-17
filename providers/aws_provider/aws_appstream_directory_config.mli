(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_directory_config__service_account_credentials
type aws_appstream_directory_config

type t = private {
  created_time : string prop;
  directory_name : string prop;
  id : string prop;
  organizational_unit_distinguished_names : string list prop;
}

val aws_appstream_directory_config :
  ?id:string prop ->
  directory_name:string prop ->
  organizational_unit_distinguished_names:string prop list ->
  service_account_credentials:
    aws_appstream_directory_config__service_account_credentials list ->
  string ->
  t
