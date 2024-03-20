(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type aws_vpclattice_service

val aws_vpclattice_service :
  ?id:string prop ->
  ?name:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_vpclattice_service

val yojson_of_aws_vpclattice_service : aws_vpclattice_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auth_type : string prop;
  certificate_arn : string prop;
  custom_domain_name : string prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  name : string prop;
  service_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
