(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_cdn = {
  certificate_id : string prop option; [@option]
      (** ID of a DigitalOcean managed TLS certificate for use with custom domains *)
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  custom_domain : string prop option; [@option]
      (** fully qualified domain name (FQDN) for custom subdomain, (requires certificate_id) *)
  id : string prop option; [@option]  (** id *)
  origin : string prop;
      (** fully qualified domain name (FQDN) for the origin server *)
  ttl : float prop option; [@option]
      (** The amount of time the content is cached in the CDN *)
}
[@@deriving yojson_of]
(** digitalocean_cdn *)

let digitalocean_cdn ?certificate_id ?certificate_name ?custom_domain
    ?id ?ttl ~origin () : digitalocean_cdn =
  {
    certificate_id;
    certificate_name;
    custom_domain;
    id;
    origin;
    ttl;
  }

type t = {
  certificate_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  custom_domain : string prop;
  endpoint : string prop;
  id : string prop;
  origin : string prop;
  ttl : float prop;
}

let register ?tf_module ?certificate_id ?certificate_name
    ?custom_domain ?id ?ttl ~origin __resource_id =
  let __resource_type = "digitalocean_cdn" in
  let __resource =
    digitalocean_cdn ?certificate_id ?certificate_name ?custom_domain
      ?id ?ttl ~origin ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_cdn __resource);
  let __resource_attributes =
    ({
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       certificate_name =
         Prop.computed __resource_type __resource_id
           "certificate_name";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       custom_domain =
         Prop.computed __resource_type __resource_id "custom_domain";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       origin = Prop.computed __resource_type __resource_id "origin";
       ttl = Prop.computed __resource_type __resource_id "ttl";
     }
      : t)
  in
  __resource_attributes
