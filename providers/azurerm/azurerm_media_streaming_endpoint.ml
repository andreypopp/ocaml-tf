(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_control__akamai_signature_header_authentication_key = {
  base64_key : string prop option; [@option]  (** base64_key *)
  expiration : string prop option; [@option]  (** expiration *)
  identifier : string prop option; [@option]  (** identifier *)
}
[@@deriving yojson_of]
(** access_control__akamai_signature_header_authentication_key *)

type access_control__ip_allow = {
  address : string prop option; [@option]  (** address *)
  name : string prop option; [@option]  (** name *)
  subnet_prefix_length : float prop option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** access_control__ip_allow *)

type access_control = {
  akamai_signature_header_authentication_key :
    access_control__akamai_signature_header_authentication_key list;
  ip_allow : access_control__ip_allow list;
}
[@@deriving yojson_of]
(** access_control *)

type cross_site_access_policy = {
  client_access_policy : string prop option; [@option]
      (** client_access_policy *)
  cross_domain_policy : string prop option; [@option]
      (** cross_domain_policy *)
}
[@@deriving yojson_of]
(** cross_site_access_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_media_streaming_endpoint = {
  auto_start_enabled : bool prop option; [@option]
      (** auto_start_enabled *)
  cdn_enabled : bool prop option; [@option]  (** cdn_enabled *)
  cdn_profile : string prop option; [@option]  (** cdn_profile *)
  cdn_provider : string prop option; [@option]  (** cdn_provider *)
  custom_host_names : string prop list option; [@option]
      (** custom_host_names *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  max_cache_age_seconds : float prop option; [@option]
      (** max_cache_age_seconds *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_units : float prop;  (** scale_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  access_control : access_control list;
  cross_site_access_policy : cross_site_access_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint *)

let access_control__akamai_signature_header_authentication_key
    ?base64_key ?expiration ?identifier () :
    access_control__akamai_signature_header_authentication_key =
  { base64_key; expiration; identifier }

let access_control__ip_allow ?address ?name ?subnet_prefix_length ()
    : access_control__ip_allow =
  { address; name; subnet_prefix_length }

let access_control ~akamai_signature_header_authentication_key
    ~ip_allow () : access_control =
  { akamai_signature_header_authentication_key; ip_allow }

let cross_site_access_policy ?client_access_policy
    ?cross_domain_policy () : cross_site_access_policy =
  { client_access_policy; cross_domain_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_streaming_endpoint ?auto_start_enabled ?cdn_enabled
    ?cdn_profile ?cdn_provider ?custom_host_names ?description ?id
    ?max_cache_age_seconds ?tags ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units ~access_control ~cross_site_access_policy () :
    azurerm_media_streaming_endpoint =
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
    ?timeouts ~location ~media_services_account_name ~name
    ~resource_group_name ~scale_units ~access_control
    ~cross_site_access_policy __id =
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
           ?description ?id ?max_cache_age_seconds ?tags ?timeouts
           ~location ~media_services_account_name ~name
           ~resource_group_name ~scale_units ~access_control
           ~cross_site_access_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_start_enabled ?cdn_enabled ?cdn_profile
    ?cdn_provider ?custom_host_names ?description ?id
    ?max_cache_age_seconds ?tags ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units ~access_control ~cross_site_access_policy __id =
  let (r : _ Tf_core.resource) =
    make ?auto_start_enabled ?cdn_enabled ?cdn_profile ?cdn_provider
      ?custom_host_names ?description ?id ?max_cache_age_seconds
      ?tags ?timeouts ~location ~media_services_account_name ~name
      ~resource_group_name ~scale_units ~access_control
      ~cross_site_access_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
