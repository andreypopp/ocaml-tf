(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mssql_database

val azurerm_mssql_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  unit ->
  azurerm_mssql_database

val yojson_of_azurerm_mssql_database : azurerm_mssql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collation : string prop;
  elastic_pool_id : string prop;
  enclave_type : string prop;
  id : string prop;
  identity : identity list prop;
  license_type : string prop;
  max_size_gb : float prop;
  name : string prop;
  read_replica_count : float prop;
  read_scale : bool prop;
  server_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  transparent_data_encryption_enabled : bool prop;
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
