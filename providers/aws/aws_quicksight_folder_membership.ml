(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_folder_membership = {
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  folder_id : string prop;  (** folder_id *)
  member_id : string prop;  (** member_id *)
  member_type : string prop;  (** member_type *)
}
[@@deriving yojson_of]
(** aws_quicksight_folder_membership *)

type t = {
  aws_account_id : string prop;
  folder_id : string prop;
  id : string prop;
  member_id : string prop;
  member_type : string prop;
}

let aws_quicksight_folder_membership ?aws_account_id ~folder_id
    ~member_id ~member_type __resource_id =
  let __resource_type = "aws_quicksight_folder_membership" in
  let __resource =
    ({ aws_account_id; folder_id; member_id; member_type }
      : aws_quicksight_folder_membership)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_folder_membership __resource);
  let __resource_attributes =
    ({
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       folder_id =
         Prop.computed __resource_type __resource_id "folder_id";
       id = Prop.computed __resource_type __resource_id "id";
       member_id =
         Prop.computed __resource_type __resource_id "member_id";
       member_type =
         Prop.computed __resource_type __resource_id "member_type";
     }
      : t)
  in
  __resource_attributes
