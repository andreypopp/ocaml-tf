(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_filesystem__ace
type azurerm_storage_data_lake_gen2_filesystem__timeouts
type azurerm_storage_data_lake_gen2_filesystem

type t = private {
  group : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  properties : (string * string) list prop;
  storage_account_id : string prop;
}

val azurerm_storage_data_lake_gen2_filesystem :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?properties:(string * string prop) list ->
  ?timeouts:azurerm_storage_data_lake_gen2_filesystem__timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  ace:azurerm_storage_data_lake_gen2_filesystem__ace list ->
  string ->
  t
