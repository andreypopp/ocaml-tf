(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_cdn = {
  certificate_id : string option; [@option]
      (** ID of a DigitalOcean managed TLS certificate for use with custom domains *)
  certificate_name : string option; [@option]
      (** certificate_name *)
  custom_domain : string option; [@option]
      (** fully qualified domain name (FQDN) for custom subdomain, (requires certificate_id) *)
  id : string option; [@option]  (** id *)
  origin : string;
      (** fully qualified domain name (FQDN) for the origin server *)
  ttl : float option; [@option]
      (** The amount of time the content is cached in the CDN *)
}
[@@deriving yojson_of]
(** digitalocean_cdn *)

let digitalocean_cdn ?certificate_id ?certificate_name ?custom_domain
    ?id ?ttl ~origin __resource_id =
  let __resource_type = "digitalocean_cdn" in
  let __resource =
    {
      certificate_id;
      certificate_name;
      custom_domain;
      id;
      origin;
      ttl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_cdn __resource);
  ()
