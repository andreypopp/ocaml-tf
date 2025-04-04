(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_directory_service_trust

val yojson_of_aws_directory_service_trust :
  aws_directory_service_trust -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  conditional_forwarder_ip_addrs : string list prop;
  created_date_time : string prop;
  delete_associated_conditional_forwarder : bool prop;
  directory_id : string prop;
  id : string prop;
  last_updated_date_time : string prop;
  remote_domain_name : string prop;
  selective_auth : string prop;
  state_last_updated_date_time : string prop;
  trust_direction : string prop;
  trust_password : string prop;
  trust_state : string prop;
  trust_state_reason : string prop;
  trust_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?conditional_forwarder_ip_addrs:string prop list ->
  ?delete_associated_conditional_forwarder:bool prop ->
  ?selective_auth:string prop ->
  ?trust_type:string prop ->
  directory_id:string prop ->
  remote_domain_name:string prop ->
  trust_direction:string prop ->
  trust_password:string prop ->
  string ->
  t

val make :
  ?conditional_forwarder_ip_addrs:string prop list ->
  ?delete_associated_conditional_forwarder:bool prop ->
  ?selective_auth:string prop ->
  ?trust_type:string prop ->
  directory_id:string prop ->
  remote_domain_name:string prop ->
  trust_direction:string prop ->
  trust_password:string prop ->
  string ->
  t Tf_core.resource
