(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache = {
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
(** cache *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  cache : cache list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route *)

let cache ?compression_enabled ?content_types_to_compress
    ?query_string_caching_behavior ?query_strings () : cache =
  {
    compression_enabled;
    content_types_to_compress;
    query_string_caching_behavior;
    query_strings;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_route ?cdn_frontdoor_custom_domain_ids
    ?cdn_frontdoor_origin_path ?cdn_frontdoor_rule_set_ids ?enabled
    ?forwarding_protocol ?https_redirect_enabled ?id
    ?link_to_default_domain ?timeouts ~cdn_frontdoor_endpoint_id
    ~cdn_frontdoor_origin_group_id ~cdn_frontdoor_origin_ids ~name
    ~patterns_to_match ~supported_protocols ~cache () :
    azurerm_cdn_frontdoor_route =
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

type t = {
  cdn_frontdoor_custom_domain_ids : string list prop;
  cdn_frontdoor_endpoint_id : string prop;
  cdn_frontdoor_origin_group_id : string prop;
  cdn_frontdoor_origin_ids : string list prop;
  cdn_frontdoor_origin_path : string prop;
  cdn_frontdoor_rule_set_ids : string list prop;
  enabled : bool prop;
  forwarding_protocol : string prop;
  https_redirect_enabled : bool prop;
  id : string prop;
  link_to_default_domain : bool prop;
  name : string prop;
  patterns_to_match : string list prop;
  supported_protocols : string list prop;
}

let make ?cdn_frontdoor_custom_domain_ids ?cdn_frontdoor_origin_path
    ?cdn_frontdoor_rule_set_ids ?enabled ?forwarding_protocol
    ?https_redirect_enabled ?id ?link_to_default_domain ?timeouts
    ~cdn_frontdoor_endpoint_id ~cdn_frontdoor_origin_group_id
    ~cdn_frontdoor_origin_ids ~name ~patterns_to_match
    ~supported_protocols ~cache __id =
  let __type = "azurerm_cdn_frontdoor_route" in
  let __attrs =
    ({
       cdn_frontdoor_custom_domain_ids =
         Prop.computed __type __id "cdn_frontdoor_custom_domain_ids";
       cdn_frontdoor_endpoint_id =
         Prop.computed __type __id "cdn_frontdoor_endpoint_id";
       cdn_frontdoor_origin_group_id =
         Prop.computed __type __id "cdn_frontdoor_origin_group_id";
       cdn_frontdoor_origin_ids =
         Prop.computed __type __id "cdn_frontdoor_origin_ids";
       cdn_frontdoor_origin_path =
         Prop.computed __type __id "cdn_frontdoor_origin_path";
       cdn_frontdoor_rule_set_ids =
         Prop.computed __type __id "cdn_frontdoor_rule_set_ids";
       enabled = Prop.computed __type __id "enabled";
       forwarding_protocol =
         Prop.computed __type __id "forwarding_protocol";
       https_redirect_enabled =
         Prop.computed __type __id "https_redirect_enabled";
       id = Prop.computed __type __id "id";
       link_to_default_domain =
         Prop.computed __type __id "link_to_default_domain";
       name = Prop.computed __type __id "name";
       patterns_to_match =
         Prop.computed __type __id "patterns_to_match";
       supported_protocols =
         Prop.computed __type __id "supported_protocols";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_route
        (azurerm_cdn_frontdoor_route ?cdn_frontdoor_custom_domain_ids
           ?cdn_frontdoor_origin_path ?cdn_frontdoor_rule_set_ids
           ?enabled ?forwarding_protocol ?https_redirect_enabled ?id
           ?link_to_default_domain ?timeouts
           ~cdn_frontdoor_endpoint_id ~cdn_frontdoor_origin_group_id
           ~cdn_frontdoor_origin_ids ~name ~patterns_to_match
           ~supported_protocols ~cache ());
    attrs = __attrs;
  }

let register ?tf_module ?cdn_frontdoor_custom_domain_ids
    ?cdn_frontdoor_origin_path ?cdn_frontdoor_rule_set_ids ?enabled
    ?forwarding_protocol ?https_redirect_enabled ?id
    ?link_to_default_domain ?timeouts ~cdn_frontdoor_endpoint_id
    ~cdn_frontdoor_origin_group_id ~cdn_frontdoor_origin_ids ~name
    ~patterns_to_match ~supported_protocols ~cache __id =
  let (r : _ Tf_core.resource) =
    make ?cdn_frontdoor_custom_domain_ids ?cdn_frontdoor_origin_path
      ?cdn_frontdoor_rule_set_ids ?enabled ?forwarding_protocol
      ?https_redirect_enabled ?id ?link_to_default_domain ?timeouts
      ~cdn_frontdoor_endpoint_id ~cdn_frontdoor_origin_group_id
      ~cdn_frontdoor_origin_ids ~name ~patterns_to_match
      ~supported_protocols ~cache __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
