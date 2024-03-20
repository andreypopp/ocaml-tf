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

type azurerm_blueprint_definition = {
  id : string prop option; [@option]
  name : string prop;
  scope_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_blueprint_definition) -> ()

let yojson_of_azurerm_blueprint_definition =
  (function
   | {
       id = v_id;
       name = v_name;
       scope_id = v_scope_id;
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
         let arg = yojson_of_prop yojson_of_string v_scope_id in
         ("scope_id", arg) :: bnds
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
    : azurerm_blueprint_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_blueprint_definition

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_blueprint_definition ?id ?timeouts ~name ~scope_id () :
    azurerm_blueprint_definition =
  { id; name; scope_id; timeouts }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  scope_id : string prop;
  target_scope : string prop;
  time_created : string prop;
  versions : string list prop;
}

let make ?id ?timeouts ~name ~scope_id __id =
  let __type = "azurerm_blueprint_definition" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       name = Prop.computed __type __id "name";
       scope_id = Prop.computed __type __id "scope_id";
       target_scope = Prop.computed __type __id "target_scope";
       time_created = Prop.computed __type __id "time_created";
       versions = Prop.computed __type __id "versions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_blueprint_definition
        (azurerm_blueprint_definition ?id ?timeouts ~name ~scope_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~scope_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~scope_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
