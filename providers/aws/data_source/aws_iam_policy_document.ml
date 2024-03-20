(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type statement__condition = {
  test : string prop;
  values : string prop list;
  variable : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__condition) -> ()

let yojson_of_statement__condition =
  (function
   | { test = v_test; values = v_values; variable = v_variable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_variable in
         ("variable", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_test in
         ("test", arg) :: bnds
       in
       `Assoc bnds
    : statement__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__condition

[@@@deriving.end]

type statement__not_principals = {
  identifiers : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__not_principals) -> ()

let yojson_of_statement__not_principals =
  (function
   | { identifiers = v_identifiers; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identifiers
         in
         ("identifiers", arg) :: bnds
       in
       `Assoc bnds
    : statement__not_principals -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__not_principals

[@@@deriving.end]

type statement__principals = {
  identifiers : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__principals) -> ()

let yojson_of_statement__principals =
  (function
   | { identifiers = v_identifiers; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identifiers
         in
         ("identifiers", arg) :: bnds
       in
       `Assoc bnds
    : statement__principals -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__principals

[@@@deriving.end]

type statement = {
  actions : string prop list option; [@option]
  effect : string prop option; [@option]
  not_actions : string prop list option; [@option]
  not_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  sid : string prop option; [@option]
  condition : statement__condition list;
  not_principals : statement__not_principals list;
  principals : statement__principals list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement) -> ()

let yojson_of_statement =
  (function
   | {
       actions = v_actions;
       effect = v_effect;
       not_actions = v_not_actions;
       not_resources = v_not_resources;
       resources = v_resources;
       sid = v_sid;
       condition = v_condition;
       not_principals = v_not_principals;
       principals = v_principals;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__principals
             v_principals
         in
         ("principals", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__not_principals
             v_not_principals
         in
         ("not_principals", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__condition v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_sid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sid", arg in
             bnd :: bnds
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
         match v_not_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement

[@@@deriving.end]

type aws_iam_policy_document = {
  id : string prop option; [@option]
  override_json : string prop option; [@option]
  override_policy_documents : string prop list option; [@option]
  policy_id : string prop option; [@option]
  source_json : string prop option; [@option]
  source_policy_documents : string prop list option; [@option]
  version : string prop option; [@option]
  statement : statement list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_policy_document) -> ()

let yojson_of_aws_iam_policy_document =
  (function
   | {
       id = v_id;
       override_json = v_override_json;
       override_policy_documents = v_override_policy_documents;
       policy_id = v_policy_id;
       source_json = v_source_json;
       source_policy_documents = v_source_policy_documents;
       version = v_version;
       statement = v_statement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_statement v_statement in
         ("statement", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_policy_documents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_policy_documents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_policy_documents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "override_policy_documents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "override_json", arg in
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
       `Assoc bnds
    : aws_iam_policy_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_policy_document

[@@@deriving.end]

let statement__condition ~test ~values ~variable () :
    statement__condition =
  { test; values; variable }

let statement__not_principals ~identifiers ~type_ () :
    statement__not_principals =
  { identifiers; type_ }

let statement__principals ~identifiers ~type_ () :
    statement__principals =
  { identifiers; type_ }

let statement ?actions ?effect ?not_actions ?not_resources ?resources
    ?sid ~condition ~not_principals ~principals () : statement =
  {
    actions;
    effect;
    not_actions;
    not_resources;
    resources;
    sid;
    condition;
    not_principals;
    principals;
  }

let aws_iam_policy_document ?id ?override_json
    ?override_policy_documents ?policy_id ?source_json
    ?source_policy_documents ?version ~statement () :
    aws_iam_policy_document =
  {
    id;
    override_json;
    override_policy_documents;
    policy_id;
    source_json;
    source_policy_documents;
    version;
    statement;
  }

type t = {
  id : string prop;
  json : string prop;
  override_json : string prop;
  override_policy_documents : string list prop;
  policy_id : string prop;
  source_json : string prop;
  source_policy_documents : string list prop;
  version : string prop;
}

let make ?id ?override_json ?override_policy_documents ?policy_id
    ?source_json ?source_policy_documents ?version ~statement __id =
  let __type = "aws_iam_policy_document" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       override_json = Prop.computed __type __id "override_json";
       override_policy_documents =
         Prop.computed __type __id "override_policy_documents";
       policy_id = Prop.computed __type __id "policy_id";
       source_json = Prop.computed __type __id "source_json";
       source_policy_documents =
         Prop.computed __type __id "source_policy_documents";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_policy_document
        (aws_iam_policy_document ?id ?override_json
           ?override_policy_documents ?policy_id ?source_json
           ?source_policy_documents ?version ~statement ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?override_json ?override_policy_documents
    ?policy_id ?source_json ?source_policy_documents ?version
    ~statement __id =
  let (r : _ Tf_core.resource) =
    make ?id ?override_json ?override_policy_documents ?policy_id
      ?source_json ?source_policy_documents ?version ~statement __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
