(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type pre_provisioning_hook

val pre_provisioning_hook :
  ?payload_version:string prop ->
  target_arn:string prop ->
  unit ->
  pre_provisioning_hook

type aws_iot_provisioning_template

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
  pre_provisioning_hook:pre_provisioning_hook list ->
  unit ->
  aws_iot_provisioning_template

val yojson_of_aws_iot_provisioning_template :
  aws_iot_provisioning_template -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  name:string prop ->
  provisioning_role_arn:string prop ->
  template_body:string prop ->
  pre_provisioning_hook:pre_provisioning_hook list ->
  string ->
  t
