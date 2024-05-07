(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_disk

val aws_lightsail_disk :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  name:string prop ->
  size_in_gb:float prop ->
  unit ->
  aws_lightsail_disk

val yojson_of_aws_lightsail_disk : aws_lightsail_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  name:string prop ->
  size_in_gb:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  name:string prop ->
  size_in_gb:float prop ->
  string ->
  t Tf_core.resource
