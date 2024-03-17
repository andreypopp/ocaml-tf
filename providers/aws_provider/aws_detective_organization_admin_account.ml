(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_organization_admin_account = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_detective_organization_admin_account *)

let aws_detective_organization_admin_account ?id ~account_id
    __resource_id =
  let __resource_type = "aws_detective_organization_admin_account" in
  let __resource = { account_id; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_organization_admin_account __resource);
  ()
