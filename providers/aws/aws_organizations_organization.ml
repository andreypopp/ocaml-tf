(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type non_master_accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type roots__policy_types = {
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type roots = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  policy_types : roots__policy_types list;  (** policy_types *)
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
    ?enabled_policy_types ?feature_set ?id () :
    aws_organizations_organization =
  {
    aws_service_access_principals;
    enabled_policy_types;
    feature_set;
    id;
  }

type t = {
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

let register ?tf_module ?aws_service_access_principals
    ?enabled_policy_types ?feature_set ?id __resource_id =
  let __resource_type = "aws_organizations_organization" in
  let __resource =
    aws_organizations_organization ?aws_service_access_principals
      ?enabled_policy_types ?feature_set ?id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organization __resource);
  let __resource_attributes =
    ({
       accounts =
         Prop.computed __resource_type __resource_id "accounts";
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_service_access_principals =
         Prop.computed __resource_type __resource_id
           "aws_service_access_principals";
       enabled_policy_types =
         Prop.computed __resource_type __resource_id
           "enabled_policy_types";
       feature_set =
         Prop.computed __resource_type __resource_id "feature_set";
       id = Prop.computed __resource_type __resource_id "id";
       master_account_arn =
         Prop.computed __resource_type __resource_id
           "master_account_arn";
       master_account_email =
         Prop.computed __resource_type __resource_id
           "master_account_email";
       master_account_id =
         Prop.computed __resource_type __resource_id
           "master_account_id";
       non_master_accounts =
         Prop.computed __resource_type __resource_id
           "non_master_accounts";
       roots = Prop.computed __resource_type __resource_id "roots";
     }
      : t)
  in
  __resource_attributes
