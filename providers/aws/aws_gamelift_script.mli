(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zip_file:string prop ->
  ?storage_location:storage_location list ->
  name:string prop ->
  unit ->
  aws_gamelift_script

val yojson_of_aws_gamelift_script : aws_gamelift_script -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
  zip_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zip_file:string prop ->
  ?storage_location:storage_location list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zip_file:string prop ->
  ?storage_location:storage_location list ->
  name:string prop ->
  string ->
  t Tf_core.resource
