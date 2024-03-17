(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_identitystore_group_membership = {
  group_id : string;  (** group_id *)
  identity_store_id : string;  (** identity_store_id *)
  member_id : string;  (** member_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group_membership *)

let aws_identitystore_group_membership ~group_id ~identity_store_id
    ~member_id __resource_id =
  let __resource_type = "aws_identitystore_group_membership" in
  let __resource = { group_id; identity_store_id; member_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_group_membership __resource);
  ()
