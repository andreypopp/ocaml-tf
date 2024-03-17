(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_managed_prefix_list__entry = {
  cidr : string prop;  (** cidr *)
  description : string prop option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list__entry *)

type aws_ec2_managed_prefix_list = {
  address_family : string prop;  (** address_family *)
  id : string prop option; [@option]  (** id *)
  max_entries : float prop;  (** max_entries *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  entry : aws_ec2_managed_prefix_list__entry list;
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list *)

type t = {
  address_family : string prop;
  arn : string prop;
  id : string prop;
  max_entries : float prop;
  name : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let aws_ec2_managed_prefix_list ?id ?tags ?tags_all ~address_family
    ~max_entries ~name ~entry __resource_id =
  let __resource_type = "aws_ec2_managed_prefix_list" in
  let __resource =
    ({ address_family; id; max_entries; name; tags; tags_all; entry }
      : aws_ec2_managed_prefix_list)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_managed_prefix_list __resource);
  let __resource_attributes =
    ({
       address_family =
         Prop.computed __resource_type __resource_id "address_family";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       max_entries =
         Prop.computed __resource_type __resource_id "max_entries";
       name = Prop.computed __resource_type __resource_id "name";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
