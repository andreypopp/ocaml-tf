(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type storage_location

val storage_location :
  ?object_version:string prop ->
  bucket:string prop ->
  key:string prop ->
  role_arn:string prop ->
  unit ->
  storage_location

type aws_gamelift_script

val aws_gamelift_script :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version:string prop ->
  ?zip_file:string prop ->
  name:string prop ->
  storage_location:storage_location list ->
  unit ->
  aws_gamelift_script

val yojson_of_aws_gamelift_script : aws_gamelift_script -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  zip_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version:string prop ->
  ?zip_file:string prop ->
  name:string prop ->
  storage_location:storage_location list ->
  string ->
  t
