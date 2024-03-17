(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_argo = {
  id : string prop option; [@option]  (** id *)
  smart_routing : string prop option; [@option]
      (** Whether smart routing is enabled. Available values: `on`, `off`. *)
  tiered_caching : string prop option; [@option]
      (** Whether tiered caching is enabled. Available values: `on`, `off`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Cloudflare Argo controls the routing to your origin and tiered
caching options to speed up your website browsing experience.
 *)

type t = {
  id : string prop;
  smart_routing : string prop;
  tiered_caching : string prop;
  zone_id : string prop;
}

let cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_argo" in
  let __resource =
    ({ id; smart_routing; tiered_caching; zone_id }
      : cloudflare_argo)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_argo __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       smart_routing =
         Prop.computed __resource_type __resource_id "smart_routing";
       tiered_caching =
         Prop.computed __resource_type __resource_id "tiered_caching";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
