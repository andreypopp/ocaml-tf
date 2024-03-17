(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_trust

val aws_directory_service_trust :
  ?conditional_forwarder_ip_addrs:string list ->
  directory_id:string ->
  remote_domain_name:string ->
  trust_direction:string ->
  trust_password:string ->
  string ->
  unit
