(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_secret__secret__customer_certificate = {
  key_vault_certificate_id : string;  (** key_vault_certificate_id *)
  subject_alternative_names : string list;
      (** subject_alternative_names *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret__secret__customer_certificate *)

type azurerm_cdn_frontdoor_secret__secret = {
  customer_certificate :
    azurerm_cdn_frontdoor_secret__secret__customer_certificate list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret__secret *)

type azurerm_cdn_frontdoor_secret__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret__timeouts *)

type azurerm_cdn_frontdoor_secret = {
  cdn_frontdoor_profile_id : string;  (** cdn_frontdoor_profile_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  secret : azurerm_cdn_frontdoor_secret__secret list;
  timeouts : azurerm_cdn_frontdoor_secret__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret *)

let azurerm_cdn_frontdoor_secret ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~secret __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_secret" in
  let __resource =
    { cdn_frontdoor_profile_id; id; name; secret; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_secret __resource);
  ()
