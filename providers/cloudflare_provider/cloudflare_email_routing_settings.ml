(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_email_routing_settings = {
  enabled : bool;
      (** State of the zone settings for Email Routing. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource for managing Email Routing settings.
 *)

let cloudflare_email_routing_settings ~enabled ~zone_id __resource_id
    =
  let __resource_type = "cloudflare_email_routing_settings" in
  let __resource = { enabled; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_settings __resource);
  ()
