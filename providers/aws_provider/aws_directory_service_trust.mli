(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_trust

val aws_directory_service_trust :
  ?conditional_forwarder_ip_addrs:string list ->
  ?delete_associated_conditional_forwarder:bool ->
  ?selective_auth:string ->
  ?trust_type:string ->
  directory_id:string ->
  remote_domain_name:string ->
  trust_direction:string ->
  trust_password:string ->
  string ->
  unit
