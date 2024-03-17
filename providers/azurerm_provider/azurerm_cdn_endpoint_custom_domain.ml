(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_endpoint_custom_domain__cdn_managed_https = {
  certificate_type : string;  (** certificate_type *)
  protocol_type : string;  (** protocol_type *)
  tls_version : string option; [@option]  (** tls_version *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint_custom_domain__cdn_managed_https *)

type azurerm_cdn_endpoint_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint_custom_domain__timeouts *)

type azurerm_cdn_endpoint_custom_domain__user_managed_https = {
  key_vault_certificate_id : string option; [@option]
      (** key_vault_certificate_id *)
  key_vault_secret_id : string option; [@option]
      (** key_vault_secret_id *)
  tls_version : string option; [@option]  (** tls_version *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint_custom_domain__user_managed_https *)

type azurerm_cdn_endpoint_custom_domain = {
  cdn_endpoint_id : string;  (** cdn_endpoint_id *)
  host_name : string;  (** host_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  cdn_managed_https :
    azurerm_cdn_endpoint_custom_domain__cdn_managed_https list;
  timeouts : azurerm_cdn_endpoint_custom_domain__timeouts option;
  user_managed_https :
    azurerm_cdn_endpoint_custom_domain__user_managed_https list;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint_custom_domain *)

let azurerm_cdn_endpoint_custom_domain ?id ?timeouts ~cdn_endpoint_id
    ~host_name ~name ~cdn_managed_https ~user_managed_https
    __resource_id =
  let __resource_type = "azurerm_cdn_endpoint_custom_domain" in
  let __resource =
    {
      cdn_endpoint_id;
      host_name;
      id;
      name;
      cdn_managed_https;
      timeouts;
      user_managed_https;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_endpoint_custom_domain __resource);
  ()
