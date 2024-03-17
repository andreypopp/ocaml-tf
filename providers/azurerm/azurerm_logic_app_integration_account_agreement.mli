(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_agreement__guest_identity
type azurerm_logic_app_integration_account_agreement__host_identity
type azurerm_logic_app_integration_account_agreement__timeouts
type azurerm_logic_app_integration_account_agreement

type t = private {
  agreement_type : string prop;
  content : string prop;
  guest_partner_name : string prop;
  host_partner_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_logic_app_integration_account_agreement :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_logic_app_integration_account_agreement__timeouts ->
  agreement_type:string prop ->
  content:string prop ->
  guest_partner_name:string prop ->
  host_partner_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  guest_identity:
    azurerm_logic_app_integration_account_agreement__guest_identity
    list ->
  host_identity:
    azurerm_logic_app_integration_account_agreement__host_identity
    list ->
  string ->
  t
