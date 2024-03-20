(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_signer_signing_profile_permission

val aws_signer_signing_profile_permission :
  ?id:string prop ->
  ?profile_version:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  principal:string prop ->
  profile_name:string prop ->
  unit ->
  aws_signer_signing_profile_permission

val yojson_of_aws_signer_signing_profile_permission :
  aws_signer_signing_profile_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  id : string prop;
  principal : string prop;
  profile_name : string prop;
  profile_version : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?profile_version:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  principal:string prop ->
  profile_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?profile_version:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  principal:string prop ->
  profile_name:string prop ->
  string ->
  t Tf_core.resource
