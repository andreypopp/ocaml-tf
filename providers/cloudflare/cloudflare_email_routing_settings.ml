(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~zone_id () : cloudflare_email_routing_settings =
  { enabled; id; skip_wizard; zone_id }

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

let make ?id ?skip_wizard ~enabled ~zone_id __id =
  let __type = "cloudflare_email_routing_settings" in
  let __attrs =
    ({
       created = Prop.computed __type __id "created";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       modified = Prop.computed __type __id "modified";
       name = Prop.computed __type __id "name";
       skip_wizard = Prop.computed __type __id "skip_wizard";
       status = Prop.computed __type __id "status";
       tag = Prop.computed __type __id "tag";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_settings
        (cloudflare_email_routing_settings ?id ?skip_wizard ~enabled
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?skip_wizard ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?skip_wizard ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
