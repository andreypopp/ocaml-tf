(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_custom_hostname__ssl__settings = {
  ciphers : string list option; [@option]
      (** List of SSL/TLS ciphers to associate with this certificate. *)
  early_hints : string option; [@option]
      (** Whether early hints should be supported. Available values: `on`, `off`. *)
  http2 : string option; [@option]
      (** Whether HTTP2 should be supported. Available values: `on`, `off`. *)
  min_tls_version : string option; [@option]
      (** Lowest version of TLS this certificate should support. Available values: `1.0`, `1.1`, `1.2`, `1.3`. *)
  tls13 : string option; [@option]
      (** Whether TLSv1.3 should be supported. Available values: `on`, `off`. *)
}
[@@deriving yojson_of]
(** SSL/TLS settings for the certificate. *)

type cloudflare_custom_hostname__ssl__validation_errors = {
  message : string;  (** message *)
}
[@@deriving yojson_of]

type cloudflare_custom_hostname__ssl__validation_records = {
  cname_name : string;  (** cname_name *)
  cname_target : string;  (** cname_target *)
  emails : string list;  (** emails *)
  http_body : string;  (** http_body *)
  http_url : string;  (** http_url *)
  txt_name : string;  (** txt_name *)
  txt_value : string;  (** txt_value *)
}
[@@deriving yojson_of]

type cloudflare_custom_hostname__ssl = {
  bundle_method : string option; [@option]
      (** A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`. *)
  certificate_authority : string option; [@option]
      (** certificate_authority *)
  custom_certificate : string option; [@option]
      (** If a custom uploaded certificate is used. *)
  custom_key : string option; [@option]
      (** The key for a custom uploaded certificate. *)
  method_ : string option; [@option] [@key "method"]
      (** Domain control validation (DCV) method used for this hostname. Available values: `http`, `txt`, `email`. *)
  status : string;  (** status *)
  type_ : string option; [@option] [@key "type"]
      (** Level of validation to be used for this hostname. Available values: `dv`. Defaults to `dv`. *)
  validation_errors :
    cloudflare_custom_hostname__ssl__validation_errors list;
      (** validation_errors *)
  validation_records :
    cloudflare_custom_hostname__ssl__validation_records list;
      (** validation_records *)
  wildcard : bool option; [@option]
      (** Indicates whether the certificate covers a wildcard. *)
  settings : cloudflare_custom_hostname__ssl__settings list;
}
[@@deriving yojson_of]
(** SSL properties used when creating the custom hostname. *)

type cloudflare_custom_hostname = {
  custom_metadata : (string * string) list option; [@option]
      (** Custom metadata associated with custom hostname. Only supports primitive string values, all other values are accessible via the API directly. *)
  custom_origin_server : string option; [@option]
      (** The custom origin server used for certificates. *)
  custom_origin_sni : string option; [@option]
      (** The [custom origin SNI](https://developers.cloudflare.com/ssl/ssl-for-saas/hostname-specific-behavior/custom-origin) used for certificates. *)
  hostname : string;
      (** Hostname you intend to request a certificate for. **Modifying this attribute will force creation of a new resource.** *)
  wait_for_ssl_pending_validation : bool option; [@option]
      (** Whether to wait for a custom hostname SSL sub-object to reach status `pending_validation` during creation. Defaults to `false`. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  ssl : cloudflare_custom_hostname__ssl list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom hostname (also known as SSL for SaaS) resource.
 *)

let cloudflare_custom_hostname ?custom_metadata ?custom_origin_server
    ?custom_origin_sni ?wait_for_ssl_pending_validation ~hostname
    ~zone_id ~ssl __resource_id =
  let __resource_type = "cloudflare_custom_hostname" in
  let __resource =
    {
      custom_metadata;
      custom_origin_server;
      custom_origin_sni;
      hostname;
      wait_for_ssl_pending_validation;
      zone_id;
      ssl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_hostname __resource);
  ()