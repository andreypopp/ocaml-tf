(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__egress_filter

val spec__egress_filter :
  ?type_:string prop -> unit -> spec__egress_filter

type spec

val spec : ?egress_filter:spec__egress_filter list -> unit -> spec

type aws_appmesh_mesh

val aws_appmesh_mesh :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?spec:spec list ->
  name:string prop ->
  unit ->
  aws_appmesh_mesh

val yojson_of_aws_appmesh_mesh : aws_appmesh_mesh -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?spec:spec list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?spec:spec list ->
  name:string prop ->
  string ->
  t Tf_core.resource
