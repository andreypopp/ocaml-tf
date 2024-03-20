(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_firewall_rule = {
  action : string prop;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `allow`, `js_challenge`, `managed_challenge`, `log`, `bypass`. *)
  description : string prop option; [@option]
      (** A description of the rule to help identify it. *)
  filter_id : string prop;
      (** The identifier of the Filter to use for determining if the Firewall Rule should be triggered. *)
  id : string prop option; [@option]  (** id *)
  paused : bool prop option; [@option]
      (** Whether this filter based firewall rule is currently paused. *)
  priority : float prop option; [@option]
      (** The priority of the rule to allow control of processing order. A lower number indicates high priority. If not provided, any rules with a priority will be sequenced before those without. *)
  products : string prop list option; [@option]
      (** List of products to bypass for a request when the bypass action is used. Available values: `zoneLockdown`, `uaBlock`, `bic`, `hot`, `securityLevel`, `rateLimit`, `waf`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Define Firewall rules using filter expressions for more control over
how traffic is matched to the rule. A filter expression permits
selecting traffic by multiple criteria allowing greater freedom in
rule creation.

Filter expressions needs to be created first before using Firewall
Rule.
 *)

let cloudflare_firewall_rule ?description ?id ?paused ?priority
    ?products ~action ~filter_id ~zone_id () :
    cloudflare_firewall_rule =
  {
    action;
    description;
    filter_id;
    id;
    paused;
    priority;
    products;
    zone_id;
  }

type t = {
  action : string prop;
  description : string prop;
  filter_id : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  products : string list prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?priority ?products ~action
    ~filter_id ~zone_id __id =
  let __type = "cloudflare_firewall_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       filter_id = Prop.computed __type __id "filter_id";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       priority = Prop.computed __type __id "priority";
       products = Prop.computed __type __id "products";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_firewall_rule
        (cloudflare_firewall_rule ?description ?id ?paused ?priority
           ?products ~action ~filter_id ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?priority ?products
    ~action ~filter_id ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?priority ?products ~action
      ~filter_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
