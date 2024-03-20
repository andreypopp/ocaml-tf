(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id () :
    cloudflare_argo =
  { id; smart_routing; tiered_caching; zone_id }

type t = {
  id : string prop;
  smart_routing : string prop;
  tiered_caching : string prop;
  zone_id : string prop;
}

let make ?id ?smart_routing ?tiered_caching ~zone_id __id =
  let __type = "cloudflare_argo" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       smart_routing = Prop.computed __type __id "smart_routing";
       tiered_caching = Prop.computed __type __id "tiered_caching";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_argo
        (cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?smart_routing ?tiered_caching ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?smart_routing ?tiered_caching ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
