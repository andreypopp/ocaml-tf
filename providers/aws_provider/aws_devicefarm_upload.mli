(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_upload

type t = private {
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

val aws_devicefarm_upload :
  ?content_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  project_arn:string prop ->
  type_:string prop ->
  string ->
  t
