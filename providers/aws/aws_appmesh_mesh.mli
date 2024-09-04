(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__egress_filter

val spec__egress_filter :
  ?type_:string prop -> unit -> spec__egress_filter

type spec__service_discovery

val spec__service_discovery :
  ?ip_preference:string prop -> unit -> spec__service_discovery

type spec

val spec :
  ?egress_filter:spec__egress_filter list ->
  ?service_discovery:spec__service_discovery list ->
  unit ->
  spec

type aws_appmesh_mesh

val aws_appmesh_mesh :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?spec:spec list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?spec:spec list ->
  name:string prop ->
  string ->
  t Tf_core.resource
