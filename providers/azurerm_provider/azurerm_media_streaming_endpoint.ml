(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key = {
  base64_key : string option; [@option]  (** base64_key *)
  expiration : string option; [@option]  (** expiration *)
  identifier : string option; [@option]  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key *)

type azurerm_media_streaming_endpoint__access_control__ip_allow = {
  address : string option; [@option]  (** address *)
  name : string option; [@option]  (** name *)
  subnet_prefix_length : float option; [@option]
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
  client_access_policy : string option; [@option]
      (** client_access_policy *)
  cross_domain_policy : string option; [@option]
      (** cross_domain_policy *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__cross_site_access_policy *)

type azurerm_media_streaming_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint__timeouts *)

type azurerm_media_streaming_endpoint__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_media_streaming_endpoint = {
  cdn_enabled : bool option; [@option]  (** cdn_enabled *)
  custom_host_names : string list option; [@option]
      (** custom_host_names *)
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  max_cache_age_seconds : float option; [@option]
      (** max_cache_age_seconds *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scale_units : float;  (** scale_units *)
  tags : (string * string) list option; [@option]  (** tags *)
  access_control :
    azurerm_media_streaming_endpoint__access_control list;
  cross_site_access_policy :
    azurerm_media_streaming_endpoint__cross_site_access_policy list;
  timeouts : azurerm_media_streaming_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_endpoint *)

let azurerm_media_streaming_endpoint ?cdn_enabled ?custom_host_names
    ?description ?max_cache_age_seconds ?tags ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~scale_units ~access_control ~cross_site_access_policy
    __resource_id =
  let __resource_type = "azurerm_media_streaming_endpoint" in
  let __resource =
    {
      cdn_enabled;
      custom_host_names;
      description;
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
