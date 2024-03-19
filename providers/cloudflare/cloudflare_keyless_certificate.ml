(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_keyless_certificate = {
  bundle_method : string prop option; [@option]
      (** A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`. Defaults to `ubiquitous`. **Modifying this attribute will force creation of a new resource.** *)
  certificate : string prop;
      (** The zone's SSL certificate or SSL certificate and intermediate(s). **Modifying this attribute will force creation of a new resource.** *)
  enabled : bool prop option; [@option]
      (** Whether the KeyLess SSL is on. *)
  host : string prop;  (** The KeyLess SSL host. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** The KeyLess SSL name. *)
  port : float prop option; [@option]
      (** The KeyLess SSL port used to communicate between Cloudflare and the client's KeyLess SSL server. Defaults to `24008`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Keyless certificates.
 *)

let cloudflare_keyless_certificate ?bundle_method ?enabled ?id ?name
    ?port ~certificate ~host ~zone_id () :
    cloudflare_keyless_certificate =
  {
    bundle_method;
    certificate;
    enabled;
    host;
    id;
    name;
    port;
    zone_id;
  }

type t = {
  bundle_method : string prop;
  certificate : string prop;
  enabled : bool prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  status : string prop;
  zone_id : string prop;
}

let register ?tf_module ?bundle_method ?enabled ?id ?name ?port
    ~certificate ~host ~zone_id __resource_id =
  let __resource_type = "cloudflare_keyless_certificate" in
  let __resource =
    cloudflare_keyless_certificate ?bundle_method ?enabled ?id ?name
      ?port ~certificate ~host ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_keyless_certificate __resource);
  let __resource_attributes =
    ({
       bundle_method =
         Prop.computed __resource_type __resource_id "bundle_method";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       status = Prop.computed __resource_type __resource_id "status";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
