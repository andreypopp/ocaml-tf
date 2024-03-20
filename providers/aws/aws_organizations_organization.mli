(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type non_master_accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type roots__policy_types = {
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type roots = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  policy_types : roots__policy_types list;  (** policy_types *)
}

type aws_organizations_organization

val aws_organizations_organization :
  ?aws_service_access_principals:string prop list ->
  ?enabled_policy_types:string prop list ->
  ?feature_set:string prop ->
  ?id:string prop ->
  unit ->
  aws_organizations_organization

val yojson_of_aws_organizations_organization :
  aws_organizations_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accounts : accounts list prop;
  arn : string prop;
  aws_service_access_principals : string list prop;
  enabled_policy_types : string list prop;
  feature_set : string prop;
  id : string prop;
  master_account_arn : string prop;
  master_account_email : string prop;
  master_account_id : string prop;
  non_master_accounts : non_master_accounts list prop;
  roots : roots list prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_service_access_principals:string prop list ->
  ?enabled_policy_types:string prop list ->
  ?feature_set:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?aws_service_access_principals:string prop list ->
  ?enabled_policy_types:string prop list ->
  ?feature_set:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
