(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_waiting_room_rules__rules = {
  action : string;
      (** Action to perform in the ruleset rule. Available values: `bypass_waiting_room`. *)
  description : string option; [@option]
      (** Brief summary of the waiting room rule and its intended use. *)
  expression : string;
      (** Criteria for an HTTP request to trigger the waiting room rule action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Waiting Room Rules Docs](https://developers.cloudflare.com/waiting-room/additional-options/waiting-room-rules/bypass-rules/). *)
  id : string;  (** Unique rule identifier. *)
  status : string option; [@option]
      (** Whether the rule is enabled or disabled. Available values: `enabled`, `disabled`. *)
  version : string;  (** Version of the waiting room rule. *)
}
[@@deriving yojson_of]
(** List of rules to apply to the ruleset. *)

type cloudflare_waiting_room_rules = {
  id : string option; [@option]  (** id *)
  waiting_room_id : string;
      (** The Waiting Room ID the rules should apply to. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  rules : cloudflare_waiting_room_rules__rules list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Waiting Room Rules resource. *)

let cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
    ~rules __resource_id =
  let __resource_type = "cloudflare_waiting_room_rules" in
  let __resource = { id; waiting_room_id; zone_id; rules } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_waiting_room_rules __resource);
  ()
