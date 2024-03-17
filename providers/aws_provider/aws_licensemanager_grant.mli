(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_grant

val aws_licensemanager_grant :
  ?id:string prop ->
  allowed_operations:string prop list ->
  license_arn:string prop ->
  name:string prop ->
  principal:string prop ->
  string ->
  unit
