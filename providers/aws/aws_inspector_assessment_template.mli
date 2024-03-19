(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  arn : string prop;
  duration : float prop;
  id : string prop;
  name : string prop;
  rules_package_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  duration:float prop ->
  name:string prop ->
  rules_package_arns:string prop list ->
  target_arn:string prop ->
  event_subscription:event_subscription list ->
  string ->
  t
