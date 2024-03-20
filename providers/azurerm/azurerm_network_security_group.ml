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

type security_rule = {
  access : string prop;  (** access *)
  description : string prop;  (** description *)
  destination_address_prefix : string prop;
      (** destination_address_prefix *)
  destination_address_prefixes : string prop list;
      (** destination_address_prefixes *)
  destination_application_security_group_ids : string prop list;
      (** destination_application_security_group_ids *)
  destination_port_range : string prop;
      (** destination_port_range *)
  destination_port_ranges : string prop list;
      (** destination_port_ranges *)
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  source_address_prefix : string prop;  (** source_address_prefix *)
  source_address_prefixes : string prop list;
      (** source_address_prefixes *)
  source_application_security_group_ids : string prop list;
      (** source_application_security_group_ids *)
  source_port_range : string prop;  (** source_port_range *)
  source_port_ranges : string prop list;  (** source_port_ranges *)
}
[@@deriving yojson_of]

type azurerm_network_security_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  security_rule : security_rule list option; [@option]
      (** security_rule *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_security_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_security_group ?id ?security_rule ?tags ?timeouts
    ~location ~name ~resource_group_name () :
    azurerm_network_security_group =
  {
    id;
    location;
    name;
    resource_group_name;
    security_rule;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  security_rule : security_rule list prop;
  tags : (string * string) list prop;
}

let make ?id ?security_rule ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_network_security_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_rule = Prop.computed __type __id "security_rule";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_security_group
        (azurerm_network_security_group ?id ?security_rule ?tags
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?security_rule ?tags ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?security_rule ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
