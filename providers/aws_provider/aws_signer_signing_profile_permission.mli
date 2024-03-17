(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_signer_signing_profile_permission

val aws_signer_signing_profile_permission :
  ?id:string prop ->
  ?profile_version:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  principal:string prop ->
  profile_name:string prop ->
  string ->
  unit
