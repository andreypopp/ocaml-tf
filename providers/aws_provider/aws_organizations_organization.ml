(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_organization__accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_organizations_organization__non_master_accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_organizations_organization__roots__policy_types = {
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_organizations_organization__roots = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  policy_types :
    aws_organizations_organization__roots__policy_types list;
      (** policy_types *)
}
[@@deriving yojson_of]

type aws_organizations_organization = {
  aws_service_access_principals : string prop list option; [@option]
      (** aws_service_access_principals *)
  enabled_policy_types : string prop list option; [@option]
      (** enabled_policy_types *)
  feature_set : string prop option; [@option]  (** feature_set *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_organizations_organization *)

let aws_organizations_organization ?aws_service_access_principals
    ?enabled_policy_types ?feature_set ?id __resource_id =
  let __resource_type = "aws_organizations_organization" in
  let __resource =
    {
      aws_service_access_principals;
      enabled_policy_types;
      feature_set;
      id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organization __resource);
  ()
