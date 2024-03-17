(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_selection__condition__string_equals = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_equals *)

type aws_backup_selection__condition__string_like = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_like *)

type aws_backup_selection__condition__string_not_equals = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_not_equals *)

type aws_backup_selection__condition__string_not_like = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_not_like *)

type aws_backup_selection__condition = {
  string_equals :
    aws_backup_selection__condition__string_equals list;
  string_like : aws_backup_selection__condition__string_like list;
  string_not_equals :
    aws_backup_selection__condition__string_not_equals list;
  string_not_like :
    aws_backup_selection__condition__string_not_like list;
}
[@@deriving yojson_of]
(** aws_backup_selection__condition *)

type aws_backup_selection__selection_tag = {
  key : string prop;  (** key *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__selection_tag *)

type aws_backup_selection = {
  iam_role_arn : string prop;  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  not_resources : string prop list option; [@option]
      (** not_resources *)
  plan_id : string prop;  (** plan_id *)
  resources : string prop list option; [@option]  (** resources *)
  condition : aws_backup_selection__condition list;
  selection_tag : aws_backup_selection__selection_tag list;
}
[@@deriving yojson_of]
(** aws_backup_selection *)

type t = {
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  not_resources : string list prop;
  plan_id : string prop;
  resources : string list prop;
}

let aws_backup_selection ?id ?not_resources ?resources ~iam_role_arn
    ~name ~plan_id ~condition ~selection_tag __resource_id =
  let __resource_type = "aws_backup_selection" in
  let __resource =
    ({
       iam_role_arn;
       id;
       name;
       not_resources;
       plan_id;
       resources;
       condition;
       selection_tag;
     }
      : aws_backup_selection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_selection __resource);
  let __resource_attributes =
    ({
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       not_resources =
         Prop.computed __resource_type __resource_id "not_resources";
       plan_id =
         Prop.computed __resource_type __resource_id "plan_id";
       resources =
         Prop.computed __resource_type __resource_id "resources";
     }
      : t)
  in
  __resource_attributes
