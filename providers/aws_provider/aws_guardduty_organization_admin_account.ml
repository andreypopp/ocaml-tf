(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_organization_admin_account = {
  admin_account_id : string prop;  (** admin_account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_admin_account *)

type t = { admin_account_id : string prop; id : string prop }

let aws_guardduty_organization_admin_account ?id ~admin_account_id
    __resource_id =
  let __resource_type = "aws_guardduty_organization_admin_account" in
  let __resource =
    ({ admin_account_id; id }
      : aws_guardduty_organization_admin_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_organization_admin_account __resource);
  let __resource_attributes =
    ({
       admin_account_id =
         Prop.computed __resource_type __resource_id
           "admin_account_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
