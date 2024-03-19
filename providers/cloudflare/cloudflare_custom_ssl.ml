(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_ssl_options = {
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

type custom_ssl_priority = {
  id : string prop option; [@option]  (** id *)
  priority : float prop option; [@option]  (** priority *)
}
[@@deriving yojson_of]
(** custom_ssl_priority *)

type cloudflare_custom_ssl = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  custom_ssl_options : custom_ssl_options list;
  custom_ssl_priority : custom_ssl_priority list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom SSL resource. *)

let custom_ssl_options ?bundle_method ?certificate ?geo_restrictions
    ?private_key ?type_ () : custom_ssl_options =
  {
    bundle_method;
    certificate;
    geo_restrictions;
    private_key;
    type_;
  }

let custom_ssl_priority ?id ?priority () : custom_ssl_priority =
  { id; priority }

let cloudflare_custom_ssl ?id ~zone_id ~custom_ssl_options
    ~custom_ssl_priority () : cloudflare_custom_ssl =
  { id; zone_id; custom_ssl_options; custom_ssl_priority }

type t = {
  expires_on : string prop;
  hosts : string list prop;
  id : string prop;
  issuer : string prop;
  modified_on : string prop;
  priority : float prop;
  signature : string prop;
  status : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~zone_id ~custom_ssl_options
    ~custom_ssl_priority __resource_id =
  let __resource_type = "cloudflare_custom_ssl" in
  let __resource =
    cloudflare_custom_ssl ?id ~zone_id ~custom_ssl_options
      ~custom_ssl_priority ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_ssl __resource);
  let __resource_attributes =
    ({
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       hosts = Prop.computed __resource_type __resource_id "hosts";
       id = Prop.computed __resource_type __resource_id "id";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       signature =
         Prop.computed __resource_type __resource_id "signature";
       status = Prop.computed __resource_type __resource_id "status";
       uploaded_on =
         Prop.computed __resource_type __resource_id "uploaded_on";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
