(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_lab__timeouts
type azurerm_dev_test_lab

type t = private {
  artifacts_storage_account_id : string prop;
  default_premium_storage_account_id : string prop;
  default_storage_account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  location : string prop;
  name : string prop;
  premium_data_disk_storage_account_id : string prop;
  resource_group_name : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

val azurerm_dev_test_lab :
  ?id:string prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_lab__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
