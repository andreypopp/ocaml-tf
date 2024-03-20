(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type policy_definition_group = {
  additional_metadata_resource_id : string prop;
  category : string prop;
  description : string prop;
  display_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_additional_metadata_resource_id
         in
         ("additional_metadata_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : policy_definition_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_definition_group

[@@@deriving.end]

type policy_definition_reference = {
  parameter_values : string prop;
  parameters : (string * string prop) list;
  policy_definition_id : string prop;
  policy_group_names : string prop list;
  reference_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_definition_reference) -> ()

let yojson_of_policy_definition_reference =
  (function
   | {
       parameter_values = v_parameter_values;
       parameters = v_parameters;
       policy_definition_id = v_policy_definition_id;
       policy_group_names = v_policy_group_names;
       reference_id = v_reference_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reference_id in
         ("reference_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_policy_group_names
         in
         ("policy_group_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_definition_id
         in
         ("policy_definition_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_values
         in
         ("parameter_values", arg) :: bnds
       in
       `Assoc bnds
    : policy_definition_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_definition_reference

[@@@deriving.end]

type azurerm_policy_set_definition = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  management_group_name : string prop option; [@option]
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_policy_set_definition) -> ()

let yojson_of_azurerm_policy_set_definition =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       management_group_name = v_management_group_name;
       name = v_name;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_management_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "management_group_name", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_policy_set_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_policy_set_definition

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_policy_set_definition ?display_name ?id
    ?management_group_name ?name ?timeouts () :
    azurerm_policy_set_definition =
  { display_name; id; management_group_name; name; timeouts }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_name : string prop;
  metadata : string prop;
  name : string prop;
  parameters : string prop;
  policy_definition_group : policy_definition_group list prop;
  policy_definition_reference :
    policy_definition_reference list prop;
  policy_definitions : string prop;
  policy_type : string prop;
}

let make ?display_name ?id ?management_group_name ?name ?timeouts
    __id =
  let __type = "azurerm_policy_set_definition" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_name =
         Prop.computed __type __id "management_group_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy_definition_group =
         Prop.computed __type __id "policy_definition_group";
       policy_definition_reference =
         Prop.computed __type __id "policy_definition_reference";
       policy_definitions =
         Prop.computed __type __id "policy_definitions";
       policy_type = Prop.computed __type __id "policy_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_set_definition
        (azurerm_policy_set_definition ?display_name ?id
           ?management_group_name ?name ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?management_group_name
    ?name ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?management_group_name ?name ?timeouts
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
