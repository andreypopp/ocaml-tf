(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpclattice_service_network_service_association

val aws_vpclattice_service_network_service_association :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  unit ->
  aws_vpclattice_service_network_service_association

val yojson_of_aws_vpclattice_service_network_service_association :
  aws_vpclattice_service_network_service_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  service_identifier : string prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  string ->
  t Tf_core.resource
