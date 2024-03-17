(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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

type aws_organizations_organization = {
  aws_service_access_principals : string list option; [@option]
      (** aws_service_access_principals *)
  enabled_policy_types : string list option; [@option]
      (** enabled_policy_types *)
  feature_set : string option; [@option]  (** feature_set *)
}
[@@deriving yojson_of]
(** aws_organizations_organization *)

let aws_organizations_organization ?aws_service_access_principals
    ?enabled_policy_types ?feature_set __resource_id =
  let __resource_type = "aws_organizations_organization" in
  let __resource =
    {
      aws_service_access_principals;
      enabled_policy_types;
      feature_set;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organization __resource);
  ()
