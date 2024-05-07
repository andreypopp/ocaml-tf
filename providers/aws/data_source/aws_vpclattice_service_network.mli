(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpclattice_service_network

val aws_vpclattice_service_network :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  service_network_identifier:string prop ->
  unit ->
  aws_vpclattice_service_network

val yojson_of_aws_vpclattice_service_network :
  aws_vpclattice_service_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  auth_type : string prop;
  created_at : string prop;
  id : string prop;
  last_updated_at : string prop;
  name : string prop;
  number_of_associated_services : float prop;
  number_of_associated_vpcs : float prop;
  service_network_identifier : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  service_network_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  service_network_identifier:string prop ->
  string ->
  t Tf_core.resource
