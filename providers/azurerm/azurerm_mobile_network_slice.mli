(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type single_network_slice_selection_assistance_information

val single_network_slice_selection_assistance_information :
  ?slice_differentiator:string prop ->
  slice_service_type:float prop ->
  unit ->
  single_network_slice_selection_assistance_information

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mobile_network_slice

val azurerm_mobile_network_slice :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  single_network_slice_selection_assistance_information:
    single_network_slice_selection_assistance_information list ->
  unit ->
  azurerm_mobile_network_slice

val yojson_of_azurerm_mobile_network_slice :
  azurerm_mobile_network_slice -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  single_network_slice_selection_assistance_information:
    single_network_slice_selection_assistance_information list ->
  string ->
  t
