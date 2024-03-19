(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_securityhub_action_target

val aws_securityhub_action_target :
  ?id:string prop ->
  description:string prop ->
  identifier:string prop ->
  name:string prop ->
  unit ->
  aws_securityhub_action_target

val yojson_of_aws_securityhub_action_target :
  aws_securityhub_action_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  identifier : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  description:string prop ->
  identifier:string prop ->
  name:string prop ->
  string ->
  t
