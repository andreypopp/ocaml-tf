(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

type spec__listener = {
  port_mapping : spec__listener__port_mapping list;
      [@default []] [@yojson_drop_default ( = )]
      (** port_mapping *)
}

type spec = {
  listener : spec__listener list;
      [@default []] [@yojson_drop_default ( = )]
      (** listener *)
}

type aws_appmesh_virtual_router

val aws_appmesh_virtual_router :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  unit ->
  aws_appmesh_virtual_router

val yojson_of_aws_appmesh_virtual_router :
  aws_appmesh_virtual_router -> json

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
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
