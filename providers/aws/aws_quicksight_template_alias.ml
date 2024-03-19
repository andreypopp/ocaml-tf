(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_template_alias = {
  alias_name: string prop;  (** alias_name *)
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  template_id: string prop;  (** template_id *)
  template_version_number: float prop;  (** template_version_number *)
} [@@deriving yojson_of]
(** aws_quicksight_template_alias *)

let aws_quicksight_template_alias ?aws_account_id ~alias_name ~template_id ~template_version_number () =
  ({
    alias_name;
    aws_account_id;
    template_id;
    template_version_number;
  } : aws_quicksight_template_alias);;

type t = {
  alias_name: string prop;
  arn: string prop;
  aws_account_id: string prop;
  id: string prop;
  template_id: string prop;
  template_version_number: float prop;
}

let register ?tf_module ?aws_account_id ~alias_name ~template_id ~template_version_number __resource_id =
  let __resource_type = "aws_quicksight_template_alias" in
  let __resource = aws_quicksight_template_alias ?aws_account_id ~alias_name ~template_id ~template_version_number () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_template_alias __resource);
  let __resource_attributes = ({
    alias_name = Prop.computed __resource_type __resource_id "alias_name";
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    id = Prop.computed __resource_type __resource_id "id";
    template_id = Prop.computed __resource_type __resource_id "template_id";
    template_version_number = Prop.computed __resource_type __resource_id "template_version_number";
  } : t) in
  __resource_attributes;;

