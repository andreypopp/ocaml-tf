(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rules = {
  action : string prop;
      (** Action to perform in the ruleset rule. Available values: `bypass_waiting_room`. *)
  description : string prop option; [@option]
      (** Brief summary of the waiting room rule and its intended use. *)
  expression : string prop;
      (** Criteria for an HTTP request to trigger the waiting room rule action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Waiting Room Rules Docs](https://developers.cloudflare.com/waiting-room/additional-options/waiting-room-rules/bypass-rules/). *)
  status : string prop option; [@option]
      (** Whether the rule is enabled or disabled. Available values: `enabled`, `disabled`. *)
}
[@@deriving yojson_of]
(** List of rules to apply to the ruleset. *)

type cloudflare_waiting_room_rules = {
  id : string prop option; [@option]  (** id *)
  waiting_room_id : string prop;
      (** The Waiting Room ID the rules should apply to. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  rules : rules list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Waiting Room Rules resource. *)

let rules ?description ?status ~action ~expression () : rules =
  { action; description; expression; status }

let cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
    ~rules () : cloudflare_waiting_room_rules =
  { id; waiting_room_id; zone_id; rules }

type t = {
  id : string prop;
  waiting_room_id : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~waiting_room_id ~zone_id ~rules
    __resource_id =
  let __resource_type = "cloudflare_waiting_room_rules" in
  let __resource =
    cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
      ~rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_waiting_room_rules __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       waiting_room_id =
         Prop.computed __resource_type __resource_id
           "waiting_room_id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
