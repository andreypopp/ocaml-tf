(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_lightsail_lb

val aws_lightsail_lb :
  ?health_check_path:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_port:float prop ->
  name:string prop ->
  unit ->
  aws_lightsail_lb

val yojson_of_aws_lightsail_lb : aws_lightsail_lb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_at : string prop;
  dns_name : string prop;
  health_check_path : string prop;
  id : string prop;
  instance_port : float prop;
  ip_address_type : string prop;
  name : string prop;
  protocol : string prop;
  public_ports : float list prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?health_check_path:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_port:float prop ->
  name:string prop ->
  string ->
  t
