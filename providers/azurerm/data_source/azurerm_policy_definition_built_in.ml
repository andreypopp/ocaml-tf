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

type azurerm_policy_definition_built_in = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  management_group_name : string prop option; [@option]
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_policy_definition_built_in) -> ()

let yojson_of_azurerm_policy_definition_built_in =
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
    : azurerm_policy_definition_built_in ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_policy_definition_built_in

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_policy_definition_built_in ?display_name ?id
    ?management_group_name ?name ?timeouts () :
    azurerm_policy_definition_built_in =
  { display_name; id; management_group_name; name; timeouts }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_name : string prop;
  metadata : string prop;
  mode : string prop;
  name : string prop;
  parameters : string prop;
  policy_rule : string prop;
  policy_type : string prop;
  role_definition_ids : string list prop;
  type_ : string prop;
}

let make ?display_name ?id ?management_group_name ?name ?timeouts
    __id =
  let __type = "azurerm_policy_definition_built_in" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_name =
         Prop.computed __type __id "management_group_name";
       metadata = Prop.computed __type __id "metadata";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy_rule = Prop.computed __type __id "policy_rule";
       policy_type = Prop.computed __type __id "policy_type";
       role_definition_ids =
         Prop.computed __type __id "role_definition_ids";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_definition_built_in
        (azurerm_policy_definition_built_in ?display_name ?id
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
