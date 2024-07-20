(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudformation

val cloudformation : unit -> cloudformation

type tags

val tags : unit -> tags

type aws_devopsguru_resource_collection

val aws_devopsguru_resource_collection :
  ?cloudformation:cloudformation list ->
  ?tags:tags list ->
  type_:string prop ->
  unit ->
  aws_devopsguru_resource_collection

val yojson_of_aws_devopsguru_resource_collection :
  aws_devopsguru_resource_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cloudformation:cloudformation list ->
  ?tags:tags list ->
  type_:string prop ->
  string ->
  t

val make :
  ?cloudformation:cloudformation list ->
  ?tags:tags list ->
  type_:string prop ->
  string ->
  t Tf_core.resource
