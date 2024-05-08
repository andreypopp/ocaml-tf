(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_configuration = {
  audience : string prop;  (** audience *)
  authority : string prop;  (** authority *)
  smart_proxy_enabled : bool prop;  (** smart_proxy_enabled *)
}

type cors_configuration = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allowed_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_headers *)
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_methods *)
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_origins *)
  max_age_in_seconds : float prop;  (** max_age_in_seconds *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_healthcare_service

val azurerm_healthcare_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_healthcare_service

val yojson_of_azurerm_healthcare_service :
  azurerm_healthcare_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policy_object_ids : string list prop;
  authentication_configuration :
    authentication_configuration list prop;
  cors_configuration : cors_configuration list prop;
  cosmosdb_key_vault_key_versionless_id : string prop;
  cosmosdb_throughput : float prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
