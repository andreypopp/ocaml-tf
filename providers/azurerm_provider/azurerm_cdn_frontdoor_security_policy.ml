(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association__domain = {
  active : bool;  (** active *)
  cdn_frontdoor_domain_id : string;  (** cdn_frontdoor_domain_id *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association__domain *)

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association = {
  patterns_to_match : string list;  (** patterns_to_match *)
  domain :
    azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association__domain
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association *)

type azurerm_cdn_frontdoor_security_policy__security_policies__firewall = {
  cdn_frontdoor_firewall_policy_id : string;
      (** cdn_frontdoor_firewall_policy_id *)
  association :
    azurerm_cdn_frontdoor_security_policy__security_policies__firewall__association
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy__security_policies__firewall *)

type azurerm_cdn_frontdoor_security_policy__security_policies = {
  firewall :
    azurerm_cdn_frontdoor_security_policy__security_policies__firewall
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy__security_policies *)

type azurerm_cdn_frontdoor_security_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy__timeouts *)

type azurerm_cdn_frontdoor_security_policy = {
  cdn_frontdoor_profile_id : string;  (** cdn_frontdoor_profile_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  security_policies :
    azurerm_cdn_frontdoor_security_policy__security_policies list;
  timeouts : azurerm_cdn_frontdoor_security_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy *)

let azurerm_cdn_frontdoor_security_policy ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~security_policies __resource_id
    =
  let __resource_type = "azurerm_cdn_frontdoor_security_policy" in
  let __resource =
    {
      cdn_frontdoor_profile_id;
      id;
      name;
      security_policies;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_security_policy __resource);
  ()
