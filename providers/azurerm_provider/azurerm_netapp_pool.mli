(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_pool__timeouts
type azurerm_netapp_pool

type t = private {
  account_name : string prop;
  encryption_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  qos_type : string prop;
  resource_group_name : string prop;
  service_level : string prop;
  size_in_tb : float prop;
  tags : (string * string) list prop;
}

val azurerm_netapp_pool :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?qos_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_netapp_pool__timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  size_in_tb:float prop ->
  string ->
  t
