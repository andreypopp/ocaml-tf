(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type application_rule_collection__rule__http_headers

val application_rule_collection__rule__http_headers :
  name:string prop ->
  value:string prop ->
  unit ->
  application_rule_collection__rule__http_headers

type application_rule_collection__rule__protocols

val application_rule_collection__rule__protocols :
  port:float prop ->
  type_:string prop ->
  unit ->
  application_rule_collection__rule__protocols

type application_rule_collection__rule

val application_rule_collection__rule :
  ?description:string prop ->
  ?destination_addresses:string prop list ->
  ?destination_fqdn_tags:string prop list ->
  ?destination_fqdns:string prop list ->
  ?destination_urls:string prop list ->
  ?source_addresses:string prop list ->
  ?source_ip_groups:string prop list ->
  ?terminate_tls:bool prop ->
  ?web_categories:string prop list ->
  name:string prop ->
  http_headers:application_rule_collection__rule__http_headers list ->
  protocols:application_rule_collection__rule__protocols list ->
  unit ->
  application_rule_collection__rule

type application_rule_collection

val application_rule_collection :
  action:string prop ->
  name:string prop ->
  priority:float prop ->
  rule:application_rule_collection__rule list ->
  unit ->
  application_rule_collection

type nat_rule_collection__rule

val nat_rule_collection__rule :
  ?description:string prop ->
  ?destination_address:string prop ->
  ?destination_ports:string prop list ->
  ?source_addresses:string prop list ->
  ?source_ip_groups:string prop list ->
  ?translated_address:string prop ->
  ?translated_fqdn:string prop ->
  name:string prop ->
  protocols:string prop list ->
  translated_port:float prop ->
  unit ->
  nat_rule_collection__rule

type nat_rule_collection

val nat_rule_collection :
  action:string prop ->
  name:string prop ->
  priority:float prop ->
  rule:nat_rule_collection__rule list ->
  unit ->
  nat_rule_collection

type network_rule_collection__rule

val network_rule_collection__rule :
  ?description:string prop ->
  ?destination_addresses:string prop list ->
  ?destination_fqdns:string prop list ->
  ?destination_ip_groups:string prop list ->
  ?source_addresses:string prop list ->
  ?source_ip_groups:string prop list ->
  destination_ports:string prop list ->
  name:string prop ->
  protocols:string prop list ->
  unit ->
  network_rule_collection__rule

type network_rule_collection

val network_rule_collection :
  action:string prop ->
  name:string prop ->
  priority:float prop ->
  rule:network_rule_collection__rule list ->
  unit ->
  network_rule_collection

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_firewall_policy_rule_collection_group

val azurerm_firewall_policy_rule_collection_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  firewall_policy_id:string prop ->
  name:string prop ->
  priority:float prop ->
  application_rule_collection:application_rule_collection list ->
  nat_rule_collection:nat_rule_collection list ->
  network_rule_collection:network_rule_collection list ->
  unit ->
  azurerm_firewall_policy_rule_collection_group

val yojson_of_azurerm_firewall_policy_rule_collection_group :
  azurerm_firewall_policy_rule_collection_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  firewall_policy_id:string prop ->
  name:string prop ->
  priority:float prop ->
  application_rule_collection:application_rule_collection list ->
  nat_rule_collection:nat_rule_collection list ->
  network_rule_collection:network_rule_collection list ->
  string ->
  t
