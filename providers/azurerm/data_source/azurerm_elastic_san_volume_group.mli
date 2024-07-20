(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption = {
  current_versioned_key_expiration_timestamp : string prop;
      (** current_versioned_key_expiration_timestamp *)
  current_versioned_key_id : string prop;
      (** current_versioned_key_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  last_key_rotation_timestamp : string prop;
      (** last_key_rotation_timestamp *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type network_rule = {
  action : string prop;  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_elastic_san_volume_group

val azurerm_elastic_san_volume_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_elastic_san_volume_group

val yojson_of_azurerm_elastic_san_volume_group :
  azurerm_elastic_san_volume_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  elastic_san_id : string prop;
  encryption : encryption list prop;
  encryption_type : string prop;
  id : string prop;
  identity : identity list prop;
  name : string prop;
  network_rule : network_rule list prop;
  protocol_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
