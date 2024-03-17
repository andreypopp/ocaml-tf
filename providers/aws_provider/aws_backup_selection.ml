(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_backup_selection__condition__string_equals = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_equals *)

type aws_backup_selection__condition__string_like = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_like *)

type aws_backup_selection__condition__string_not_equals = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__condition__string_not_equals *)

type aws_backup_selection__condition__string_not_like = {
  key : string;  (** key *)
  value : string;  (** value *)
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
  key : string;  (** key *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_selection__selection_tag *)

type aws_backup_selection = {
  iam_role_arn : string;  (** iam_role_arn *)
  name : string;  (** name *)
  plan_id : string;  (** plan_id *)
  resources : string list option; [@option]  (** resources *)
  condition : aws_backup_selection__condition list;
  selection_tag : aws_backup_selection__selection_tag list;
}
[@@deriving yojson_of]
(** aws_backup_selection *)

let aws_backup_selection ?resources ~iam_role_arn ~name ~plan_id
    ~condition ~selection_tag __resource_id =
  let __resource_type = "aws_backup_selection" in
  let __resource =
    {
      iam_role_arn;
      name;
      plan_id;
      resources;
      condition;
      selection_tag;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_selection __resource);
  ()
