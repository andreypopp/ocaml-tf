(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_web_analytics_rule__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_web_analytics_rule__timeouts *)

type cloudflare_web_analytics_rule = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  host : string;  (** The host to apply the rule to. *)
  inclusive : bool;
      (** Whether the rule includes or excludes the matched traffic from being measured in Web Analytics. *)
  is_paused : bool;  (** Whether the rule is paused or not. *)
  paths : string list;  (** A list of paths to apply the rule to. *)
  ruleset_id : string;
      (** The Web Analytics ruleset id. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : cloudflare_web_analytics_rule__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Rule resource. *)

let cloudflare_web_analytics_rule ?timeouts ~account_id ~host
    ~inclusive ~is_paused ~paths ~ruleset_id __resource_id =
  let __resource_type = "cloudflare_web_analytics_rule" in
  let __resource =
    {
      account_id;
      host;
      inclusive;
      is_paused;
      paths;
      ruleset_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web_analytics_rule __resource);
  ()
