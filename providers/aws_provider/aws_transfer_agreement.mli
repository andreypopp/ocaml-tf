(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_agreement

val aws_transfer_agreement :
  ?description:string ->
  ?tags:(string * string) list ->
  access_role:string ->
  base_directory:string ->
  local_profile_id:string ->
  partner_profile_id:string ->
  server_id:string ->
  string ->
  unit
