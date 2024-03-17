(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_group_membership = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  group_name: string prop;  (** group_name *)
  id: string  prop option; [@option] (** id *)
  member_name: string prop;  (** member_name *)
  namespace: string  prop option; [@option] (** namespace *)
} [@@deriving yojson_of]
(** aws_quicksight_group_membership *)

type t = {
  arn: string prop;
  aws_account_id: string prop;
  group_name: string prop;
  id: string prop;
  member_name: string prop;
  namespace: string prop;
}

let aws_quicksight_group_membership ?aws_account_id ?id ?namespace  ~group_name ~member_name  __resource_id =
  let __resource_type = "aws_quicksight_group_membership" in
  let __resource = ({
    aws_account_id;
    group_name;
    id;
    member_name;
    namespace;
  } : aws_quicksight_group_membership) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_group_membership __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    group_name = Prop.computed __resource_type __resource_id "group_name";
    id = Prop.computed __resource_type __resource_id "id";
    member_name = Prop.computed __resource_type __resource_id "member_name";
    namespace = Prop.computed __resource_type __resource_id "namespace";
  } : t) in
  __resource_attributes;;

