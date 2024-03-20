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

type azurerm_system_center_virtual_machine_manager_availability_set = {
  custom_location_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_system_center_virtual_machine_manager_availability_set) ->
  ()

let yojson_of_azurerm_system_center_virtual_machine_manager_availability_set
    =
  (function
   | {
       custom_location_id = v_custom_location_id;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       system_center_virtual_machine_manager_server_id =
         v_system_center_virtual_machine_manager_server_id;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_custom_location_id
         in
         ("custom_location_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_system_center_virtual_machine_manager_availability_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_system_center_virtual_machine_manager_availability_set

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_system_center_virtual_machine_manager_availability_set
    ?id ?tags ?timeouts ~custom_location_id ~location ~name
    ~resource_group_name
    ~system_center_virtual_machine_manager_server_id () :
    azurerm_system_center_virtual_machine_manager_availability_set =
  {
    custom_location_id;
    id;
    location;
    name;
    resource_group_name;
    system_center_virtual_machine_manager_server_id;
    tags;
    timeouts;
  }

type t = {
  custom_location_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~custom_location_id ~location ~name
    ~resource_group_name
    ~system_center_virtual_machine_manager_server_id __id =
  let __type =
    "azurerm_system_center_virtual_machine_manager_availability_set"
  in
  let __attrs =
    ({
       custom_location_id =
         Prop.computed __type __id "custom_location_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       system_center_virtual_machine_manager_server_id =
         Prop.computed __type __id
           "system_center_virtual_machine_manager_server_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_system_center_virtual_machine_manager_availability_set
        (azurerm_system_center_virtual_machine_manager_availability_set
           ?id ?tags ?timeouts ~custom_location_id ~location ~name
           ~resource_group_name
           ~system_center_virtual_machine_manager_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~custom_location_id
    ~location ~name ~resource_group_name
    ~system_center_virtual_machine_manager_server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~custom_location_id ~location ~name
      ~resource_group_name
      ~system_center_virtual_machine_manager_server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
