(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__provider__virtual_node

val spec__provider__virtual_node :
  virtual_node_name:string prop ->
  unit ->
  spec__provider__virtual_node

type spec__provider__virtual_router

val spec__provider__virtual_router :
  virtual_router_name:string prop ->
  unit ->
  spec__provider__virtual_router

type spec__provider

val spec__provider :
  ?virtual_node:spec__provider__virtual_node list ->
  ?virtual_router:spec__provider__virtual_router list ->
  unit ->
  spec__provider

type spec

val spec : ?provider:spec__provider list -> unit -> spec

type aws_appmesh_virtual_service

val aws_appmesh_virtual_service :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  unit ->
  aws_appmesh_virtual_service

val yojson_of_aws_appmesh_virtual_service :
  aws_appmesh_virtual_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
