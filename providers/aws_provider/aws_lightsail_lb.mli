(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_lb

val aws_lightsail_lb :
  ?health_check_path:string ->
  ?id:string ->
  ?ip_address_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  instance_port:float ->
  name:string ->
  string ->
  unit
