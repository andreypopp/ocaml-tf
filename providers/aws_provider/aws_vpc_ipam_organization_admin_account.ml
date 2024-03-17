(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_organization_admin_account = {
  delegated_admin_account_id : string prop;
      (** delegated_admin_account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_organization_admin_account *)

type t = {
  arn : string prop;
  delegated_admin_account_id : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  service_principal : string prop;
}

let aws_vpc_ipam_organization_admin_account ?id
    ~delegated_admin_account_id __resource_id =
  let __resource_type = "aws_vpc_ipam_organization_admin_account" in
  let __resource =
    ({ delegated_admin_account_id; id }
      : aws_vpc_ipam_organization_admin_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_organization_admin_account __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       delegated_admin_account_id =
         Prop.computed __resource_type __resource_id
           "delegated_admin_account_id";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       service_principal =
         Prop.computed __resource_type __resource_id
           "service_principal";
     }
      : t)
  in
  __resource_attributes
