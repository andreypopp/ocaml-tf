(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_firewall_rule = {
  action : string;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `allow`, `js_challenge`, `managed_challenge`, `log`, `bypass`. *)
  description : string option; [@option]
      (** A description of the rule to help identify it. *)
  filter_id : string;
      (** The identifier of the Filter to use for determining if the Firewall Rule should be triggered. *)
  paused : bool option; [@option]
      (** Whether this filter based firewall rule is currently paused. *)
  priority : float option; [@option]
      (** The priority of the rule to allow control of processing order. A lower number indicates high priority. If not provided, any rules with a priority will be sequenced before those without. *)
  products : string list option; [@option]
      (** List of products to bypass for a request when the bypass action is used. Available values: `zoneLockdown`, `uaBlock`, `bic`, `hot`, `securityLevel`, `rateLimit`, `waf`. *)
  zone_id : string;
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

let cloudflare_firewall_rule ?description ?paused ?priority ?products
    ~action ~filter_id ~zone_id __resource_id =
  let __resource_type = "cloudflare_firewall_rule" in
  let __resource =
    {
      action;
      description;
      filter_id;
      paused;
      priority;
      products;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_firewall_rule __resource);
  ()