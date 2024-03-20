(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache = {
  compression_enabled : bool prop option; [@option]
  content_types_to_compress : string prop list option; [@option]
  query_string_caching_behavior : string prop option; [@option]
  query_strings : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache) -> ()

let yojson_of_cache =
  (function
   | {
       compression_enabled = v_compression_enabled;
       content_types_to_compress = v_content_types_to_compress;
       query_string_caching_behavior =
         v_query_string_caching_behavior;
       query_strings = v_query_strings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_strings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_strings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string_caching_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string_caching_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_types_to_compress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "content_types_to_compress", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compression_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_cdn_frontdoor_route = {
  cdn_frontdoor_custom_domain_ids : string prop list option;
      [@option]
  cdn_frontdoor_endpoint_id : string prop;
  cdn_frontdoor_origin_group_id : string prop;
  cdn_frontdoor_origin_ids : string prop list;
  cdn_frontdoor_origin_path : string prop option; [@option]
  cdn_frontdoor_rule_set_ids : string prop list option; [@option]
  enabled : bool prop option; [@option]
  forwarding_protocol : string prop option; [@option]
  https_redirect_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  link_to_default_domain : bool prop option; [@option]
  name : string prop;
  patterns_to_match : string prop list;
  supported_protocols : string prop list;
  cache : cache list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_route) -> ()

let yojson_of_azurerm_cdn_frontdoor_route =
  (function
   | {
       cdn_frontdoor_custom_domain_ids =
         v_cdn_frontdoor_custom_domain_ids;
       cdn_frontdoor_endpoint_id = v_cdn_frontdoor_endpoint_id;
       cdn_frontdoor_origin_group_id =
         v_cdn_frontdoor_origin_group_id;
       cdn_frontdoor_origin_ids = v_cdn_frontdoor_origin_ids;
       cdn_frontdoor_origin_path = v_cdn_frontdoor_origin_path;
       cdn_frontdoor_rule_set_ids = v_cdn_frontdoor_rule_set_ids;
       enabled = v_enabled;
       forwarding_protocol = v_forwarding_protocol;
       https_redirect_enabled = v_https_redirect_enabled;
       id = v_id;
       link_to_default_domain = v_link_to_default_domain;
       name = v_name;
       patterns_to_match = v_patterns_to_match;
       supported_protocols = v_supported_protocols;
       cache = v_cache;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_cache v_cache in
         ("cache", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_supported_protocols
         in
         ("supported_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_patterns_to_match
         in
         ("patterns_to_match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_link_to_default_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "link_to_default_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forwarding_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forwarding_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_frontdoor_rule_set_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cdn_frontdoor_rule_set_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_frontdoor_origin_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdn_frontdoor_origin_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cdn_frontdoor_origin_ids
         in
         ("cdn_frontdoor_origin_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cdn_frontdoor_origin_group_id
         in
         ("cdn_frontdoor_origin_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cdn_frontdoor_endpoint_id
         in
         ("cdn_frontdoor_endpoint_id", arg) :: bnds
       in
       let bnds =
         match v_cdn_frontdoor_custom_domain_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cdn_frontdoor_custom_domain_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_route

[@@@deriving.end]

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
