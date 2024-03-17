(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_profile_permission

val aws_signer_signing_profile_permission :
  ?id:string ->
  ?profile_version:string ->
  ?statement_id:string ->
  ?statement_id_prefix:string ->
  action:string ->
  principal:string ->
  profile_name:string ->
  string ->
  unit
