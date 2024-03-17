(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector2_member_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_inspector2_member_association__timeouts *)

type aws_inspector2_member_association = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_inspector2_member_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_member_association *)

type t = {
  account_id : string prop;
  delegated_admin_account_id : string prop;
  id : string prop;
  relationship_status : string prop;
  updated_at : string prop;
}

let aws_inspector2_member_association ?id ?timeouts ~account_id
    __resource_id =
  let __resource_type = "aws_inspector2_member_association" in
  let __resource =
    ({ account_id; id; timeouts }
      : aws_inspector2_member_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_member_association __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       delegated_admin_account_id =
         Prop.computed __resource_type __resource_id
           "delegated_admin_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       relationship_status =
         Prop.computed __resource_type __resource_id
           "relationship_status";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
     }
      : t)
  in
  __resource_attributes
