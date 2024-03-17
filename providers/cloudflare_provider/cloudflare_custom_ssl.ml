(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_custom_ssl__custom_ssl_options = {
  bundle_method : string prop option; [@option]
      (** Method of building intermediate certificate chain. A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`. *)
  certificate : string prop option; [@option]
      (** Certificate certificate and the intermediate(s). *)
  geo_restrictions : string prop option; [@option]
      (** Specifies the region where your private key can be held locally. Available values: `us`, `eu`, `highest_security`. *)
  private_key : string prop option; [@option]
      (** Certificate's private key. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Whether to enable support for legacy clients which do not include SNI in the TLS handshake. Available values: `legacy_custom`, `sni_custom`. *)
}
[@@deriving yojson_of]
(** The certificate associated parameters. **Modifying this attribute will force creation of a new resource.** *)

type cloudflare_custom_ssl__custom_ssl_priority = {
  id : string prop option; [@option]  (** id *)
  priority : float prop option; [@option]  (** priority *)
}
[@@deriving yojson_of]
(** cloudflare_custom_ssl__custom_ssl_priority *)

type cloudflare_custom_ssl = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  custom_ssl_options :
    cloudflare_custom_ssl__custom_ssl_options list;
  custom_ssl_priority :
    cloudflare_custom_ssl__custom_ssl_priority list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom SSL resource. *)

let cloudflare_custom_ssl ?id ~zone_id ~custom_ssl_options
    ~custom_ssl_priority __resource_id =
  let __resource_type = "cloudflare_custom_ssl" in
  let __resource =
    { id; zone_id; custom_ssl_options; custom_ssl_priority }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_ssl __resource);
  ()
