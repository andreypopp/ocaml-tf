(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_acl_association = {
  network_acl_id : string;  (** network_acl_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_network_acl_association *)

let aws_network_acl_association ~network_acl_id ~subnet_id
    __resource_id =
  let __resource_type = "aws_network_acl_association" in
  let __resource = { network_acl_id; subnet_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_acl_association __resource);
  ()
