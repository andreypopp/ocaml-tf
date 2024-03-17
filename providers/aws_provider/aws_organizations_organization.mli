(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_organization__accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type aws_organizations_organization__non_master_accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type aws_organizations_organization__roots__policy_types = {
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_organizations_organization__roots = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  policy_types :
    aws_organizations_organization__roots__policy_types list;
      (** policy_types *)
}

type aws_organizations_organization

val aws_organizations_organization :
  ?aws_service_access_principals:string prop list ->
  ?enabled_policy_types:string prop list ->
  ?feature_set:string prop ->
  ?id:string prop ->
  string ->
  unit
