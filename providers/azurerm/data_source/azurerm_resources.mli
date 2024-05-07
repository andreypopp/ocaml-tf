(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resources = {
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list;  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_resources

val azurerm_resources :
  ?id:string prop ->
  ?name:string prop ->
  ?required_tags:(string * string prop) list ->
  ?resource_group_name:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_resources

val yojson_of_azurerm_resources : azurerm_resources -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  required_tags : (string * string) list prop;
  resource_group_name : string prop;
  resources : resources list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?required_tags:(string * string prop) list ->
  ?resource_group_name:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?required_tags:(string * string prop) list ->
  ?resource_group_name:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
