(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_version

type t = private {
  arn : string prop;
  id : string prop;
  secret_binary : string prop;
  secret_id : string prop;
  secret_string : string prop;
  version_id : string prop;
  version_stages : string list prop;
}

val aws_secretsmanager_secret_version :
  ?id:string prop ->
  ?secret_binary:string prop ->
  ?secret_string:string prop ->
  ?version_stages:string prop list ->
  secret_id:string prop ->
  string ->
  t
