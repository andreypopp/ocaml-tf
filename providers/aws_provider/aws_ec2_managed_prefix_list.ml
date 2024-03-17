(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_managed_prefix_list__entry = {
  cidr : string;  (** cidr *)
  description : string option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list__entry *)

type aws_ec2_managed_prefix_list = {
  address_family : string;  (** address_family *)
  max_entries : float;  (** max_entries *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  entry : aws_ec2_managed_prefix_list__entry list;
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list *)

let aws_ec2_managed_prefix_list ?tags ~address_family ~max_entries
    ~name ~entry __resource_id =
  let __resource_type = "aws_ec2_managed_prefix_list" in
  let __resource =
    { address_family; max_entries; name; tags; entry }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_managed_prefix_list __resource);
  ()
