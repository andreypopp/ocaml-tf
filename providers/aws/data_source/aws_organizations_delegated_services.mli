(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delegated_services = {
  delegation_enabled_date : string prop;
      (** delegation_enabled_date *)
  service_principal : string prop;  (** service_principal *)
}

type aws_organizations_delegated_services

val aws_organizations_delegated_services :
  ?id:string prop ->
  account_id:string prop ->
  unit ->
  aws_organizations_delegated_services

val yojson_of_aws_organizations_delegated_services :
  aws_organizations_delegated_services -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  delegated_services : delegated_services list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
