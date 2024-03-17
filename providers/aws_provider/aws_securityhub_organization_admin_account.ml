(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_organization_admin_account = {
  admin_account_id : string;  (** admin_account_id *)
}
[@@deriving yojson_of]
(** aws_securityhub_organization_admin_account *)

let aws_securityhub_organization_admin_account ~admin_account_id
    __resource_id =
  let __resource_type =
    "aws_securityhub_organization_admin_account"
  in
  let __resource = { admin_account_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_organization_admin_account __resource);
  ()
