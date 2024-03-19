(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition__string_equals = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition__string_equals *)

type condition__string_like = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition__string_like *)

type condition__string_not_equals = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition__string_not_equals *)

type condition__string_not_like = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition__string_not_like *)

type condition = {
  string_equals : condition__string_equals list;
  string_like : condition__string_like list;
  string_not_equals : condition__string_not_equals list;
  string_not_like : condition__string_not_like list;
}
[@@deriving yojson_of]
(** condition *)

type selection_tag = {
  key : string prop;  (** key *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** selection_tag *)

type aws_backup_selection = {
  iam_role_arn : string prop;  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  not_resources : string prop list option; [@option]
      (** not_resources *)
  plan_id : string prop;  (** plan_id *)
  resources : string prop list option; [@option]  (** resources *)
  condition : condition list;
  selection_tag : selection_tag list;
}
[@@deriving yojson_of]
(** aws_backup_selection *)

let condition__string_equals ~key ~value () :
    condition__string_equals =
  { key; value }

let condition__string_like ~key ~value () : condition__string_like =
  { key; value }

let condition__string_not_equals ~key ~value () :
    condition__string_not_equals =
  { key; value }

let condition__string_not_like ~key ~value () :
    condition__string_not_like =
  { key; value }

let condition ~string_equals ~string_like ~string_not_equals
    ~string_not_like () : condition =
  { string_equals; string_like; string_not_equals; string_not_like }

let selection_tag ~key ~type_ ~value () : selection_tag =
  { key; type_; value }

let aws_backup_selection ?id ?not_resources ?resources ~iam_role_arn
    ~name ~plan_id ~condition ~selection_tag () :
    aws_backup_selection =
  {
    iam_role_arn;
    id;
    name;
    not_resources;
    plan_id;
    resources;
    condition;
    selection_tag;
  }

type t = {
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  not_resources : string list prop;
  plan_id : string prop;
  resources : string list prop;
}

let register ?tf_module ?id ?not_resources ?resources ~iam_role_arn
    ~name ~plan_id ~condition ~selection_tag __resource_id =
  let __resource_type = "aws_backup_selection" in
  let __resource =
    aws_backup_selection ?id ?not_resources ?resources ~iam_role_arn
      ~name ~plan_id ~condition ~selection_tag ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
