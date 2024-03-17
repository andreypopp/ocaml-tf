(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_email_routing_settings = {
  enabled : bool prop;
      (** State of the zone settings for Email Routing. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  skip_wizard : bool prop option; [@option]
      (** Flag to check if the user skipped the configuration wizard. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource for managing Email Routing settings.
 *)

let cloudflare_email_routing_settings ?id ?skip_wizard ~enabled
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_email_routing_settings" in
  let __resource = { enabled; id; skip_wizard; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_settings __resource);
  ()
