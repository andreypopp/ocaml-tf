(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_studio_session_mapping

val aws_emr_studio_session_mapping :
  ?id:string prop ->
  ?identity_id:string prop ->
  ?identity_name:string prop ->
  identity_type:string prop ->
  session_policy_arn:string prop ->
  studio_id:string prop ->
  string ->
  unit
