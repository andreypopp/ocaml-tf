(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_definition_group = {
  additional_metadata_resource_id : string prop option; [@option]
  category : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_definition_group) -> ()

let yojson_of_policy_definition_group =
  (function
   | {
       additional_metadata_resource_id =
         v_additional_metadata_resource_id;
       category = v_category;
       description = v_description;
       display_name = v_display_name;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_metadata_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_metadata_resource_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_definition_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_definition_group

[@@@deriving.end]

type policy_definition_reference = {
  parameter_values : string prop option; [@option]
  policy_definition_id : string prop;
  policy_group_names : string prop list option; [@option]
  reference_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_definition_reference) -> ()

let yojson_of_policy_definition_reference =
  (function
   | {
       parameter_values = v_parameter_values;
       policy_definition_id = v_policy_definition_id;
       policy_group_names = v_policy_group_names;
       reference_id = v_reference_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_group_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policy_group_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_definition_id
         in
         ("policy_definition_id", arg) :: bnds
       in
       let bnds =
         match v_parameter_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_definition_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_definition_reference

[@@@deriving.end]

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

type azurerm_policy_set_definition = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  management_group_id : string prop option; [@option]
  metadata : string prop option; [@option]
  name : string prop;
  parameters : string prop option; [@option]
  policy_type : string prop;
  policy_definition_group : policy_definition_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_definition_reference : policy_definition_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_policy_set_definition) -> ()

let yojson_of_azurerm_policy_set_definition =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       management_group_id = v_management_group_id;
       metadata = v_metadata;
       name = v_name;
       parameters = v_parameters;
       policy_type = v_policy_type;
       policy_definition_group = v_policy_definition_group;
       policy_definition_reference = v_policy_definition_reference;
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
         if Stdlib.( = ) [] v_policy_definition_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policy_definition_reference)
               v_policy_definition_reference
           in
           let bnd = "policy_definition_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_definition_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policy_definition_group)
               v_policy_definition_group
           in
           let bnd = "policy_definition_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
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
    : azurerm_policy_set_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_policy_set_definition

[@@@deriving.end]

let policy_definition_group ?additional_metadata_resource_id
    ?category ?description ?display_name ~name () :
    policy_definition_group =
  {
    additional_metadata_resource_id;
    category;
    description;
    display_name;
    name;
  }

let policy_definition_reference ?parameter_values ?policy_group_names
    ?reference_id ~policy_definition_id () :
    policy_definition_reference =
  {
    parameter_values;
    policy_definition_id;
    policy_group_names;
    reference_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_set_definition ?description ?id
    ?management_group_id ?metadata ?parameters ?timeouts
    ~display_name ~name ~policy_type ~policy_definition_group
    ~policy_definition_reference () : azurerm_policy_set_definition =
  {
    description;
    display_name;
    id;
    management_group_id;
    metadata;
    name;
    parameters;
    policy_type;
    policy_definition_group;
    policy_definition_reference;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  name : string prop;
  parameters : string prop;
  policy_type : string prop;
}

let make ?description ?id ?management_group_id ?metadata ?parameters
    ?timeouts ~display_name ~name ~policy_type
    ~policy_definition_group ~policy_definition_reference __id =
  let __type = "azurerm_policy_set_definition" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy_type = Prop.computed __type __id "policy_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_set_definition
        (azurerm_policy_set_definition ?description ?id
           ?management_group_id ?metadata ?parameters ?timeouts
           ~display_name ~name ~policy_type ~policy_definition_group
           ~policy_definition_reference ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?management_group_id
    ?metadata ?parameters ?timeouts ~display_name ~name ~policy_type
    ~policy_definition_group ~policy_definition_reference __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?management_group_id ?metadata ?parameters
      ?timeouts ~display_name ~name ~policy_type
      ~policy_definition_group ~policy_definition_reference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
