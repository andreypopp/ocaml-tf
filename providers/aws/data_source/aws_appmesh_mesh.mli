(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__egress_filter = {
  type_ : string prop; [@key "type"]  (** type *)
}

type spec = {
  egress_filter : spec__egress_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** egress_filter *)
}

type aws_appmesh_mesh

val aws_appmesh_mesh :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
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
  spec : spec list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
