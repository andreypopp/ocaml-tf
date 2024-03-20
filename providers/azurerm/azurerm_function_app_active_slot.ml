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

type azurerm_function_app_active_slot = {
  id : string prop option; [@option]
  overwrite_network_config : bool prop option; [@option]
  slot_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_function_app_active_slot) -> ()

let yojson_of_azurerm_function_app_active_slot =
  (function
   | {
       id = v_id;
       overwrite_network_config = v_overwrite_network_config;
       slot_id = v_slot_id;
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
         let arg = yojson_of_prop yojson_of_string v_slot_id in
         ("slot_id", arg) :: bnds
       in
       let bnds =
         match v_overwrite_network_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "overwrite_network_config", arg in
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
       `Assoc bnds
    : azurerm_function_app_active_slot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_function_app_active_slot

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_active_slot ?id ?overwrite_network_config
    ?timeouts ~slot_id () : azurerm_function_app_active_slot =
  { id; overwrite_network_config; slot_id; timeouts }

type t = {
  id : string prop;
  last_successful_swap : string prop;
  overwrite_network_config : bool prop;
  slot_id : string prop;
}

let make ?id ?overwrite_network_config ?timeouts ~slot_id __id =
  let __type = "azurerm_function_app_active_slot" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       last_successful_swap =
         Prop.computed __type __id "last_successful_swap";
       overwrite_network_config =
         Prop.computed __type __id "overwrite_network_config";
       slot_id = Prop.computed __type __id "slot_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_active_slot
        (azurerm_function_app_active_slot ?id
           ?overwrite_network_config ?timeouts ~slot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?overwrite_network_config ?timeouts
    ~slot_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?overwrite_network_config ?timeouts ~slot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
