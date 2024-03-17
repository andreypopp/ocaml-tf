(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_custom_hostname_fallback_origin = {
  id : string prop option; [@option]  (** id *)
  origin : string prop;
      (** Hostname you intend to fallback requests to. Origin must be a proxied A/AAAA/CNAME DNS record within Clouldflare. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom hostname fallback origin resource. *)

let cloudflare_custom_hostname_fallback_origin ?id ~origin ~zone_id
    __resource_id =
  let __resource_type =
    "cloudflare_custom_hostname_fallback_origin"
  in
  let __resource = { id; origin; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_hostname_fallback_origin __resource);
  ()
