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

type azurerm_blueprint_published_version = {
  blueprint_name : string prop;
  id : string prop option; [@option]
  scope_id : string prop;
  version : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_blueprint_published_version) -> ()

let yojson_of_azurerm_blueprint_published_version =
  (function
   | {
       blueprint_name = v_blueprint_name;
       id = v_id;
       scope_id = v_scope_id;
       version = v_version;
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
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope_id in
         ("scope_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_blueprint_name
         in
         ("blueprint_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_blueprint_published_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_blueprint_published_version

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_blueprint_published_version ?id ?timeouts ~blueprint_name
    ~scope_id ~version () : azurerm_blueprint_published_version =
  { blueprint_name; id; scope_id; version; timeouts }

type t = {
  tf_name : string;
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_modified : string prop;
  scope_id : string prop;
  target_scope : string prop;
  time_created : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?id ?timeouts ~blueprint_name ~scope_id ~version __id =
  let __type = "azurerm_blueprint_published_version" in
  let __attrs =
    ({
       tf_name = __id;
       blueprint_name = Prop.computed __type __id "blueprint_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       scope_id = Prop.computed __type __id "scope_id";
       target_scope = Prop.computed __type __id "target_scope";
       time_created = Prop.computed __type __id "time_created";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_blueprint_published_version
        (azurerm_blueprint_published_version ?id ?timeouts
           ~blueprint_name ~scope_id ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~blueprint_name ~scope_id
    ~version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~blueprint_name ~scope_id ~version __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
