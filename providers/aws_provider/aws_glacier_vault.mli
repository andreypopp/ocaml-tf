(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glacier_vault__notification
type aws_glacier_vault

val aws_glacier_vault :
  ?access_policy:string ->
  ?tags:(string * string) list ->
  name:string ->
  notification:aws_glacier_vault__notification list ->
  string ->
  unit
