(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = {
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
  configuration : configuration list;
}
[@@deriving yojson_of]
(** Provides a resource to manage User Agent Blocking Rules.
 *)

let configuration ~target ~value () : configuration =
  { target; value }

let cloudflare_user_agent_blocking_rule ?id ~description ~mode
    ~paused ~zone_id ~configuration () :
    cloudflare_user_agent_blocking_rule =
  { description; id; mode; paused; zone_id; configuration }

type t = {
  description : string prop;
  id : string prop;
  mode : string prop;
  paused : bool prop;
  zone_id : string prop;
}

let make ?id ~description ~mode ~paused ~zone_id ~configuration __id
    =
  let __type = "cloudflare_user_agent_blocking_rule" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       paused = Prop.computed __type __id "paused";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_user_agent_blocking_rule
        (cloudflare_user_agent_blocking_rule ?id ~description ~mode
           ~paused ~zone_id ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~mode ~paused ~zone_id
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~description ~mode ~paused ~zone_id ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
