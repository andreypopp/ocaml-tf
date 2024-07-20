(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption__identity = {
  identity_id : string prop;  (** identity_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type encryption = {
  identity : encryption__identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity *)
  key_url : string prop;  (** key_url *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_load_test

val azurerm_load_test :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_load_test

val yojson_of_azurerm_load_test : azurerm_load_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_plane_uri : string prop;
  description : string prop;
  encryption : encryption list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
