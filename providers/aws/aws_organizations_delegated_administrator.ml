(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_delegated_administrator = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  service_principal : string prop;  (** service_principal *)
}
[@@deriving yojson_of]
(** aws_organizations_delegated_administrator *)

let aws_organizations_delegated_administrator ?id ~account_id
    ~service_principal () : aws_organizations_delegated_administrator
    =
  { account_id; id; service_principal }

type t = {
  account_id : string prop;
  arn : string prop;
  delegation_enabled_date : string prop;
  email : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  service_principal : string prop;
  status : string prop;
}

let register ?tf_module ?id ~account_id ~service_principal
    __resource_id =
  let __resource_type =
    "aws_organizations_delegated_administrator"
  in
  let __resource =
    aws_organizations_delegated_administrator ?id ~account_id
      ~service_principal ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_delegated_administrator __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       delegation_enabled_date =
         Prop.computed __resource_type __resource_id
           "delegation_enabled_date";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       joined_method =
         Prop.computed __resource_type __resource_id "joined_method";
       joined_timestamp =
         Prop.computed __resource_type __resource_id
           "joined_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       service_principal =
         Prop.computed __resource_type __resource_id
           "service_principal";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
