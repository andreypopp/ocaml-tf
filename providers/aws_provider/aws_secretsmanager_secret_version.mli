(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret_version

val aws_secretsmanager_secret_version :
  ?id:string ->
  ?secret_binary:string ->
  ?secret_string:string ->
  ?version_stages:string list ->
  secret_id:string ->
  string ->
  unit
