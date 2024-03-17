(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_dns_zone__soa_record
type azurerm_private_dns_zone__timeouts
type azurerm_private_dns_zone

type t = private {
  id : string prop;
  max_number_of_record_sets : float prop;
  max_number_of_virtual_network_links : float prop;
  max_number_of_virtual_network_links_with_registration : float prop;
  name : string prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_private_dns_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_dns_zone__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  soa_record:azurerm_private_dns_zone__soa_record list ->
  string ->
  t
