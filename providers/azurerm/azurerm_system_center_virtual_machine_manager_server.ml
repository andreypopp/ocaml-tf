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

type azurerm_system_center_virtual_machine_manager_server = {
  custom_location_id : string prop;
  fqdn : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  password : string prop;
  port : float prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_system_center_virtual_machine_manager_server) -> ()

let yojson_of_azurerm_system_center_virtual_machine_manager_server =
  (function
   | {
       custom_location_id = v_custom_location_id;
       fqdn = v_fqdn;
       id = v_id;
       location = v_location;
       name = v_name;
       password = v_password;
       port = v_port;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       username = v_username;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_location_id
         in
         ("custom_location_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_system_center_virtual_machine_manager_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_system_center_virtual_machine_manager_server

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_system_center_virtual_machine_manager_server ?id ?port
    ?tags ?timeouts ~custom_location_id ~fqdn ~location ~name
    ~password ~resource_group_name ~username () :
    azurerm_system_center_virtual_machine_manager_server =
  {
    custom_location_id;
    fqdn;
    id;
    location;
    name;
    password;
    port;
    resource_group_name;
    tags;
    username;
    timeouts;
  }

type t = {
  custom_location_id : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  username : string prop;
}

let make ?id ?port ?tags ?timeouts ~custom_location_id ~fqdn
    ~location ~name ~password ~resource_group_name ~username __id =
  let __type =
    "azurerm_system_center_virtual_machine_manager_server"
  in
  let __attrs =
    ({
       custom_location_id =
         Prop.computed __type __id "custom_location_id";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_system_center_virtual_machine_manager_server
        (azurerm_system_center_virtual_machine_manager_server ?id
           ?port ?tags ?timeouts ~custom_location_id ~fqdn ~location
           ~name ~password ~resource_group_name ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?port ?tags ?timeouts ~custom_location_id
    ~fqdn ~location ~name ~password ~resource_group_name ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?port ?tags ?timeouts ~custom_location_id ~fqdn
      ~location ~name ~password ~resource_group_name ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
