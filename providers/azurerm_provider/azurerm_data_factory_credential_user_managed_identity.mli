(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_credential_user_managed_identity__timeouts
type azurerm_data_factory_credential_user_managed_identity

val azurerm_data_factory_credential_user_managed_identity :
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?timeouts:
    azurerm_data_factory_credential_user_managed_identity__timeouts ->
  data_factory_id:string ->
  identity_id:string ->
  name:string ->
  string ->
  unit
