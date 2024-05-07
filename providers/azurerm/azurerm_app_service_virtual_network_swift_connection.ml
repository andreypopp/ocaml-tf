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

type azurerm_app_service_virtual_network_swift_connection = {
  app_service_id : string prop;
  id : string prop option; [@option]
  subnet_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_app_service_virtual_network_swift_connection) -> ()

let yojson_of_azurerm_app_service_virtual_network_swift_connection =
  (function
   | {
       app_service_id = v_app_service_id;
       id = v_id;
       subnet_id = v_subnet_id;
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_app_service_id
         in
         ("app_service_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_virtual_network_swift_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_app_service_virtual_network_swift_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_virtual_network_swift_connection ?id
    ?timeouts ~app_service_id ~subnet_id () :
    azurerm_app_service_virtual_network_swift_connection =
  { app_service_id; id; subnet_id; timeouts }

type t = {
  tf_name : string;
  app_service_id : string prop;
  id : string prop;
  subnet_id : string prop;
}

let make ?id ?timeouts ~app_service_id ~subnet_id __id =
  let __type =
    "azurerm_app_service_virtual_network_swift_connection"
  in
  let __attrs =
    ({
       tf_name = __id;
       app_service_id = Prop.computed __type __id "app_service_id";
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_virtual_network_swift_connection
        (azurerm_app_service_virtual_network_swift_connection ?id
           ?timeouts ~app_service_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_id ~subnet_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
