(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_resource_tags

val aws_organizations_resource_tags :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  resource_id:string prop ->
  unit ->
  aws_organizations_resource_tags

val yojson_of_aws_organizations_resource_tags :
  aws_organizations_resource_tags -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  resource_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
