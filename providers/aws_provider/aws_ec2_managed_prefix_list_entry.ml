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

type t = {
  cidr : string prop;
  description : string prop;
  id : string prop;
  prefix_list_id : string prop;
}

let aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
    ~prefix_list_id __resource_id =
  let __resource_type = "aws_ec2_managed_prefix_list_entry" in
  let __resource =
    ({ cidr; description; id; prefix_list_id }
      : aws_ec2_managed_prefix_list_entry)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_managed_prefix_list_entry __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       prefix_list_id =
         Prop.computed __resource_type __resource_id "prefix_list_id";
     }
      : t)
  in
  __resource_attributes
