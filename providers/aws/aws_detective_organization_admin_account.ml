(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_organization_admin_account = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_detective_organization_admin_account *)

let aws_detective_organization_admin_account ?id ~account_id () :
    aws_detective_organization_admin_account =
  { account_id; id }

type t = { account_id : string prop; id : string prop }

let register ?tf_module ?id ~account_id __resource_id =
  let __resource_type = "aws_detective_organization_admin_account" in
  let __resource =
    aws_detective_organization_admin_account ?id ~account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_organization_admin_account __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
