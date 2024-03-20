(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_emr_studio_session_mapping

val aws_emr_studio_session_mapping :
  ?id:string prop ->
  ?identity_id:string prop ->
  ?identity_name:string prop ->
  identity_type:string prop ->
  session_policy_arn:string prop ->
  studio_id:string prop ->
  unit ->
  aws_emr_studio_session_mapping

val yojson_of_aws_emr_studio_session_mapping :
  aws_emr_studio_session_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identity_id : string prop;
  identity_name : string prop;
  identity_type : string prop;
  session_policy_arn : string prop;
  studio_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?identity_name:string prop ->
  identity_type:string prop ->
  session_policy_arn:string prop ->
  studio_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?identity_id:string prop ->
  ?identity_name:string prop ->
  identity_type:string prop ->
  session_policy_arn:string prop ->
  studio_id:string prop ->
  string ->
  t Tf_core.resource
