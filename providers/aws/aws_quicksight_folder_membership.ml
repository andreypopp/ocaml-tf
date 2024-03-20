(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_folder_membership = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  folder_id: string prop;  (** folder_id *)
  member_id: string prop;  (** member_id *)
  member_type: string prop;  (** member_type *)
} [@@deriving yojson_of]
(** aws_quicksight_folder_membership *)

let aws_quicksight_folder_membership ?aws_account_id ~folder_id ~member_id ~member_type () =
  ({
    aws_account_id;
    folder_id;
    member_id;
    member_type;
  } : aws_quicksight_folder_membership);;

type t = {
  aws_account_id: string prop;
  folder_id: string prop;
  id: string prop;
  member_id: string prop;
  member_type: string prop;
}

let make ?aws_account_id ~folder_id ~member_id ~member_type __id =
  let __type = "aws_quicksight_folder_membership" in
  let __attrs = ({
    aws_account_id = Prop.computed __type __id "aws_account_id";
    folder_id = Prop.computed __type __id "folder_id";
    id = Prop.computed __type __id "id";
    member_id = Prop.computed __type __id "member_id";
    member_type = Prop.computed __type __id "member_type";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_folder_membership (aws_quicksight_folder_membership ?aws_account_id ~folder_id ~member_id ~member_type ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ~folder_id ~member_id ~member_type __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ~folder_id ~member_id ~member_type __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

