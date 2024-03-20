(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_auto_shutdown = {
  disconnect_delay : string prop option; [@option]
      (** disconnect_delay *)
  idle_delay : string prop option; [@option]  (** idle_delay *)
  no_connect_delay : string prop option; [@option]
      (** no_connect_delay *)
  shutdown_on_idle : string prop option; [@option]
      (** shutdown_on_idle *)
}
[@@deriving yojson_of]
(** default_auto_shutdown *)

type default_connection = {
  client_rdp_access : string prop option; [@option]
      (** client_rdp_access *)
  client_ssh_access : string prop option; [@option]
      (** client_ssh_access *)
  web_rdp_access : string prop option; [@option]
      (** web_rdp_access *)
  web_ssh_access : string prop option; [@option]
      (** web_ssh_access *)
}
[@@deriving yojson_of]
(** default_connection *)

type support = {
  email : string prop option; [@option]  (** email *)
  instructions : string prop option; [@option]  (** instructions *)
  phone : string prop option; [@option]  (** phone *)
  url : string prop option; [@option]  (** url *)
}
[@@deriving yojson_of]
(** support *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lab_service_plan = {
  allowed_regions : string prop list;  (** allowed_regions *)
  default_network_subnet_id : string prop option; [@option]
      (** default_network_subnet_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shared_gallery_id : string prop option; [@option]
      (** shared_gallery_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  default_auto_shutdown : default_auto_shutdown list;
  default_connection : default_connection list;
  support : support list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_plan *)

let default_auto_shutdown ?disconnect_delay ?idle_delay
    ?no_connect_delay ?shutdown_on_idle () : default_auto_shutdown =
  {
    disconnect_delay;
    idle_delay;
    no_connect_delay;
    shutdown_on_idle;
  }

let default_connection ?client_rdp_access ?client_ssh_access
    ?web_rdp_access ?web_ssh_access () : default_connection =
  {
    client_rdp_access;
    client_ssh_access;
    web_rdp_access;
    web_ssh_access;
  }

let support ?email ?instructions ?phone ?url () : support =
  { email; instructions; phone; url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_plan ?default_network_subnet_id ?id
    ?shared_gallery_id ?tags ?timeouts ~allowed_regions ~location
    ~name ~resource_group_name ~default_auto_shutdown
    ~default_connection ~support () : azurerm_lab_service_plan =
  {
    allowed_regions;
    default_network_subnet_id;
    id;
    location;
    name;
    resource_group_name;
    shared_gallery_id;
    tags;
    default_auto_shutdown;
    default_connection;
    support;
    timeouts;
  }

type t = {
  allowed_regions : string list prop;
  default_network_subnet_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop;
  tags : (string * string) list prop;
}

let make ?default_network_subnet_id ?id ?shared_gallery_id ?tags
    ?timeouts ~allowed_regions ~location ~name ~resource_group_name
    ~default_auto_shutdown ~default_connection ~support __id =
  let __type = "azurerm_lab_service_plan" in
  let __attrs =
    ({
       allowed_regions = Prop.computed __type __id "allowed_regions";
       default_network_subnet_id =
         Prop.computed __type __id "default_network_subnet_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shared_gallery_id =
         Prop.computed __type __id "shared_gallery_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_plan
        (azurerm_lab_service_plan ?default_network_subnet_id ?id
           ?shared_gallery_id ?tags ?timeouts ~allowed_regions
           ~location ~name ~resource_group_name
           ~default_auto_shutdown ~default_connection ~support ());
    attrs = __attrs;
  }

let register ?tf_module ?default_network_subnet_id ?id
    ?shared_gallery_id ?tags ?timeouts ~allowed_regions ~location
    ~name ~resource_group_name ~default_auto_shutdown
    ~default_connection ~support __id =
  let (r : _ Tf_core.resource) =
    make ?default_network_subnet_id ?id ?shared_gallery_id ?tags
      ?timeouts ~allowed_regions ~location ~name ~resource_group_name
      ~default_auto_shutdown ~default_connection ~support __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
