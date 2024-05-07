(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_secretsmanager_secret_version

val aws_secretsmanager_secret_version :
  ?id:string prop ->
  ?secret_binary:string prop ->
  ?secret_string:string prop ->
  ?version_stages:string prop list ->
  secret_id:string prop ->
  unit ->
  aws_secretsmanager_secret_version

val yojson_of_aws_secretsmanager_secret_version :
  aws_secretsmanager_secret_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  secret_binary : string prop;
  secret_id : string prop;
  secret_string : string prop;
  version_id : string prop;
  version_stages : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?secret_binary:string prop ->
  ?secret_string:string prop ->
  ?version_stages:string prop list ->
  secret_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?secret_binary:string prop ->
  ?secret_string:string prop ->
  ?version_stages:string prop list ->
  secret_id:string prop ->
  string ->
  t Tf_core.resource
