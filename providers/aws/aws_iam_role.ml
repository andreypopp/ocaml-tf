(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type inline_policy = {
  name : string prop option; [@option]  (** name *)
  policy : string prop option; [@option]  (** policy *)
}
[@@deriving yojson_of]
(** inline_policy *)

type aws_iam_role = {
  assume_role_policy : string prop;  (** assume_role_policy *)
  description : string prop option; [@option]  (** description *)
  force_detach_policies : bool prop option; [@option]
      (** force_detach_policies *)
  id : string prop option; [@option]  (** id *)
  managed_policy_arns : string prop list option; [@option]
      (** managed_policy_arns *)
  max_session_duration : float prop option; [@option]
      (** max_session_duration *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  permissions_boundary : string prop option; [@option]
      (** permissions_boundary *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  inline_policy : inline_policy list;
}
[@@deriving yojson_of]
(** aws_iam_role *)

let inline_policy ?name ?policy () : inline_policy = { name; policy }

let aws_iam_role ?description ?force_detach_policies ?id
    ?managed_policy_arns ?max_session_duration ?name ?name_prefix
    ?path ?permissions_boundary ?tags ?tags_all ~assume_role_policy
    ~inline_policy () : aws_iam_role =
  {
    assume_role_policy;
    description;
    force_detach_policies;
    id;
    managed_policy_arns;
    max_session_duration;
    name;
    name_prefix;
    path;
    permissions_boundary;
    tags;
    tags_all;
    inline_policy;
  }

type t = {
  arn : string prop;
  assume_role_policy : string prop;
  create_date : string prop;
  description : string prop;
  force_detach_policies : bool prop;
  id : string prop;
  managed_policy_arns : string list prop;
  max_session_duration : float prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let register ?tf_module ?description ?force_detach_policies ?id
    ?managed_policy_arns ?max_session_duration ?name ?name_prefix
    ?path ?permissions_boundary ?tags ?tags_all ~assume_role_policy
    ~inline_policy __resource_id =
  let __resource_type = "aws_iam_role" in
  let __resource =
    aws_iam_role ?description ?force_detach_policies ?id
      ?managed_policy_arns ?max_session_duration ?name ?name_prefix
      ?path ?permissions_boundary ?tags ?tags_all ~assume_role_policy
      ~inline_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       assume_role_policy =
         Prop.computed __resource_type __resource_id
           "assume_role_policy";
       create_date =
         Prop.computed __resource_type __resource_id "create_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_detach_policies =
         Prop.computed __resource_type __resource_id
           "force_detach_policies";
       id = Prop.computed __resource_type __resource_id "id";
       managed_policy_arns =
         Prop.computed __resource_type __resource_id
           "managed_policy_arns";
       max_session_duration =
         Prop.computed __resource_type __resource_id
           "max_session_duration";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       path = Prop.computed __resource_type __resource_id "path";
       permissions_boundary =
         Prop.computed __resource_type __resource_id
           "permissions_boundary";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
     }
      : t)
  in
  __resource_attributes
