(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_managed_prefix_list_entry = {
  cidr : string prop;  (** cidr *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  prefix_list_id : string prop;  (** prefix_list_id *)
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list_entry *)

let aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
    ~prefix_list_id __resource_id =
  let __resource_type = "aws_ec2_managed_prefix_list_entry" in
  let __resource = { cidr; description; id; prefix_list_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_managed_prefix_list_entry __resource);
  ()
