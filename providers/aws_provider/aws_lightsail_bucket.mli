(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_bucket

type t = private {
  arn : string prop;
  availability_zone : string prop;
  bundle_id : string prop;
  created_at : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

val aws_lightsail_bucket :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  t
