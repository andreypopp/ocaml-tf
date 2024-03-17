(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_route__cache = {
  compression_enabled : bool prop option; [@option]
      (** compression_enabled *)
  content_types_to_compress : string prop list option; [@option]
      (** content_types_to_compress *)
  query_string_caching_behavior : string prop option; [@option]
      (** query_string_caching_behavior *)
  query_strings : string prop list option; [@option]
      (** query_strings *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route__cache *)

type azurerm_cdn_frontdoor_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route__timeouts *)

type azurerm_cdn_frontdoor_route = {
  cdn_frontdoor_custom_domain_ids : string prop list option;
      [@option]
      (** cdn_frontdoor_custom_domain_ids *)
  cdn_frontdoor_endpoint_id : string prop;
      (** cdn_frontdoor_endpoint_id *)
  cdn_frontdoor_origin_group_id : string prop;
      (** cdn_frontdoor_origin_group_id *)
  cdn_frontdoor_origin_ids : string prop list;
      (** cdn_frontdoor_origin_ids *)
  cdn_frontdoor_origin_path : string prop option; [@option]
      (** cdn_frontdoor_origin_path *)
  cdn_frontdoor_rule_set_ids : string prop list option; [@option]
      (** cdn_frontdoor_rule_set_ids *)
  enabled : bool prop option; [@option]  (** enabled *)
  forwarding_protocol : string prop option; [@option]
      (** forwarding_protocol *)
  https_redirect_enabled : bool prop option; [@option]
      (** https_redirect_enabled *)
  id : string prop option; [@option]  (** id *)
  link_to_default_domain : bool prop option; [@option]
      (** link_to_default_domain *)
  name : string prop;  (** name *)
  patterns_to_match : string prop list;  (** patterns_to_match *)
  supported_protocols : string prop list;  (** supported_protocols *)
  cache : azurerm_cdn_frontdoor_route__cache list;
  timeouts : azurerm_cdn_frontdoor_route__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route *)

let azurerm_cdn_frontdoor_route ?cdn_frontdoor_custom_domain_ids
    ?cdn_frontdoor_origin_path ?cdn_frontdoor_rule_set_ids ?enabled
    ?forwarding_protocol ?https_redirect_enabled ?id
    ?link_to_default_domain ?timeouts ~cdn_frontdoor_endpoint_id
    ~cdn_frontdoor_origin_group_id ~cdn_frontdoor_origin_ids ~name
    ~patterns_to_match ~supported_protocols ~cache __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_route" in
  let __resource =
    {
      cdn_frontdoor_custom_domain_ids;
      cdn_frontdoor_endpoint_id;
      cdn_frontdoor_origin_group_id;
      cdn_frontdoor_origin_ids;
      cdn_frontdoor_origin_path;
      cdn_frontdoor_rule_set_ids;
      enabled;
      forwarding_protocol;
      https_redirect_enabled;
      id;
      link_to_default_domain;
      name;
      patterns_to_match;
      supported_protocols;
      cache;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_route __resource);
  ()
