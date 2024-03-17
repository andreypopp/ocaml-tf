(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_rule_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule_set__timeouts *)

type azurerm_cdn_frontdoor_rule_set = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : azurerm_cdn_frontdoor_rule_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule_set *)

let azurerm_cdn_frontdoor_rule_set ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_rule_set" in
  let __resource =
    { cdn_frontdoor_profile_id; id; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_rule_set __resource);
  ()
