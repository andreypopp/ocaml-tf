(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition__string_equals = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__string_equals) -> ()

let yojson_of_condition__string_equals =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : condition__string_equals -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__string_equals

[@@@deriving.end]

type condition__string_like = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__string_like) -> ()

let yojson_of_condition__string_like =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : condition__string_like -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__string_like

[@@@deriving.end]

type condition__string_not_equals = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__string_not_equals) -> ()

let yojson_of_condition__string_not_equals =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : condition__string_not_equals ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__string_not_equals

[@@@deriving.end]

type condition__string_not_like = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__string_not_like) -> ()

let yojson_of_condition__string_not_like =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : condition__string_not_like -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__string_not_like

[@@@deriving.end]

type condition = {
  string_equals : condition__string_equals list;
  string_like : condition__string_like list;
  string_not_equals : condition__string_not_equals list;
  string_not_like : condition__string_not_like list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       string_equals = v_string_equals;
       string_like = v_string_like;
       string_not_equals = v_string_not_equals;
       string_not_like = v_string_not_like;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__string_not_like
             v_string_not_like
         in
         ("string_not_like", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__string_not_equals
             v_string_not_equals
         in
         ("string_not_equals", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__string_like
             v_string_like
         in
         ("string_like", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__string_equals
             v_string_equals
         in
         ("string_equals", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type selection_tag = {
  key : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : selection_tag) -> ()

let yojson_of_selection_tag =
  (function
   | { key = v_key; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : selection_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_selection_tag

[@@@deriving.end]

type aws_backup_selection = {
  iam_role_arn : string prop;
  id : string prop option; [@option]
  name : string prop;
  not_resources : string prop list option; [@option]
  plan_id : string prop;
  resources : string prop list option; [@option]
  condition : condition list;
  selection_tag : selection_tag list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_selection) -> ()

let yojson_of_aws_backup_selection =
  (function
   | {
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       name = v_name;
       not_resources = v_not_resources;
       plan_id = v_plan_id;
       resources = v_resources;
       condition = v_condition;
       selection_tag = v_selection_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_selection_tag v_selection_tag
         in
         ("selection_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plan_id in
         ("plan_id", arg) :: bnds
       in
       let bnds =
         match v_not_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_resources", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_backup_selection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_selection

[@@@deriving.end]

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
  tf_name : string;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  not_resources : string list prop;
  plan_id : string prop;
  resources : string list prop;
}

let make ?id ?not_resources ?resources ~iam_role_arn ~name ~plan_id
    ~condition ~selection_tag __id =
  let __type = "aws_backup_selection" in
  let __attrs =
    ({
       tf_name = __id;
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       not_resources = Prop.computed __type __id "not_resources";
       plan_id = Prop.computed __type __id "plan_id";
       resources = Prop.computed __type __id "resources";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_selection
        (aws_backup_selection ?id ?not_resources ?resources
           ~iam_role_arn ~name ~plan_id ~condition ~selection_tag ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?not_resources ?resources ~iam_role_arn
    ~name ~plan_id ~condition ~selection_tag __id =
  let (r : _ Tf_core.resource) =
    make ?id ?not_resources ?resources ~iam_role_arn ~name ~plan_id
      ~condition ~selection_tag __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
