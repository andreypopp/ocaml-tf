(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_policy_definition = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  management_group_id : string prop option; [@option]
  metadata : string prop option; [@option]
  mode : string prop;
  name : string prop;
  parameters : string prop option; [@option]
  policy_rule : string prop option; [@option]
  policy_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_policy_definition) -> ()

let yojson_of_azurerm_policy_definition =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       management_group_id = v_management_group_id;
       metadata = v_metadata;
       mode = v_mode;
       name = v_name;
       parameters = v_parameters;
       policy_rule = v_policy_rule;
       policy_type = v_policy_type;
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
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
       in
       let bnds =
         match v_policy_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_rule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_management_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "management_group_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : azurerm_policy_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_policy_definition

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_definition ?description ?id ?management_group_id
    ?metadata ?parameters ?policy_rule ?timeouts ~display_name ~mode
    ~name ~policy_type () : azurerm_policy_definition =
  {
    description;
    display_name;
    id;
    management_group_id;
    metadata;
    mode;
    name;
    parameters;
    policy_rule;
    policy_type;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  mode : string prop;
  name : string prop;
  parameters : string prop;
  policy_rule : string prop;
  policy_type : string prop;
  role_definition_ids : string list prop;
}

let make ?description ?id ?management_group_id ?metadata ?parameters
    ?policy_rule ?timeouts ~display_name ~mode ~name ~policy_type
    __id =
  let __type = "azurerm_policy_definition" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       metadata = Prop.computed __type __id "metadata";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy_rule = Prop.computed __type __id "policy_rule";
       policy_type = Prop.computed __type __id "policy_type";
       role_definition_ids =
         Prop.computed __type __id "role_definition_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_definition
        (azurerm_policy_definition ?description ?id
           ?management_group_id ?metadata ?parameters ?policy_rule
           ?timeouts ~display_name ~mode ~name ~policy_type ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?management_group_id
    ?metadata ?parameters ?policy_rule ?timeouts ~display_name ~mode
    ~name ~policy_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?management_group_id ?metadata ?parameters
      ?policy_rule ?timeouts ~display_name ~mode ~name ~policy_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
