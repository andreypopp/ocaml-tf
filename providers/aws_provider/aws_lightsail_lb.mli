(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb

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

val aws_lightsail_lb :
  ?health_check_path:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_port:float prop ->
  name:string prop ->
  string ->
  t
