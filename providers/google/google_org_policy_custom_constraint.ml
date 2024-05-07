(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_org_policy_custom_constraint = {
  action_type : string prop;
  condition : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  method_types : string prop list;
  name : string prop;
  parent : string prop;
  resource_types : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_org_policy_custom_constraint) -> ()

let yojson_of_google_org_policy_custom_constraint =
  (function
   | {
       action_type = v_action_type;
       condition = v_condition;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       method_types = v_method_types;
       name = v_name;
       parent = v_parent;
       resource_types = v_resource_types;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resource_types
         in
         ("resource_types", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_method_types
         in
         ("method_types", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       `Assoc bnds
    : google_org_policy_custom_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_org_policy_custom_constraint

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_org_policy_custom_constraint ?description ?display_name
    ?id ?timeouts ~action_type ~condition ~method_types ~name ~parent
    ~resource_types () : google_org_policy_custom_constraint =
  {
    action_type;
    condition;
    description;
    display_name;
    id;
    method_types;
    name;
    parent;
    resource_types;
    timeouts;
  }

type t = {
  tf_name : string;
  action_type : string prop;
  condition : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  method_types : string list prop;
  name : string prop;
  parent : string prop;
  resource_types : string list prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?timeouts ~action_type
    ~condition ~method_types ~name ~parent ~resource_types __id =
  let __type = "google_org_policy_custom_constraint" in
  let __attrs =
    ({
       tf_name = __id;
       action_type = Prop.computed __type __id "action_type";
       condition = Prop.computed __type __id "condition";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       method_types = Prop.computed __type __id "method_types";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       resource_types = Prop.computed __type __id "resource_types";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_org_policy_custom_constraint
        (google_org_policy_custom_constraint ?description
           ?display_name ?id ?timeouts ~action_type ~condition
           ~method_types ~name ~parent ~resource_types ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?timeouts
    ~action_type ~condition ~method_types ~name ~parent
    ~resource_types __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?timeouts ~action_type
      ~condition ~method_types ~name ~parent ~resource_types __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
