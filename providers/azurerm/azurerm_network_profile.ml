(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container_network_interface__ip_configuration = {
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** container_network_interface__ip_configuration *)

type container_network_interface = {
  name : string prop;  (** name *)
  ip_configuration :
    container_network_interface__ip_configuration list;
}
[@@deriving yojson_of]
(** container_network_interface *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_profile = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  container_network_interface : container_network_interface list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_profile *)

let container_network_interface__ip_configuration ~name ~subnet_id ()
    : container_network_interface__ip_configuration =
  { name; subnet_id }

let container_network_interface ~name ~ip_configuration () :
    container_network_interface =
  { name; ip_configuration }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_profile ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~container_network_interface () :
    azurerm_network_profile =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    container_network_interface;
    timeouts;
  }

type t = {
  container_network_interface_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~container_network_interface __id =
  let __type = "azurerm_network_profile" in
  let __attrs =
    ({
       container_network_interface_ids =
         Prop.computed __type __id "container_network_interface_ids";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_profile
        (azurerm_network_profile ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~container_network_interface ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~container_network_interface __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~container_network_interface __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
