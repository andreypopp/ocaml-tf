(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_studio

type t = private {
  arn : string prop;
  auth_mode : string prop;
  default_s3_location : string prop;
  description : string prop;
  engine_security_group_id : string prop;
  id : string prop;
  idp_auth_url : string prop;
  idp_relay_state_parameter_name : string prop;
  name : string prop;
  service_role : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  user_role : string prop;
  vpc_id : string prop;
  workspace_security_group_id : string prop;
}

val aws_emr_studio :
  ?description:string prop ->
  ?id:string prop ->
  ?idp_auth_url:string prop ->
  ?idp_relay_state_parameter_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_role:string prop ->
  auth_mode:string prop ->
  default_s3_location:string prop ->
  engine_security_group_id:string prop ->
  name:string prop ->
  service_role:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  workspace_security_group_id:string prop ->
  string ->
  t
