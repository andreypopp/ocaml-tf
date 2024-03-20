(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_rule_collection__rule__http_headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : application_rule_collection__rule__http_headers) -> ()

let yojson_of_application_rule_collection__rule__http_headers =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : application_rule_collection__rule__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_rule_collection__rule__http_headers

[@@@deriving.end]

type application_rule_collection__rule__protocols = {
  port : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_rule_collection__rule__protocols) -> ()

let yojson_of_application_rule_collection__rule__protocols =
  (function
   | { port = v_port; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : application_rule_collection__rule__protocols ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_rule_collection__rule__protocols

[@@@deriving.end]

type application_rule_collection__rule = {
  description : string prop option; [@option]
  destination_addresses : string prop list option; [@option]
  destination_fqdn_tags : string prop list option; [@option]
  destination_fqdns : string prop list option; [@option]
  destination_urls : string prop list option; [@option]
  name : string prop;
  source_addresses : string prop list option; [@option]
  source_ip_groups : string prop list option; [@option]
  terminate_tls : bool prop option; [@option]
  web_categories : string prop list option; [@option]
  http_headers :
    application_rule_collection__rule__http_headers list;
  protocols : application_rule_collection__rule__protocols list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_rule_collection__rule) -> ()

let yojson_of_application_rule_collection__rule =
  (function
   | {
       description = v_description;
       destination_addresses = v_destination_addresses;
       destination_fqdn_tags = v_destination_fqdn_tags;
       destination_fqdns = v_destination_fqdns;
       destination_urls = v_destination_urls;
       name = v_name;
       source_addresses = v_source_addresses;
       source_ip_groups = v_source_ip_groups;
       terminate_tls = v_terminate_tls;
       web_categories = v_web_categories;
       http_headers = v_http_headers;
       protocols = v_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_application_rule_collection__rule__protocols
             v_protocols
         in
         ("protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_application_rule_collection__rule__http_headers
             v_http_headers
         in
         ("http_headers", arg) :: bnds
       in
       let bnds =
         match v_web_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "web_categories", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terminate_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminate_tls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_destination_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_fqdn_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_fqdn_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_rule_collection__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_rule_collection__rule

[@@@deriving.end]

type application_rule_collection = {
  action : string prop;
  name : string prop;
  priority : float prop;
  rule : application_rule_collection__rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_rule_collection) -> ()

let yojson_of_application_rule_collection =
  (function
   | {
       action = v_action;
       name = v_name;
       priority = v_priority;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_rule_collection__rule
             v_rule
         in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : application_rule_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_rule_collection

[@@@deriving.end]

type nat_rule_collection__rule = {
  description : string prop option; [@option]
  destination_address : string prop option; [@option]
  destination_ports : string prop list option; [@option]
  name : string prop;
  protocols : string prop list;
  source_addresses : string prop list option; [@option]
  source_ip_groups : string prop list option; [@option]
  translated_address : string prop option; [@option]
  translated_fqdn : string prop option; [@option]
  translated_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nat_rule_collection__rule) -> ()

let yojson_of_nat_rule_collection__rule =
  (function
   | {
       description = v_description;
       destination_address = v_destination_address;
       destination_ports = v_destination_ports;
       name = v_name;
       protocols = v_protocols;
       source_addresses = v_source_addresses;
       source_ip_groups = v_source_ip_groups;
       translated_address = v_translated_address;
       translated_fqdn = v_translated_fqdn;
       translated_port = v_translated_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_translated_port
         in
         ("translated_port", arg) :: bnds
       in
       let bnds =
         match v_translated_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "translated_fqdn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_translated_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "translated_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_protocols
         in
         ("protocols", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_destination_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : nat_rule_collection__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nat_rule_collection__rule

[@@@deriving.end]

type nat_rule_collection = {
  action : string prop;
  name : string prop;
  priority : float prop;
  rule : nat_rule_collection__rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nat_rule_collection) -> ()

let yojson_of_nat_rule_collection =
  (function
   | {
       action = v_action;
       name = v_name;
       priority = v_priority;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_nat_rule_collection__rule v_rule
         in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : nat_rule_collection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nat_rule_collection

[@@@deriving.end]

type network_rule_collection__rule = {
  description : string prop option; [@option]
  destination_addresses : string prop list option; [@option]
  destination_fqdns : string prop list option; [@option]
  destination_ip_groups : string prop list option; [@option]
  destination_ports : string prop list;
  name : string prop;
  protocols : string prop list;
  source_addresses : string prop list option; [@option]
  source_ip_groups : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_collection__rule) -> ()

let yojson_of_network_rule_collection__rule =
  (function
   | {
       description = v_description;
       destination_addresses = v_destination_addresses;
       destination_fqdns = v_destination_fqdns;
       destination_ip_groups = v_destination_ip_groups;
       destination_ports = v_destination_ports;
       name = v_name;
       protocols = v_protocols;
       source_addresses = v_source_addresses;
       source_ip_groups = v_source_ip_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_protocols
         in
         ("protocols", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_destination_ports
         in
         ("destination_ports", arg) :: bnds
       in
       let bnds =
         match v_destination_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rule_collection__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_collection__rule

[@@@deriving.end]

type network_rule_collection = {
  action : string prop;
  name : string prop;
  priority : float prop;
  rule : network_rule_collection__rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_collection) -> ()

let yojson_of_network_rule_collection =
  (function
   | {
       action = v_action;
       name = v_name;
       priority = v_priority;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_rule_collection__rule
             v_rule
         in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : network_rule_collection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_collection

[@@@deriving.end]

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

type azurerm_firewall_policy_rule_collection_group = {
  firewall_policy_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  priority : float prop;
  application_rule_collection : application_rule_collection list;
  nat_rule_collection : nat_rule_collection list;
  network_rule_collection : network_rule_collection list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall_policy_rule_collection_group) -> ()

let yojson_of_azurerm_firewall_policy_rule_collection_group =
  (function
   | {
       firewall_policy_id = v_firewall_policy_id;
       id = v_id;
       name = v_name;
       priority = v_priority;
       application_rule_collection = v_application_rule_collection;
       nat_rule_collection = v_nat_rule_collection;
       network_rule_collection = v_network_rule_collection;
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
           yojson_of_list yojson_of_network_rule_collection
             v_network_rule_collection
         in
         ("network_rule_collection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_nat_rule_collection
             v_nat_rule_collection
         in
         ("nat_rule_collection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_rule_collection
             v_application_rule_collection
         in
         ("application_rule_collection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_firewall_policy_id
         in
         ("firewall_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_firewall_policy_rule_collection_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_firewall_policy_rule_collection_group

[@@@deriving.end]

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
