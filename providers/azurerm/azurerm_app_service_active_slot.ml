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

type azurerm_app_service_active_slot = {
  app_service_name : string prop;
  app_service_slot_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_active_slot) -> ()

let yojson_of_azurerm_app_service_active_slot =
  (function
   | {
       app_service_name = v_app_service_name;
       app_service_slot_name = v_app_service_slot_name;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_slot_name
         in
         ("app_service_slot_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_name
         in
         ("app_service_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_active_slot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_active_slot

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_active_slot ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name () :
    azurerm_app_service_active_slot =
  {
    app_service_name;
    app_service_slot_name;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_name : string prop;
  app_service_slot_name : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~app_service_name ~app_service_slot_name
    ~resource_group_name __id =
  let __type = "azurerm_app_service_active_slot" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_name =
         Prop.computed __type __id "app_service_name";
       app_service_slot_name =
         Prop.computed __type __id "app_service_slot_name";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_active_slot
        (azurerm_app_service_active_slot ?id ?timeouts
           ~app_service_name ~app_service_slot_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_name
    ~app_service_slot_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_name ~app_service_slot_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
