(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_inspector_assessment_target

val aws_inspector_assessment_target :
  ?id:string prop ->
  ?resource_group_arn:string prop ->
  name:string prop ->
  unit ->
  aws_inspector_assessment_target

val yojson_of_aws_inspector_assessment_target :
  aws_inspector_assessment_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_group_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_group_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_group_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
