(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_organization__accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_organizations_organization__non_master_accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_organizations_organization__roots__policy_types = {
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_organizations_organization__roots = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
  policy_types :
    aws_organizations_organization__roots__policy_types list;
      (** policy_types *)
}
[@@deriving yojson_of]

type aws_organizations_organization

val aws_organizations_organization :
  ?aws_service_access_principals:string list ->
  ?enabled_policy_types:string list ->
  ?feature_set:string ->
  string ->
  unit
