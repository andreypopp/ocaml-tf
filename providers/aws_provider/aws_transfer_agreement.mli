(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_agreement

val aws_transfer_agreement :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_role:string prop ->
  base_directory:string prop ->
  local_profile_id:string prop ->
  partner_profile_id:string prop ->
  server_id:string prop ->
  string ->
  unit
