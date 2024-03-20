(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~waiting_room_id ~zone_id ~rules __id =
  let __type = "cloudflare_waiting_room_rules" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       waiting_room_id = Prop.computed __type __id "waiting_room_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room_rules
        (cloudflare_waiting_room_rules ?id ~waiting_room_id ~zone_id
           ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~waiting_room_id ~zone_id ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ~waiting_room_id ~zone_id ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
