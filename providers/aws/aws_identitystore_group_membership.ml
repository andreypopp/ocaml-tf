(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_identitystore_group_membership = {
  group_id : string prop;  (** group_id *)
  id : string prop option; [@option]  (** id *)
  identity_store_id : string prop;  (** identity_store_id *)
  member_id : string prop;  (** member_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group_membership *)

type t = {
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
  member_id : string prop;
  membership_id : string prop;
}

let aws_identitystore_group_membership ?id ~group_id
    ~identity_store_id ~member_id __resource_id =
  let __resource_type = "aws_identitystore_group_membership" in
  let __resource =
    ({ group_id; id; identity_store_id; member_id }
      : aws_identitystore_group_membership)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_group_membership __resource);
  let __resource_attributes =
    ({
       group_id =
         Prop.computed __resource_type __resource_id "group_id";
       id = Prop.computed __resource_type __resource_id "id";
       identity_store_id =
         Prop.computed __resource_type __resource_id
           "identity_store_id";
       member_id =
         Prop.computed __resource_type __resource_id "member_id";
       membership_id =
         Prop.computed __resource_type __resource_id "membership_id";
     }
      : t)
  in
  __resource_attributes
