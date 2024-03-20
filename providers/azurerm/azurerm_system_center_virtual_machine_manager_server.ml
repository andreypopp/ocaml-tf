(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_system_center_virtual_machine_manager_server = {
  custom_location_id : string prop;  (** custom_location_id *)
  fqdn : string prop;  (** fqdn *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  port : float prop option; [@option]  (** port *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_server *)

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
