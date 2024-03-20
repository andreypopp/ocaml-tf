(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?force_detach_policies ?id ?managed_policy_arns
    ?max_session_duration ?name ?name_prefix ?path
    ?permissions_boundary ?tags ?tags_all ~assume_role_policy
    ~inline_policy __id =
  let __type = "aws_iam_role" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       assume_role_policy =
         Prop.computed __type __id "assume_role_policy";
       create_date = Prop.computed __type __id "create_date";
       description = Prop.computed __type __id "description";
       force_detach_policies =
         Prop.computed __type __id "force_detach_policies";
       id = Prop.computed __type __id "id";
       managed_policy_arns =
         Prop.computed __type __id "managed_policy_arns";
       max_session_duration =
         Prop.computed __type __id "max_session_duration";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       permissions_boundary =
         Prop.computed __type __id "permissions_boundary";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_role
        (aws_iam_role ?description ?force_detach_policies ?id
           ?managed_policy_arns ?max_session_duration ?name
           ?name_prefix ?path ?permissions_boundary ?tags ?tags_all
           ~assume_role_policy ~inline_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_detach_policies ?id
    ?managed_policy_arns ?max_session_duration ?name ?name_prefix
    ?path ?permissions_boundary ?tags ?tags_all ~assume_role_policy
    ~inline_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_detach_policies ?id ?managed_policy_arns
      ?max_session_duration ?name ?name_prefix ?path
      ?permissions_boundary ?tags ?tags_all ~assume_role_policy
      ~inline_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
