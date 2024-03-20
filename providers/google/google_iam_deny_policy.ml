(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__deny_rule__denial_condition = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__deny_rule__denial_condition) -> ()

let yojson_of_rules__deny_rule__denial_condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__deny_rule__denial_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__deny_rule__denial_condition

[@@@deriving.end]

type rules__deny_rule = {
  denied_permissions : string prop list option; [@option]
  denied_principals : string prop list option; [@option]
  exception_permissions : string prop list option; [@option]
  exception_principals : string prop list option; [@option]
  denial_condition : rules__deny_rule__denial_condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__deny_rule) -> ()

let yojson_of_rules__deny_rule =
  (function
   | {
       denied_permissions = v_denied_permissions;
       denied_principals = v_denied_principals;
       exception_permissions = v_exception_permissions;
       exception_principals = v_exception_principals;
       denial_condition = v_denial_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rules__deny_rule__denial_condition
             v_denial_condition
         in
         ("denial_condition", arg) :: bnds
       in
       let bnds =
         match v_exception_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exception_principals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exception_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exception_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_denied_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_principals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_denied_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_permissions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__deny_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__deny_rule

[@@@deriving.end]

type rules = {
  description : string prop option; [@option]
  deny_rule : rules__deny_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | { description = v_description; deny_rule = v_deny_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__deny_rule v_deny_rule
         in
         ("deny_rule", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_iam_deny_policy = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_deny_policy) -> ()

let yojson_of_google_iam_deny_policy =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       parent = v_parent;
       rules = v_rules;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_iam_deny_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_deny_policy

[@@@deriving.end]

let rules__deny_rule__denial_condition ?description ?location ?title
    ~expression () : rules__deny_rule__denial_condition =
  { description; expression; location; title }

let rules__deny_rule ?denied_permissions ?denied_principals
    ?exception_permissions ?exception_principals ~denial_condition ()
    : rules__deny_rule =
  {
    denied_permissions;
    denied_principals;
    exception_permissions;
    exception_principals;
    denial_condition;
  }

let rules ?description ~deny_rule () : rules =
  { description; deny_rule }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_deny_policy ?display_name ?id ?timeouts ~name ~parent
    ~rules () : google_iam_deny_policy =
  { display_name; id; name; parent; rules; timeouts }

type t = {
  display_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let make ?display_name ?id ?timeouts ~name ~parent ~rules __id =
  let __type = "google_iam_deny_policy" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_deny_policy
        (google_iam_deny_policy ?display_name ?id ?timeouts ~name
           ~parent ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~name ~parent
    ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~name ~parent ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
