(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpclattice_service_network_vpc_association

val aws_vpclattice_service_network_vpc_association :
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  service_network_identifier:string prop ->
  vpc_identifier:string prop ->
  unit ->
  aws_vpclattice_service_network_vpc_association

val yojson_of_aws_vpclattice_service_network_vpc_association :
  aws_vpclattice_service_network_vpc_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  id : string prop;
  security_group_ids : string list prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  service_network_identifier:string prop ->
  vpc_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  service_network_identifier:string prop ->
  vpc_identifier:string prop ->
  string ->
  t Tf_core.resource
