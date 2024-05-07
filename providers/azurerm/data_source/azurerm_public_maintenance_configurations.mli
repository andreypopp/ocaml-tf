(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configs = {
  description : string prop;  (** description *)
  duration : string prop;  (** duration *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  maintenance_scope : string prop;  (** maintenance_scope *)
  name : string prop;  (** name *)
  recur_every : string prop;  (** recur_every *)
  time_zone : string prop;  (** time_zone *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_public_maintenance_configurations

val azurerm_public_maintenance_configurations :
  ?id:string prop ->
  ?location:string prop ->
  ?recur_every:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_public_maintenance_configurations

val yojson_of_azurerm_public_maintenance_configurations :
  azurerm_public_maintenance_configurations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configs : configs list prop;
  id : string prop;
  location : string prop;
  recur_every : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?recur_every:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?recur_every:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
