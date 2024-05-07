(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delegated_administrators = {
  arn : string prop;  (** arn *)
  delegation_enabled_date : string prop;
      (** delegation_enabled_date *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  joined_method : string prop;  (** joined_method *)
  joined_timestamp : string prop;  (** joined_timestamp *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type aws_organizations_delegated_administrators

val aws_organizations_delegated_administrators :
  ?id:string prop ->
  ?service_principal:string prop ->
  unit ->
  aws_organizations_delegated_administrators

val yojson_of_aws_organizations_delegated_administrators :
  aws_organizations_delegated_administrators -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delegated_administrators : delegated_administrators list prop;
  id : string prop;
  service_principal : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?service_principal:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?service_principal:string prop ->
  string ->
  t Tf_core.resource
