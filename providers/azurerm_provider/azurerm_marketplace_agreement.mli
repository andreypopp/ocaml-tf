(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_marketplace_agreement__timeouts
type azurerm_marketplace_agreement

type t = private {
  id : string prop;
  license_text_link : string prop;
  offer : string prop;
  plan : string prop;
  privacy_policy_link : string prop;
  publisher : string prop;
}

val azurerm_marketplace_agreement :
  ?id:string prop ->
  ?timeouts:azurerm_marketplace_agreement__timeouts ->
  offer:string prop ->
  plan:string prop ->
  publisher:string prop ->
  string ->
  t
