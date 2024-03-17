(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_trust

val aws_directory_service_trust :
  ?conditional_forwarder_ip_addrs:string prop list ->
  ?delete_associated_conditional_forwarder:bool prop ->
  ?selective_auth:string prop ->
  ?trust_type:string prop ->
  directory_id:string prop ->
  remote_domain_name:string prop ->
  trust_direction:string prop ->
  trust_password:string prop ->
  string ->
  unit
