(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb

val aws_lightsail_lb :
  ?health_check_path:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_port:float prop ->
  name:string prop ->
  string ->
  unit
