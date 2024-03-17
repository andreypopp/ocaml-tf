(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_managed_prefix_list_entry = {
  cidr : string;  (** cidr *)
  description : string option; [@option]  (** description *)
  prefix_list_id : string;  (** prefix_list_id *)
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list_entry *)

let aws_ec2_managed_prefix_list_entry ?description ~cidr
    ~prefix_list_id __resource_id =
  let __resource_type = "aws_ec2_managed_prefix_list_entry" in
  let __resource = { cidr; description; prefix_list_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_managed_prefix_list_entry __resource);
  ()
