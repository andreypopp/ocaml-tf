(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_provisioning_template__pre_provisioning_hook
type aws_iot_provisioning_template

val aws_iot_provisioning_template :
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  name:string ->
  provisioning_role_arn:string ->
  template_body:string ->
  pre_provisioning_hook:
    aws_iot_provisioning_template__pre_provisioning_hook list ->
  string ->
  unit
