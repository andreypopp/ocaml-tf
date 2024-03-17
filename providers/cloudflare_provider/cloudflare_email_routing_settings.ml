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

type t = {
  created : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
  skip_wizard : bool prop;
  status : string prop;
  tag : string prop;
  zone_id : string prop;
}

let cloudflare_email_routing_settings ?id ?skip_wizard ~enabled
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_email_routing_settings" in
  let __resource =
    ({ enabled; id; skip_wizard; zone_id }
      : cloudflare_email_routing_settings)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_settings __resource);
  let __resource_attributes =
    ({
       created =
         Prop.computed __resource_type __resource_id "created";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       modified =
         Prop.computed __resource_type __resource_id "modified";
       name = Prop.computed __resource_type __resource_id "name";
       skip_wizard =
         Prop.computed __resource_type __resource_id "skip_wizard";
       status = Prop.computed __resource_type __resource_id "status";
       tag = Prop.computed __resource_type __resource_id "tag";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
