(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_organization_admin_account_registration = {
  admin_account_id : string prop;  (** admin_account_id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_organization_admin_account_registration *)

type t = {
  admin_account_id : string prop;
  id : string prop;
  organization_id : string prop;
}

let aws_auditmanager_organization_admin_account_registration
    ~admin_account_id __resource_id =
  let __resource_type =
    "aws_auditmanager_organization_admin_account_registration"
  in
  let __resource =
    ({ admin_account_id }
      : aws_auditmanager_organization_admin_account_registration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_organization_admin_account_registration
       __resource);
  let __resource_attributes =
    ({
       admin_account_id =
         Prop.computed __resource_type __resource_id
           "admin_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       organization_id =
         Prop.computed __resource_type __resource_id
           "organization_id";
     }
      : t)
  in
  __resource_attributes
