(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type single_network_slice_selection_assistance_information = {
  slice_differentiator : string prop;  (** slice_differentiator *)
  slice_service_type : float prop;  (** slice_service_type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_slice

val azurerm_mobile_network_slice :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_slice

val yojson_of_azurerm_mobile_network_slice :
  azurerm_mobile_network_slice -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  single_network_slice_selection_assistance_information :
    single_network_slice_selection_assistance_information list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
