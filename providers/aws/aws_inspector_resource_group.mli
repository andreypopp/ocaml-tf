(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_inspector_resource_group

val aws_inspector_resource_group :
  ?id:string prop ->
  tags:string prop Tf_core.assoc ->
  unit ->
  aws_inspector_resource_group

val yojson_of_aws_inspector_resource_group :
  aws_inspector_resource_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
