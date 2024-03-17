(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_studio

val aws_emr_studio :
  ?description:string ->
  ?idp_auth_url:string ->
  ?idp_relay_state_parameter_name:string ->
  ?tags:(string * string) list ->
  ?user_role:string ->
  auth_mode:string ->
  default_s3_location:string ->
  engine_security_group_id:string ->
  name:string ->
  service_role:string ->
  subnet_ids:string list ->
  vpc_id:string ->
  workspace_security_group_id:string ->
  string ->
  unit
