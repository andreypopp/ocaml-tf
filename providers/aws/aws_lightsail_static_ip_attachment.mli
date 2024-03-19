(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_lightsail_static_ip_attachment

val aws_lightsail_static_ip_attachment :
  ?id:string prop ->
  instance_name:string prop ->
  static_ip_name:string prop ->
  unit ->
  aws_lightsail_static_ip_attachment

val yojson_of_aws_lightsail_static_ip_attachment :
  aws_lightsail_static_ip_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_name : string prop;
  ip_address : string prop;
  static_ip_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_name:string prop ->
  static_ip_name:string prop ->
  string ->
  t
