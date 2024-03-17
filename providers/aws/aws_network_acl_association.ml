(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_acl_association = {
  id : string prop option; [@option]  (** id *)
  network_acl_id : string prop;  (** network_acl_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_network_acl_association *)

type t = {
  id : string prop;
  network_acl_id : string prop;
  subnet_id : string prop;
}

let aws_network_acl_association ?id ~network_acl_id ~subnet_id
    __resource_id =
  let __resource_type = "aws_network_acl_association" in
  let __resource =
    ({ id; network_acl_id; subnet_id } : aws_network_acl_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_acl_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       network_acl_id =
         Prop.computed __resource_type __resource_id "network_acl_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
