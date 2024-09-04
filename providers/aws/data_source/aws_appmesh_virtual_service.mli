(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__provider__virtual_router = {
  virtual_router_name : string prop;  (** virtual_router_name *)
}

type spec__provider__virtual_node = {
  virtual_node_name : string prop;  (** virtual_node_name *)
}

type spec__provider = {
  virtual_node : spec__provider__virtual_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_node *)
  virtual_router : spec__provider__virtual_router list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_router *)
}

type spec = {
  provider : spec__provider list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** provider *)
}

type aws_appmesh_virtual_service

val aws_appmesh_virtual_service :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
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
  spec : spec list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
