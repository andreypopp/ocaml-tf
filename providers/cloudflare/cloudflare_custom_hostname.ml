(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_custom_hostname__ssl__settings = {
  ciphers : string prop list option; [@option]
      (** List of SSL/TLS ciphers to associate with this certificate. *)
  early_hints : string prop option; [@option]
      (** Whether early hints should be supported. Available values: `on`, `off`. *)
  http2 : string prop option; [@option]
      (** Whether HTTP2 should be supported. Available values: `on`, `off`. *)
  min_tls_version : string prop option; [@option]
      (** Lowest version of TLS this certificate should support. Available values: `1.0`, `1.1`, `1.2`, `1.3`. *)
  tls13 : string prop option; [@option]
      (** Whether TLSv1.3 should be supported. Available values: `on`, `off`. *)
}
[@@deriving yojson_of]
(** SSL/TLS settings for the certificate. *)

type cloudflare_custom_hostname__ssl__validation_errors = {
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type cloudflare_custom_hostname__ssl__validation_records = {
  cname_name : string prop;  (** cname_name *)
  cname_target : string prop;  (** cname_target *)
  emails : string prop list;  (** emails *)
  http_body : string prop;  (** http_body *)
  http_url : string prop;  (** http_url *)
  txt_name : string prop;  (** txt_name *)
  txt_value : string prop;  (** txt_value *)
}
[@@deriving yojson_of]

type cloudflare_custom_hostname__ssl = {
  bundle_method : string prop option; [@option]
      (** A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`. *)
  certificate_authority : string prop option; [@option]
      (** certificate_authority *)
  custom_certificate : string prop option; [@option]
      (** If a custom uploaded certificate is used. *)
  custom_key : string prop option; [@option]
      (** The key for a custom uploaded certificate. *)
  method_ : string prop option; [@option] [@key "method"]
      (** Domain control validation (DCV) method used for this hostname. Available values: `http`, `txt`, `email`. *)
  status : string prop;  (** status *)
  type_ : string prop option; [@option] [@key "type"]
      (** Level of validation to be used for this hostname. Available values: `dv`. Defaults to `dv`. *)
  validation_errors :
    cloudflare_custom_hostname__ssl__validation_errors list;
      (** validation_errors *)
  validation_records :
    cloudflare_custom_hostname__ssl__validation_records list;
      (** validation_records *)
  wildcard : bool prop option; [@option]
      (** Indicates whether the certificate covers a wildcard. *)
  settings : cloudflare_custom_hostname__ssl__settings list;
}
[@@deriving yojson_of]
(** SSL properties used when creating the custom hostname. *)

type cloudflare_custom_hostname = {
  custom_metadata : (string * string prop) list option; [@option]
      (** Custom metadata associated with custom hostname. Only supports primitive string values, all other values are accessible via the API directly. *)
  custom_origin_server : string prop option; [@option]
      (** The custom origin server used for certificates. *)
  custom_origin_sni : string prop option; [@option]
      (** The [custom origin SNI](https://developers.cloudflare.com/ssl/ssl-for-saas/hostname-specific-behavior/custom-origin) used for certificates. *)
  hostname : string prop;
      (** Hostname you intend to request a certificate for. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  wait_for_ssl_pending_validation : bool prop option; [@option]
      (** Whether to wait for a custom hostname SSL sub-object to reach status `pending_validation` during creation. Defaults to `false`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  ssl : cloudflare_custom_hostname__ssl list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom hostname (also known as SSL for SaaS) resource.
 *)

type t = {
  custom_metadata : (string * string) list prop;
  custom_origin_server : string prop;
  custom_origin_sni : string prop;
  hostname : string prop;
  id : string prop;
  ownership_verification : (string * string) list prop;
  ownership_verification_http : (string * string) list prop;
  status : string prop;
  wait_for_ssl_pending_validation : bool prop;
  zone_id : string prop;
}

let cloudflare_custom_hostname ?custom_metadata ?custom_origin_server
    ?custom_origin_sni ?id ?wait_for_ssl_pending_validation ~hostname
    ~zone_id ~ssl __resource_id =
  let __resource_type = "cloudflare_custom_hostname" in
  let __resource =
    ({
       custom_metadata;
       custom_origin_server;
       custom_origin_sni;
       hostname;
       id;
       wait_for_ssl_pending_validation;
       zone_id;
       ssl;
     }
      : cloudflare_custom_hostname)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_hostname __resource);
  let __resource_attributes =
    ({
       custom_metadata =
         Prop.computed __resource_type __resource_id
           "custom_metadata";
       custom_origin_server =
         Prop.computed __resource_type __resource_id
           "custom_origin_server";
       custom_origin_sni =
         Prop.computed __resource_type __resource_id
           "custom_origin_sni";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       ownership_verification =
         Prop.computed __resource_type __resource_id
           "ownership_verification";
       ownership_verification_http =
         Prop.computed __resource_type __resource_id
           "ownership_verification_http";
       status = Prop.computed __resource_type __resource_id "status";
       wait_for_ssl_pending_validation =
         Prop.computed __resource_type __resource_id
           "wait_for_ssl_pending_validation";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
