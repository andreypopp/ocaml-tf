(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type module_link__hash

val module_link__hash :
  algorithm:string prop ->
  value:string prop ->
  unit ->
  module_link__hash

type module_link

val module_link :
  ?hash:module_link__hash list ->
  uri:string prop ->
  unit ->
  module_link

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_powershell72_module

val azurerm_automation_powershell72_module :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  name:string prop ->
  module_link:module_link list ->
  unit ->
  azurerm_automation_powershell72_module

val yojson_of_azurerm_automation_powershell72_module :
  azurerm_automation_powershell72_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  name:string prop ->
  module_link:module_link list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  name:string prop ->
  module_link:module_link list ->
  string ->
  t Tf_core.resource
