(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_rule_collection__rule__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** application_rule_collection__rule__http_headers *)

type application_rule_collection__rule__protocols = {
  port : float prop;  (** port *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** application_rule_collection__rule__protocols *)

type application_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_fqdn_tags : string prop list option; [@option]
      (** destination_fqdn_tags *)
  destination_fqdns : string prop list option; [@option]
      (** destination_fqdns *)
  destination_urls : string prop list option; [@option]
      (** destination_urls *)
  name : string prop;  (** name *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
  terminate_tls : bool prop option; [@option]  (** terminate_tls *)
  web_categories : string prop list option; [@option]
      (** web_categories *)
  http_headers :
    application_rule_collection__rule__http_headers list;
  protocols : application_rule_collection__rule__protocols list;
}
[@@deriving yojson_of]
(** application_rule_collection__rule *)

type application_rule_collection = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule : application_rule_collection__rule list;
}
[@@deriving yojson_of]
(** application_rule_collection *)

type nat_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_address : string prop option; [@option]
      (** destination_address *)
  destination_ports : string prop list option; [@option]
      (** destination_ports *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
  translated_address : string prop option; [@option]
      (** translated_address *)
  translated_fqdn : string prop option; [@option]
      (** translated_fqdn *)
  translated_port : float prop;  (** translated_port *)
}
[@@deriving yojson_of]
(** nat_rule_collection__rule *)

type nat_rule_collection = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule : nat_rule_collection__rule list;
}
[@@deriving yojson_of]
(** nat_rule_collection *)

type network_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_fqdns : string prop list option; [@option]
      (** destination_fqdns *)
  destination_ip_groups : string prop list option; [@option]
      (** destination_ip_groups *)
  destination_ports : string prop list;  (** destination_ports *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
}
[@@deriving yojson_of]
(** network_rule_collection__rule *)

type network_rule_collection = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule : network_rule_collection__rule list;
}
[@@deriving yojson_of]
(** network_rule_collection *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_firewall_policy_rule_collection_group = {
  firewall_policy_id : string prop;  (** firewall_policy_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  application_rule_collection : application_rule_collection list;
  nat_rule_collection : nat_rule_collection list;
  network_rule_collection : network_rule_collection list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group *)

let application_rule_collection__rule__http_headers ~name ~value () :
    application_rule_collection__rule__http_headers =
  { name; value }

let application_rule_collection__rule__protocols ~port ~type_ () :
    application_rule_collection__rule__protocols =
  { port; type_ }

let application_rule_collection__rule ?description
    ?destination_addresses ?destination_fqdn_tags ?destination_fqdns
    ?destination_urls ?source_addresses ?source_ip_groups
    ?terminate_tls ?web_categories ~name ~http_headers ~protocols ()
    : application_rule_collection__rule =
  {
    description;
    destination_addresses;
    destination_fqdn_tags;
    destination_fqdns;
    destination_urls;
    name;
    source_addresses;
    source_ip_groups;
    terminate_tls;
    web_categories;
    http_headers;
    protocols;
  }

let application_rule_collection ~action ~name ~priority ~rule () :
    application_rule_collection =
  { action; name; priority; rule }

let nat_rule_collection__rule ?description ?destination_address
    ?destination_ports ?source_addresses ?source_ip_groups
    ?translated_address ?translated_fqdn ~name ~protocols
    ~translated_port () : nat_rule_collection__rule =
  {
    description;
    destination_address;
    destination_ports;
    name;
    protocols;
    source_addresses;
    source_ip_groups;
    translated_address;
    translated_fqdn;
    translated_port;
  }

let nat_rule_collection ~action ~name ~priority ~rule () :
    nat_rule_collection =
  { action; name; priority; rule }

let network_rule_collection__rule ?description ?destination_addresses
    ?destination_fqdns ?destination_ip_groups ?source_addresses
    ?source_ip_groups ~destination_ports ~name ~protocols () :
    network_rule_collection__rule =
  {
    description;
    destination_addresses;
    destination_fqdns;
    destination_ip_groups;
    destination_ports;
    name;
    protocols;
    source_addresses;
    source_ip_groups;
  }

let network_rule_collection ~action ~name ~priority ~rule () :
    network_rule_collection =
  { action; name; priority; rule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_firewall_policy_rule_collection_group ?id ?timeouts
    ~firewall_policy_id ~name ~priority ~application_rule_collection
    ~nat_rule_collection ~network_rule_collection () :
    azurerm_firewall_policy_rule_collection_group =
  {
    firewall_policy_id;
    id;
    name;
    priority;
    application_rule_collection;
    nat_rule_collection;
    network_rule_collection;
    timeouts;
  }

type t = {
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

let make ?id ?timeouts ~firewall_policy_id ~name ~priority
    ~application_rule_collection ~nat_rule_collection
    ~network_rule_collection __id =
  let __type = "azurerm_firewall_policy_rule_collection_group" in
  let __attrs =
    ({
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall_policy_rule_collection_group
        (azurerm_firewall_policy_rule_collection_group ?id ?timeouts
           ~firewall_policy_id ~name ~priority
           ~application_rule_collection ~nat_rule_collection
           ~network_rule_collection ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~firewall_policy_id ~name
    ~priority ~application_rule_collection ~nat_rule_collection
    ~network_rule_collection __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~firewall_policy_id ~name ~priority
      ~application_rule_collection ~nat_rule_collection
      ~network_rule_collection __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
