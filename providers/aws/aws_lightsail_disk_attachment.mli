(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_disk_attachment

type t = private {
  disk_name : string prop;
  disk_path : string prop;
  id : string prop;
  instance_name : string prop;
}

val aws_lightsail_disk_attachment :
  ?id:string prop ->
  disk_name:string prop ->
  disk_path:string prop ->
  instance_name:string prop ->
  string ->
  t
