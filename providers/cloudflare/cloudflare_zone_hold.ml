(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone_hold = {
  hold : bool prop;  (** Enablement status of the zone hold. *)
  hold_after : string prop option; [@option]
      (** The RFC3339 compatible timestamp when to automatically re-enable the zone hold. *)
  id : string prop option; [@option]  (** id *)
  include_subdomains : bool prop option; [@option]
      (** Whether to extend to block any subdomain of the given zone. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone Hold resource that prevents adding
the hostname to another account for use.
 *)

let cloudflare_zone_hold ?hold_after ?id ?include_subdomains ~hold
    ~zone_id () : cloudflare_zone_hold =
  { hold; hold_after; id; include_subdomains; zone_id }

type t = {
  hold : bool prop;
  hold_after : string prop;
  id : string prop;
  include_subdomains : bool prop;
  zone_id : string prop;
}

let make ?hold_after ?id ?include_subdomains ~hold ~zone_id __id =
  let __type = "cloudflare_zone_hold" in
  let __attrs =
    ({
       hold = Prop.computed __type __id "hold";
       hold_after = Prop.computed __type __id "hold_after";
       id = Prop.computed __type __id "id";
       include_subdomains =
         Prop.computed __type __id "include_subdomains";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_hold
        (cloudflare_zone_hold ?hold_after ?id ?include_subdomains
           ~hold ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?hold_after ?id ?include_subdomains ~hold
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?hold_after ?id ?include_subdomains ~hold ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
