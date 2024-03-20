(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__access_boundary_rule__availability_condition = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__access_boundary_rule__availability_condition) -> ()

let yojson_of_rules__access_boundary_rule__availability_condition =
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
    : rules__access_boundary_rule__availability_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__access_boundary_rule__availability_condition

[@@@deriving.end]

type rules__access_boundary_rule = {
  available_permissions : string prop list option; [@option]
  available_resource : string prop option; [@option]
  availability_condition :
    rules__access_boundary_rule__availability_condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__access_boundary_rule) -> ()

let yojson_of_rules__access_boundary_rule =
  (function
   | {
       available_permissions = v_available_permissions;
       available_resource = v_available_resource;
       availability_condition = v_availability_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rules__access_boundary_rule__availability_condition
             v_availability_condition
         in
         ("availability_condition", arg) :: bnds
       in
       let bnds =
         match v_available_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "available_resource", arg in
             bnd :: bnds
       in
       let bnds =
         match v_available_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "available_permissions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__access_boundary_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__access_boundary_rule

[@@@deriving.end]

type rules = {
  description : string prop option; [@option]
  access_boundary_rule : rules__access_boundary_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       description = v_description;
       access_boundary_rule = v_access_boundary_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__access_boundary_rule
             v_access_boundary_rule
         in
         ("access_boundary_rule", arg) :: bnds
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

type google_iam_access_boundary_policy = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_access_boundary_policy) -> ()

let yojson_of_google_iam_access_boundary_policy =
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
    : google_iam_access_boundary_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_access_boundary_policy

[@@@deriving.end]

let rules__access_boundary_rule__availability_condition ?description
    ?location ?title ~expression () :
    rules__access_boundary_rule__availability_condition =
  { description; expression; location; title }

let rules__access_boundary_rule ?available_permissions
    ?available_resource ~availability_condition () :
    rules__access_boundary_rule =
  {
    available_permissions;
    available_resource;
    availability_condition;
  }

let rules ?description ~access_boundary_rule () : rules =
  { description; access_boundary_rule }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_access_boundary_policy ?display_name ?id ?timeouts
    ~name ~parent ~rules () : google_iam_access_boundary_policy =
  { display_name; id; name; parent; rules; timeouts }

type t = {
  display_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let make ?display_name ?id ?timeouts ~name ~parent ~rules __id =
  let __type = "google_iam_access_boundary_policy" in
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
      yojson_of_google_iam_access_boundary_policy
        (google_iam_access_boundary_policy ?display_name ?id
           ?timeouts ~name ~parent ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~name ~parent
    ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~name ~parent ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
