(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_ipam_organization_admin_account = {
  delegated_admin_account_id : string;
      (** delegated_admin_account_id *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_organization_admin_account *)

let aws_vpc_ipam_organization_admin_account
    ~delegated_admin_account_id __resource_id =
  let __resource_type = "aws_vpc_ipam_organization_admin_account" in
  let __resource = { delegated_admin_account_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_organization_admin_account __resource);
  ()
