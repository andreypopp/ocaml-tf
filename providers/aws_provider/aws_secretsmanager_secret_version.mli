(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_version

val aws_secretsmanager_secret_version :
  ?id:string prop ->
  ?secret_binary:string prop ->
  ?secret_string:string prop ->
  ?version_stages:string prop list ->
  secret_id:string prop ->
  string ->
  unit
