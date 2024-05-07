(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_devicefarm_upload

val aws_devicefarm_upload :
  ?content_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  project_arn:string prop ->
  type_:string prop ->
  unit ->
  aws_devicefarm_upload

val yojson_of_aws_devicefarm_upload : aws_devicefarm_upload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  category : string prop;
  content_type : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  project_arn : string prop;
  type_ : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  project_arn:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?content_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  project_arn:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
