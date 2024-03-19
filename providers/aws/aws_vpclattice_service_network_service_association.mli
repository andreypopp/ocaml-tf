(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  unit ->
  aws_vpclattice_service_network_service_association

val yojson_of_aws_vpclattice_service_network_service_association :
  aws_vpclattice_service_network_service_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_by : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  service_identifier : string prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  string ->
  t
