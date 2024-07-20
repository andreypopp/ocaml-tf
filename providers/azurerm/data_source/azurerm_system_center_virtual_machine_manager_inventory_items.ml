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

type inventory_items = {
  id : string prop;
  name : string prop;
  uuid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inventory_items) -> ()

let yojson_of_inventory_items =
  (function
   | { id = v_id; name = v_name; uuid = v_uuid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uuid in
         ("uuid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : inventory_items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inventory_items

[@@@deriving.end]

type azurerm_system_center_virtual_machine_manager_inventory_items = {
  id : string prop option; [@option]
  inventory_type : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_system_center_virtual_machine_manager_inventory_items) ->
  ()

let yojson_of_azurerm_system_center_virtual_machine_manager_inventory_items
    =
  (function
   | {
       id = v_id;
       inventory_type = v_inventory_type;
       system_center_virtual_machine_manager_server_id =
         v_system_center_virtual_machine_manager_server_id;
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
           yojson_of_prop yojson_of_string
             v_system_center_virtual_machine_manager_server_id
         in
         ("system_center_virtual_machine_manager_server_id", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_inventory_type
         in
         ("inventory_type", arg) :: bnds
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
    : azurerm_system_center_virtual_machine_manager_inventory_items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_system_center_virtual_machine_manager_inventory_items

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_system_center_virtual_machine_manager_inventory_items ?id
    ?timeouts ~inventory_type
    ~system_center_virtual_machine_manager_server_id () :
    azurerm_system_center_virtual_machine_manager_inventory_items =
  {
    id;
    inventory_type;
    system_center_virtual_machine_manager_server_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  inventory_items : inventory_items list prop;
  inventory_type : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
}

let make ?id ?timeouts ~inventory_type
    ~system_center_virtual_machine_manager_server_id __id =
  let __type =
    "azurerm_system_center_virtual_machine_manager_inventory_items"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       inventory_items = Prop.computed __type __id "inventory_items";
       inventory_type = Prop.computed __type __id "inventory_type";
       system_center_virtual_machine_manager_server_id =
         Prop.computed __type __id
           "system_center_virtual_machine_manager_server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_system_center_virtual_machine_manager_inventory_items
        (azurerm_system_center_virtual_machine_manager_inventory_items
           ?id ?timeouts ~inventory_type
           ~system_center_virtual_machine_manager_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~inventory_type
    ~system_center_virtual_machine_manager_server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~inventory_type
      ~system_center_virtual_machine_manager_server_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
