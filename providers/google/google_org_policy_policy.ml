(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dry_run_spec__rules__condition = {
  description : string prop option; [@option]
  expression : string prop option; [@option]
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dry_run_spec__rules__condition) -> ()

let yojson_of_dry_run_spec__rules__condition =
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
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
       `Assoc bnds
    : dry_run_spec__rules__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dry_run_spec__rules__condition

[@@@deriving.end]

type dry_run_spec__rules__values = {
  allowed_values : string prop list option; [@option]
  denied_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dry_run_spec__rules__values) -> ()

let yojson_of_dry_run_spec__rules__values =
  (function
   | {
       allowed_values = v_allowed_values;
       denied_values = v_denied_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_denied_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dry_run_spec__rules__values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dry_run_spec__rules__values

[@@@deriving.end]

type dry_run_spec__rules = {
  allow_all : string prop option; [@option]
  deny_all : string prop option; [@option]
  enforce : string prop option; [@option]
  condition : dry_run_spec__rules__condition list;
  values : dry_run_spec__rules__values list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dry_run_spec__rules) -> ()

let yojson_of_dry_run_spec__rules =
  (function
   | {
       allow_all = v_allow_all;
       deny_all = v_deny_all;
       enforce = v_enforce;
       condition = v_condition;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dry_run_spec__rules__values
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dry_run_spec__rules__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deny_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deny_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allow_all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dry_run_spec__rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dry_run_spec__rules

[@@@deriving.end]

type dry_run_spec = {
  inherit_from_parent : bool prop option; [@option]
  reset : bool prop option; [@option]
  rules : dry_run_spec__rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dry_run_spec) -> ()

let yojson_of_dry_run_spec =
  (function
   | {
       inherit_from_parent = v_inherit_from_parent;
       reset = v_reset;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dry_run_spec__rules v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         match v_reset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inherit_from_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "inherit_from_parent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dry_run_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dry_run_spec

[@@@deriving.end]

type spec__rules__condition = {
  description : string prop option; [@option]
  expression : string prop option; [@option]
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rules__condition) -> ()

let yojson_of_spec__rules__condition =
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
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
       `Assoc bnds
    : spec__rules__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rules__condition

[@@@deriving.end]

type spec__rules__values = {
  allowed_values : string prop list option; [@option]
  denied_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rules__values) -> ()

let yojson_of_spec__rules__values =
  (function
   | {
       allowed_values = v_allowed_values;
       denied_values = v_denied_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_denied_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__rules__values -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rules__values

[@@@deriving.end]

type spec__rules = {
  allow_all : string prop option; [@option]
  deny_all : string prop option; [@option]
  enforce : string prop option; [@option]
  condition : spec__rules__condition list;
  values : spec__rules__values list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rules) -> ()

let yojson_of_spec__rules =
  (function
   | {
       allow_all = v_allow_all;
       deny_all = v_deny_all;
       enforce = v_enforce;
       condition = v_condition;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__rules__values v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__rules__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deny_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deny_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allow_all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rules

[@@@deriving.end]

type spec = {
  inherit_from_parent : bool prop option; [@option]
  reset : bool prop option; [@option]
  rules : spec__rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       inherit_from_parent = v_inherit_from_parent;
       reset = v_reset;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         match v_reset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inherit_from_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "inherit_from_parent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

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

type google_org_policy_policy = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  dry_run_spec : dry_run_spec list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_org_policy_policy) -> ()

let yojson_of_google_org_policy_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       parent = v_parent;
       dry_run_spec = v_dry_run_spec;
       spec = v_spec;
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
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dry_run_spec v_dry_run_spec
         in
         ("dry_run_spec", arg) :: bnds
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
       `Assoc bnds
    : google_org_policy_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_org_policy_policy

[@@@deriving.end]

let dry_run_spec__rules__condition ?description ?expression ?location
    ?title () : dry_run_spec__rules__condition =
  { description; expression; location; title }

let dry_run_spec__rules__values ?allowed_values ?denied_values () :
    dry_run_spec__rules__values =
  { allowed_values; denied_values }

let dry_run_spec__rules ?allow_all ?deny_all ?enforce ~condition
    ~values () : dry_run_spec__rules =
  { allow_all; deny_all; enforce; condition; values }

let dry_run_spec ?inherit_from_parent ?reset ~rules () : dry_run_spec
    =
  { inherit_from_parent; reset; rules }

let spec__rules__condition ?description ?expression ?location ?title
    () : spec__rules__condition =
  { description; expression; location; title }

let spec__rules__values ?allowed_values ?denied_values () :
    spec__rules__values =
  { allowed_values; denied_values }

let spec__rules ?allow_all ?deny_all ?enforce ~condition ~values () :
    spec__rules =
  { allow_all; deny_all; enforce; condition; values }

let spec ?inherit_from_parent ?reset ~rules () : spec =
  { inherit_from_parent; reset; rules }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_org_policy_policy ?id ?timeouts ~name ~parent
    ~dry_run_spec ~spec () : google_org_policy_policy =
  { id; name; parent; dry_run_spec; spec; timeouts }

type t = {
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let make ?id ?timeouts ~name ~parent ~dry_run_spec ~spec __id =
  let __type = "google_org_policy_policy" in
  let __attrs =
    ({
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
      yojson_of_google_org_policy_policy
        (google_org_policy_policy ?id ?timeouts ~name ~parent
           ~dry_run_spec ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~parent ~dry_run_spec
    ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~parent ~dry_run_spec ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
