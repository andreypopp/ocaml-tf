(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_profile

val aws_transfer_profile :
  ?certificate_ids:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  as2_id:string prop ->
  profile_type:string prop ->
  string ->
  unit
