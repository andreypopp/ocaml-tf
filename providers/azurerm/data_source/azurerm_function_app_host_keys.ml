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

type azurerm_function_app_host_keys = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_function_app_host_keys) -> ()

let yojson_of_azurerm_function_app_host_keys =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_function_app_host_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_function_app_host_keys

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_function_app_host_keys ?id ?timeouts ~name
    ~resource_group_name () : azurerm_function_app_host_keys =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  blobs_extension_key : string prop;
  default_function_key : string prop;
  durabletask_extension_key : string prop;
  event_grid_extension_config_key : string prop;
  event_grid_extension_key : string prop;
  id : string prop;
  name : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  signalr_extension_key : string prop;
  webpubsub_extension_key : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_function_app_host_keys" in
  let __attrs =
    ({
       tf_name = __id;
       blobs_extension_key =
         Prop.computed __type __id "blobs_extension_key";
       default_function_key =
         Prop.computed __type __id "default_function_key";
       durabletask_extension_key =
         Prop.computed __type __id "durabletask_extension_key";
       event_grid_extension_config_key =
         Prop.computed __type __id "event_grid_extension_config_key";
       event_grid_extension_key =
         Prop.computed __type __id "event_grid_extension_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       signalr_extension_key =
         Prop.computed __type __id "signalr_extension_key";
       webpubsub_extension_key =
         Prop.computed __type __id "webpubsub_extension_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_host_keys
        (azurerm_function_app_host_keys ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
