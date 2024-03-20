(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_logpull_retention = {
  enabled : bool prop;
      (** Whether you wish to retain logs or not. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Allows management of the Logpull Retention settings used to control whether or not to retain HTTP request logs. *)

let cloudflare_logpull_retention ?id ~enabled ~zone_id () :
    cloudflare_logpull_retention =
  { enabled; id; zone_id }

type t = {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_logpull_retention" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_logpull_retention
        (cloudflare_logpull_retention ?id ~enabled ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~enabled ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
