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
    () : cloudflare_custom_hostname_fallback_origin =
  { id; origin; zone_id }

type t = {
  id : string prop;
  origin : string prop;
  status : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~origin ~zone_id __resource_id =
  let __resource_type =
    "cloudflare_custom_hostname_fallback_origin"
  in
  let __resource =
    cloudflare_custom_hostname_fallback_origin ?id ~origin ~zone_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_hostname_fallback_origin __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       origin = Prop.computed __resource_type __resource_id "origin";
       status = Prop.computed __resource_type __resource_id "status";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
