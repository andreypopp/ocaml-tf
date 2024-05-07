(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type inline_policy = {
  name : string prop option; [@option]
  policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inline_policy) -> ()

let yojson_of_inline_policy =
  (function
   | { name = v_name; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inline_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inline_policy

[@@@deriving.end]

type aws_iam_role = {
  assume_role_policy : string prop;
  description : string prop option; [@option]
  force_detach_policies : bool prop option; [@option]
  id : string prop option; [@option]
  managed_policy_arns : string prop list option; [@option]
  max_session_duration : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  path : string prop option; [@option]
  permissions_boundary : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  inline_policy : inline_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_role) -> ()

let yojson_of_aws_iam_role =
  (function
   | {
       assume_role_policy = v_assume_role_policy;
       description = v_description;
       force_detach_policies = v_force_detach_policies;
       id = v_id;
       managed_policy_arns = v_managed_policy_arns;
       max_session_duration = v_max_session_duration;
       name = v_name;
       name_prefix = v_name_prefix;
       path = v_path;
       permissions_boundary = v_permissions_boundary;
       tags = v_tags;
       tags_all = v_tags_all;
       inline_policy = v_inline_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inline_policy v_inline_policy
         in
         ("inline_policy", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissions_boundary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permissions_boundary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_policy_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "managed_policy_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_detach_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_detach_policies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_assume_role_policy
         in
         ("assume_role_policy", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_role

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
