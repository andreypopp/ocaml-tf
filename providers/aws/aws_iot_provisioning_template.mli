(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_provisioning_template__pre_provisioning_hook
type aws_iot_provisioning_template

type t = private {
  arn : string prop;
  default_version_id : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  provisioning_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  type_ : string prop;
}

val aws_iot_provisioning_template :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  name:string prop ->
  provisioning_role_arn:string prop ->
  template_body:string prop ->
  pre_provisioning_hook:
    aws_iot_provisioning_template__pre_provisioning_hook list ->
  string ->
  t
