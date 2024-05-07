(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_workspaces_image

val aws_workspaces_image :
  ?id:string prop ->
  image_id:string prop ->
  unit ->
  aws_workspaces_image

val yojson_of_aws_workspaces_image : aws_workspaces_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  image_id : string prop;
  name : string prop;
  operating_system_type : string prop;
  required_tenancy : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  image_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  image_id:string prop ->
  string ->
  t Tf_core.resource
