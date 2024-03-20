(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination = {
  address_prefix : string prop;  (** address_prefix *)
  address_prefix_type : string prop;  (** address_prefix_type *)
}
[@@deriving yojson_of]
(** destination *)

type source = {
  address_prefix : string prop;  (** address_prefix *)
  address_prefix_type : string prop;  (** address_prefix_type *)
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_manager_admin_rule = {
  action : string prop;  (** action *)
  admin_rule_collection_id : string prop;
      (** admin_rule_collection_id *)
  description : string prop option; [@option]  (** description *)
  destination_port_ranges : string prop list option; [@option]
      (** destination_port_ranges *)
  direction : string prop;  (** direction *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  source_port_ranges : string prop list option; [@option]
      (** source_port_ranges *)
  destination : destination list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule *)

let destination ~address_prefix ~address_prefix_type () : destination
    =
  { address_prefix; address_prefix_type }

let source ~address_prefix ~address_prefix_type () : source =
  { address_prefix; address_prefix_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_admin_rule ?description
    ?destination_port_ranges ?id ?source_port_ranges ?timeouts
    ~action ~admin_rule_collection_id ~direction ~name ~priority
    ~protocol ~destination ~source () :
    azurerm_network_manager_admin_rule =
  {
    action;
    admin_rule_collection_id;
    description;
    destination_port_ranges;
    direction;
    id;
    name;
    priority;
    protocol;
    source_port_ranges;
    destination;
    source;
    timeouts;
  }

type t = {
  action : string prop;
  admin_rule_collection_id : string prop;
  description : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_port_ranges : string list prop;
}

let make ?description ?destination_port_ranges ?id
    ?source_port_ranges ?timeouts ~action ~admin_rule_collection_id
    ~direction ~name ~priority ~protocol ~destination ~source __id =
  let __type = "azurerm_network_manager_admin_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       admin_rule_collection_id =
         Prop.computed __type __id "admin_rule_collection_id";
       description = Prop.computed __type __id "description";
       destination_port_ranges =
         Prop.computed __type __id "destination_port_ranges";
       direction = Prop.computed __type __id "direction";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       protocol = Prop.computed __type __id "protocol";
       source_port_ranges =
         Prop.computed __type __id "source_port_ranges";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_admin_rule
        (azurerm_network_manager_admin_rule ?description
           ?destination_port_ranges ?id ?source_port_ranges ?timeouts
           ~action ~admin_rule_collection_id ~direction ~name
           ~priority ~protocol ~destination ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?destination_port_ranges ?id
    ?source_port_ranges ?timeouts ~action ~admin_rule_collection_id
    ~direction ~name ~priority ~protocol ~destination ~source __id =
  let (r : _ Tf_core.resource) =
    make ?description ?destination_port_ranges ?id
      ?source_port_ranges ?timeouts ~action ~admin_rule_collection_id
      ~direction ~name ~priority ~protocol ~destination ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
