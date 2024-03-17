(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appmesh_virtual_service__spec__provider__virtual_node
type aws_appmesh_virtual_service__spec__provider__virtual_router
type aws_appmesh_virtual_service__spec__provider
type aws_appmesh_virtual_service__spec
type aws_appmesh_virtual_service

type t = private {
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

val aws_appmesh_virtual_service :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:aws_appmesh_virtual_service__spec list ->
  string ->
  t
