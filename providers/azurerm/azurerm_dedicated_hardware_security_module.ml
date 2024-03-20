(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type management_network_profile = {
  network_interface_private_ip_addresses : string prop list;
      (** network_interface_private_ip_addresses *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** management_network_profile *)

type network_profile = {
  network_interface_private_ip_addresses : string prop list;
      (** network_interface_private_ip_addresses *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dedicated_hardware_security_module = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  stamp_id : string prop option; [@option]  (** stamp_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  management_network_profile : management_network_profile list;
  network_profile : network_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_hardware_security_module *)

let management_network_profile
    ~network_interface_private_ip_addresses ~subnet_id () :
    management_network_profile =
  { network_interface_private_ip_addresses; subnet_id }

let network_profile ~network_interface_private_ip_addresses
    ~subnet_id () : network_profile =
  { network_interface_private_ip_addresses; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_hardware_security_module ?id ?stamp_id ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name ~sku_name
    ~management_network_profile ~network_profile () :
    azurerm_dedicated_hardware_security_module =
  {
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    stamp_id;
    tags;
    zones;
    management_network_profile;
    network_profile;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stamp_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?stamp_id ?tags ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~management_network_profile
    ~network_profile __id =
  let __type = "azurerm_dedicated_hardware_security_module" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       stamp_id = Prop.computed __type __id "stamp_id";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dedicated_hardware_security_module
        (azurerm_dedicated_hardware_security_module ?id ?stamp_id
           ?tags ?zones ?timeouts ~location ~name
           ~resource_group_name ~sku_name ~management_network_profile
           ~network_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?stamp_id ?tags ?zones ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~management_network_profile ~network_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?stamp_id ?tags ?zones ?timeouts ~location ~name
      ~resource_group_name ~sku_name ~management_network_profile
      ~network_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
