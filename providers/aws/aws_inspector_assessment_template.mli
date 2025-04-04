(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_subscription

val event_subscription :
  event:string prop ->
  topic_arn:string prop ->
  unit ->
  event_subscription

type aws_inspector_assessment_template

val aws_inspector_assessment_template :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  duration:float prop ->
  name:string prop ->
  rules_package_arns:string prop list ->
  target_arn:string prop ->
  event_subscription:event_subscription list ->
  unit ->
  aws_inspector_assessment_template

val yojson_of_aws_inspector_assessment_template :
  aws_inspector_assessment_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  duration : float prop;
  id : string prop;
  name : string prop;
  rules_package_arns : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  duration:float prop ->
  name:string prop ->
  rules_package_arns:string prop list ->
  target_arn:string prop ->
  event_subscription:event_subscription list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  duration:float prop ->
  name:string prop ->
  rules_package_arns:string prop list ->
  target_arn:string prop ->
  event_subscription:event_subscription list ->
  string ->
  t Tf_core.resource
