(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_conditional_forwarder

type t = private {
  directory_id : string prop;
  dns_ips : string list prop;
  id : string prop;
  remote_domain_name : string prop;
}

val aws_directory_service_conditional_forwarder :
  ?id:string prop ->
  directory_id:string prop ->
  dns_ips:string prop list ->
  remote_domain_name:string prop ->
  string ->
  t
