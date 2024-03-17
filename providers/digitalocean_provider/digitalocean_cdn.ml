(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_cdn = {
  custom_domain : string option; [@option]
      (** fully qualified domain name (FQDN) for custom subdomain, (requires certificate_id) *)
  origin : string;
      (** fully qualified domain name (FQDN) for the origin server *)
}
[@@deriving yojson_of]
(** digitalocean_cdn *)

let digitalocean_cdn ?custom_domain ~origin __resource_id =
  let __resource_type = "digitalocean_cdn" in
  let __resource = { custom_domain; origin } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_cdn __resource);
  ()
