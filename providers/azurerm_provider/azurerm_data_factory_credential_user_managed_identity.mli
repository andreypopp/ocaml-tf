(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_credential_user_managed_identity__timeouts
type azurerm_data_factory_credential_user_managed_identity

val azurerm_data_factory_credential_user_managed_identity :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_data_factory_credential_user_managed_identity__timeouts ->
  data_factory_id:string prop ->
  identity_id:string prop ->
  name:string prop ->
  string ->
  unit
