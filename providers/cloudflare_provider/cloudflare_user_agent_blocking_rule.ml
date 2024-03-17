(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_user_agent_blocking_rule__configuration = {
  target : string;
      (** The configuration target for this rule. You must set the target to ua for User Agent Blocking rules. *)
  value : string;
      (** The exact user agent string to match. This value will be compared to the received User-Agent HTTP header value. *)
}
[@@deriving yojson_of]
(** The configuration object for the current rule. *)

type cloudflare_user_agent_blocking_rule = {
  description : string;  (** An informative summary of the rule. *)
  mode : string;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `js_challenge`, `managed_challenge`. *)
  paused : bool;
      (** When true, indicates that the rule is currently paused. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  configuration :
    cloudflare_user_agent_blocking_rule__configuration list;
}
[@@deriving yojson_of]
(** Provides a resource to manage User Agent Blocking Rules.
 *)

let cloudflare_user_agent_blocking_rule ~description ~mode ~paused
    ~zone_id ~configuration __resource_id =
  let __resource_type = "cloudflare_user_agent_blocking_rule" in
  let __resource =
    { description; mode; paused; zone_id; configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_user_agent_blocking_rule __resource);
  ()
