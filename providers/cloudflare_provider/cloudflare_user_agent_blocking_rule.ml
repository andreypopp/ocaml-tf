(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_user_agent_blocking_rule__configuration = {
  target : string prop;
      (** The configuration target for this rule. You must set the target to ua for User Agent Blocking rules. *)
  value : string prop;
      (** The exact user agent string to match. This value will be compared to the received User-Agent HTTP header value. *)
}
[@@deriving yojson_of]
(** The configuration object for the current rule. *)

type cloudflare_user_agent_blocking_rule = {
  description : string prop;
      (** An informative summary of the rule. *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `js_challenge`, `managed_challenge`. *)
  paused : bool prop;
      (** When true, indicates that the rule is currently paused. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  configuration :
    cloudflare_user_agent_blocking_rule__configuration list;
}
[@@deriving yojson_of]
(** Provides a resource to manage User Agent Blocking Rules.
 *)

let cloudflare_user_agent_blocking_rule ?id ~description ~mode
    ~paused ~zone_id ~configuration __resource_id =
  let __resource_type = "cloudflare_user_agent_blocking_rule" in
  let __resource =
    { description; id; mode; paused; zone_id; configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_user_agent_blocking_rule __resource);
  ()
