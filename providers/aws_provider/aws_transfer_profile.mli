(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_profile

val aws_transfer_profile :
  ?certificate_ids:string list ->
  ?tags:(string * string) list ->
  as2_id:string ->
  profile_type:string ->
  string ->
  unit
