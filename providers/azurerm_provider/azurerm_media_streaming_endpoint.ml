(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key = {
  base64_key : string prop option; [@option]  (** base64_key *)
  expiration : string prop option; [@option]  (** expiration *)
  identifier : string prop option; [@option]  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key *)

type azurerm_media_streaming_endpoint__access_control__ip_allow = {
  address : string prop option; [@option]  (** address *)
  name : string prop option; [@option]  (** name *)
  subnet_prefix_length : float prop option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__access_control__ip_allow *)

type azurerm_media_streaming_endpoint__access_control = {
  akamai_signature_header_authentication_key :
    azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key
    list;
  ip_allow :
    azurerm_media_streaming_endpoint__access_control__ip_allow list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__access_control *)

type azurerm_media_streaming_endpoint__cross_site_access_policy = {
  client_access_policy : string prop option; [@option]
      (** client_access_policy *)
  cross_domain_policy : string prop option; [@option]
      (** cross_domain_policy *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__cross_site_access_policy *)

type azurerm_media_streaming_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__timeouts *)

type azurerm_media_streaming_endpoint__sku = {
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
  access_control :
    azurerm_media_streaming_endpoint__access_control list;
  cross_site_access_policy :
    azurerm_media_streaming_endpoint__cross_site_access_policy list;
  timeouts : azurerm_media_streaming_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint *)

let azurerm_media_streaming_endpoint ?auto_start_enabled ?cdn_enabled
    ?cdn_profile ?cdn_provider ?custom_host_names ?description ?id
    ?max_cache_age_seconds ?tags ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units ~access_control ~cross_site_access_policy
    __resource_id =
  let __resource_type = "azurerm_media_streaming_endpoint" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_streaming_endpoint __resource);
  ()
