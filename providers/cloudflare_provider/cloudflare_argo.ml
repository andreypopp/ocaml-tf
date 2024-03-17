(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_argo = {
  id : string option; [@option]  (** id *)
  smart_routing : string option; [@option]
      (** Whether smart routing is enabled. Available values: `on`, `off`. *)
  tiered_caching : string option; [@option]
      (** Whether tiered caching is enabled. Available values: `on`, `off`. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Cloudflare Argo controls the routing to your origin and tiered
caching options to speed up your website browsing experience.
 *)

let cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_argo" in
  let __resource = { id; smart_routing; tiered_caching; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_argo __resource);
  ()
