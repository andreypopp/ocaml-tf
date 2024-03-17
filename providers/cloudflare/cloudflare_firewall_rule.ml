(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let cloudflare_firewall_rule ?description ?id ?paused ?priority
    ?products ~action ~filter_id ~zone_id __resource_id =
  let __resource_type = "cloudflare_firewall_rule" in
  let __resource =
    ({
       action;
       description;
       filter_id;
       id;
       paused;
       priority;
       products;
       zone_id;
     }
      : cloudflare_firewall_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_firewall_rule __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       description =
         Prop.computed __resource_type __resource_id "description";
       filter_id =
         Prop.computed __resource_type __resource_id "filter_id";
       id = Prop.computed __resource_type __resource_id "id";
       paused = Prop.computed __resource_type __resource_id "paused";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       products =
         Prop.computed __resource_type __resource_id "products";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
