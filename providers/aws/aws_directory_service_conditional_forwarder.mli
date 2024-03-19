(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_directory_service_conditional_forwarder

val aws_directory_service_conditional_forwarder :
  ?id:string prop ->
  directory_id:string prop ->
  dns_ips:string prop list ->
  remote_domain_name:string prop ->
  unit ->
  aws_directory_service_conditional_forwarder

val yojson_of_aws_directory_service_conditional_forwarder :
  aws_directory_service_conditional_forwarder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  directory_id : string prop;
  dns_ips : string list prop;
  id : string prop;
  remote_domain_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  directory_id:string prop ->
  dns_ips:string prop list ->
  remote_domain_name:string prop ->
  string ->
  t
