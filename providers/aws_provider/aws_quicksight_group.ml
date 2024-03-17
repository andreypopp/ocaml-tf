(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_group = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  description: string  prop option; [@option] (** description *)
  group_name: string prop;  (** group_name *)
  id: string  prop option; [@option] (** id *)
  namespace: string  prop option; [@option] (** namespace *)
} [@@deriving yojson_of]
(** aws_quicksight_group *)

type t = {
  arn: string prop;
  aws_account_id: string prop;
  description: string prop;
  group_name: string prop;
  id: string prop;
  namespace: string prop;
}

let aws_quicksight_group ?aws_account_id ?description ?id ?namespace  ~group_name  __resource_id =
  let __resource_type = "aws_quicksight_group" in
  let __resource = ({
    aws_account_id;
    description;
    group_name;
    id;
    namespace;
  } : aws_quicksight_group) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_group __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    description = Prop.computed __resource_type __resource_id "description";
    group_name = Prop.computed __resource_type __resource_id "group_name";
    id = Prop.computed __resource_type __resource_id "id";
    namespace = Prop.computed __resource_type __resource_id "namespace";
  } : t) in
  __resource_attributes;;

