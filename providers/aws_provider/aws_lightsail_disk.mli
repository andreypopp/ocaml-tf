(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_disk

type t = private {
  arn : string prop;
  availability_zone : string prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  size_in_gb : float prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_lightsail_disk :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  name:string prop ->
  size_in_gb:float prop ->
  string ->
  t
