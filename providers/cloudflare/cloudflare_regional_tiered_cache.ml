(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_regional_tiered_cache = {
  id : string prop option; [@option]  (** id *)
  value : string prop;
      (** Value of the Regional Tiered Cache zone setting. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Instructs Cloudflare to check a regional hub data center on the way to your upper tier.
This can help improve performance for smart and custom tiered cache topologies.
 *)

type t = {
  id : string prop;
  value : string prop;
  zone_id : string prop;
}

let cloudflare_regional_tiered_cache ?id ~value ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_regional_tiered_cache" in
  let __resource =
    ({ id; value; zone_id } : cloudflare_regional_tiered_cache)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_regional_tiered_cache __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       value = Prop.computed __resource_type __resource_id "value";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
