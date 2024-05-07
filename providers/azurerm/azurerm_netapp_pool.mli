(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_netapp_pool

val azurerm_netapp_pool :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?qos_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  size_in_tb:float prop ->
  unit ->
  azurerm_netapp_pool

val yojson_of_azurerm_netapp_pool : azurerm_netapp_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?qos_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  size_in_tb:float prop ->
  string ->
  t

val make :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?qos_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  size_in_tb:float prop ->
  string ->
  t Tf_core.resource
