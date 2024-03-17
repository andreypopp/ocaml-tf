(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_endpoint__timeouts *)

type azurerm_cdn_frontdoor_endpoint = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_cdn_frontdoor_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_endpoint *)

let azurerm_cdn_frontdoor_endpoint ?enabled ?id ?tags ?timeouts
    ~cdn_frontdoor_profile_id ~name __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_endpoint" in
  let __resource =
    { cdn_frontdoor_profile_id; enabled; id; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_endpoint __resource);
  ()
