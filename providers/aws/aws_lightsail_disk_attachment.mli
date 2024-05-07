(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_disk_attachment

val aws_lightsail_disk_attachment :
  ?id:string prop ->
  disk_name:string prop ->
  disk_path:string prop ->
  instance_name:string prop ->
  unit ->
  aws_lightsail_disk_attachment

val yojson_of_aws_lightsail_disk_attachment :
  aws_lightsail_disk_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disk_name : string prop;
  disk_path : string prop;
  id : string prop;
  instance_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  disk_name:string prop ->
  disk_path:string prop ->
  instance_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  disk_name:string prop ->
  disk_path:string prop ->
  instance_name:string prop ->
  string ->
  t Tf_core.resource
