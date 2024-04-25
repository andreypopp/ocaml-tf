(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_control__akamai_signature_header_authentication_key = {
  base64_key : string prop option; [@option]
  expiration : string prop option; [@option]
  identifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : access_control__akamai_signature_header_authentication_key) ->
  ()

let yojson_of_access_control__akamai_signature_header_authentication_key
    =
  (function
   | {
       base64_key = v_base64_key;
       expiration = v_expiration;
       identifier = v_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base64_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base64_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_control__akamai_signature_header_authentication_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_access_control__akamai_signature_header_authentication_key

[@@@deriving.end]

type access_control__ip_allow = {
  address : string prop option; [@option]
  name : string prop option; [@option]
  subnet_prefix_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control__ip_allow) -> ()

let yojson_of_access_control__ip_allow =
  (function
   | {
       address = v_address;
       name = v_name;
       subnet_prefix_length = v_subnet_prefix_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "subnet_prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_control__ip_allow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__ip_allow

[@@@deriving.end]

type access_control = {
  akamai_signature_header_authentication_key :
    access_control__akamai_signature_header_authentication_key list;
  ip_allow : access_control__ip_allow list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control) -> ()

let yojson_of_access_control =
  (function
   | {
       akamai_signature_header_authentication_key =
         v_akamai_signature_header_authentication_key;
       ip_allow = v_ip_allow;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_control__ip_allow
             v_ip_allow
         in
         ("ip_allow", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_control__akamai_signature_header_authentication_key
             v_akamai_signature_header_authentication_key
         in
         ("akamai_signature_header_authentication_key", arg) :: bnds
       in
       `Assoc bnds
    : access_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control

[@@@deriving.end]

type cross_site_access_policy = {
  client_access_policy : string prop option; [@option]
  cross_domain_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cross_site_access_policy) -> ()

let yojson_of_cross_site_access_policy =
  (function
   | {
       client_access_policy = v_client_access_policy;
       cross_domain_policy = v_cross_domain_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cross_domain_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_domain_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_access_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_access_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cross_site_access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cross_site_access_policy

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

type sku = { capacity : float prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type azurerm_media_streaming_endpoint = {
  auto_start_enabled : bool prop option; [@option]
  cdn_enabled : bool prop option; [@option]
  cdn_profile : string prop option; [@option]
  cdn_provider : string prop option; [@option]
  custom_host_names : string prop list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  max_cache_age_seconds : float prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  tags : (string * string prop) list option; [@option]
  access_control : access_control list;
  cross_site_access_policy : cross_site_access_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_streaming_endpoint) -> ()

let yojson_of_azurerm_media_streaming_endpoint =
  (function
   | {
       auto_start_enabled = v_auto_start_enabled;
       cdn_enabled = v_cdn_enabled;
       cdn_profile = v_cdn_profile;
       cdn_provider = v_cdn_provider;
       custom_host_names = v_custom_host_names;
       description = v_description;
       id = v_id;
       location = v_location;
       max_cache_age_seconds = v_max_cache_age_seconds;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scale_units = v_scale_units;
       tags = v_tags;
       access_control = v_access_control;
       cross_site_access_policy = v_cross_site_access_policy;
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
         let arg =
           yojson_of_list yojson_of_cross_site_access_policy
             v_cross_site_access_policy
         in
         ("cross_site_access_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_control v_access_control
         in
         ("access_control", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_scale_units in
         ("scale_units", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
       in
       let bnds =
         match v_max_cache_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_cache_age_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_host_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_host_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdn_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdn_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cdn_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_start_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_start_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_streaming_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_streaming_endpoint

[@@@deriving.end]

let access_control__akamai_signature_header_authentication_key
    ?base64_key ?expiration ?identifier () :
    access_control__akamai_signature_header_authentication_key =
  { base64_key; expiration; identifier }

let access_control__ip_allow ?address ?name ?subnet_prefix_length ()
    : access_control__ip_allow =
  { address; name; subnet_prefix_length }

let access_control ?(akamai_signature_header_authentication_key = [])
    ?(ip_allow = []) () : access_control =
  { akamai_signature_header_authentication_key; ip_allow }

let cross_site_access_policy ?client_access_policy
    ?cross_domain_policy () : cross_site_access_policy =
  { client_access_policy; cross_domain_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_streaming_endpoint ?auto_start_enabled ?cdn_enabled
    ?cdn_profile ?cdn_provider ?custom_host_names ?description ?id
    ?max_cache_age_seconds ?tags ?(access_control = [])
    ?(cross_site_access_policy = []) ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units () : azurerm_media_streaming_endpoint =
  {
    auto_start_enabled;
    cdn_enabled;
    cdn_profile;
    cdn_provider;
    custom_host_names;
    description;
    id;
    location;
    max_cache_age_seconds;
    media_services_account_name;
    name;
    resource_group_name;
    scale_units;
    tags;
    access_control;
    cross_site_access_policy;
    timeouts;
  }

type t = {
  auto_start_enabled : bool prop;
  cdn_enabled : bool prop;
  cdn_profile : string prop;
  cdn_provider : string prop;
  custom_host_names : string list prop;
  description : string prop;
  host_name : string prop;
  id : string prop;
  location : string prop;
  max_cache_age_seconds : float prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  sku : sku list prop;
  tags : (string * string) list prop;
}

let make ?auto_start_enabled ?cdn_enabled ?cdn_profile ?cdn_provider
    ?custom_host_names ?description ?id ?max_cache_age_seconds ?tags
    ?(access_control = []) ?(cross_site_access_policy = []) ?timeouts
    ~location ~media_services_account_name ~name ~resource_group_name
    ~scale_units __id =
  let __type = "azurerm_media_streaming_endpoint" in
  let __attrs =
    ({
       auto_start_enabled =
         Prop.computed __type __id "auto_start_enabled";
       cdn_enabled = Prop.computed __type __id "cdn_enabled";
       cdn_profile = Prop.computed __type __id "cdn_profile";
       cdn_provider = Prop.computed __type __id "cdn_provider";
       custom_host_names =
         Prop.computed __type __id "custom_host_names";
       description = Prop.computed __type __id "description";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       max_cache_age_seconds =
         Prop.computed __type __id "max_cache_age_seconds";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_units = Prop.computed __type __id "scale_units";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_streaming_endpoint
        (azurerm_media_streaming_endpoint ?auto_start_enabled
           ?cdn_enabled ?cdn_profile ?cdn_provider ?custom_host_names
           ?description ?id ?max_cache_age_seconds ?tags
           ~access_control ~cross_site_access_policy ?timeouts
           ~location ~media_services_account_name ~name
           ~resource_group_name ~scale_units ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_start_enabled ?cdn_enabled ?cdn_profile
    ?cdn_provider ?custom_host_names ?description ?id
    ?max_cache_age_seconds ?tags ?(access_control = [])
    ?(cross_site_access_policy = []) ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units __id =
  let (r : _ Tf_core.resource) =
    make ?auto_start_enabled ?cdn_enabled ?cdn_profile ?cdn_provider
      ?custom_host_names ?description ?id ?max_cache_age_seconds
      ?tags ~access_control ~cross_site_access_policy ?timeouts
      ~location ~media_services_account_name ~name
      ~resource_group_name ~scale_units __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
