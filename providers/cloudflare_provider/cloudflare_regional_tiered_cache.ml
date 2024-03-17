(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_regional_tiered_cache = {
  value : string;
      (** Value of the Regional Tiered Cache zone setting. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Instructs Cloudflare to check a regional hub data center on the way to your upper tier.
This can help improve performance for smart and custom tiered cache topologies.
 *)

let cloudflare_regional_tiered_cache ~value ~zone_id __resource_id =
  let __resource_type = "cloudflare_regional_tiered_cache" in
  let __resource = { value; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_regional_tiered_cache __resource);
  ()
