(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identifier = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
}

type purchase_plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_shared_image

val azurerm_shared_image :
  ?id:string prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_shared_image

val yojson_of_azurerm_shared_image : azurerm_shared_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  architecture : string prop;
  description : string prop;
  eula : string prop;
  gallery_name : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  identifier : identifier list prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  privacy_statement_uri : string prop;
  purchase_plan : purchase_plan list prop;
  release_note_uri : string prop;
  resource_group_name : string prop;
  specialized : bool prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
