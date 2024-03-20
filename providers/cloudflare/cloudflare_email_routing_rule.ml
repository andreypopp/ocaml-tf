(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  type_ : string prop; [@key "type"]
      (** Type of action. Available values: `forward`, `worker`, `drop` *)
  value : string prop list option; [@option]
      (** Value to match on. Required for `type` of `literal`. *)
}
[@@deriving yojson_of]
(** Actions to take when a match is found. *)

type matcher = {
  field : string prop option; [@option]
      (** Field to match on. Required for `type` of `literal`. *)
  type_ : string prop; [@key "type"]
      (** Type of matcher. Available values: `literal`, `all` *)
  value : string prop option; [@option]
      (** Value to match on. Required for `type` of `literal`. *)
}
[@@deriving yojson_of]
(** Matching patterns to forward to your actions. *)

type cloudflare_email_routing_rule = {
  enabled : bool prop option; [@option]
      (** Whether the email routing rule is enabled. *)
  name : string prop;  (** Routing rule name. *)
  priority : float prop option; [@option]
      (** The priority of the email routing rule. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  action : action list;
  matcher : matcher list;
}
[@@deriving yojson_of]
(** The [Email Routing Rule](https://developers.cloudflare.com/email-routing/setup/email-routing-addresses/#email-rule-actions) resource allows you to create and manage email routing rules for a zone.
 *)

let action ?value ~type_ () : action = { type_; value }

let matcher ?field ?value ~type_ () : matcher =
  { field; type_; value }

let cloudflare_email_routing_rule ?enabled ?priority ~name ~zone_id
    ~action ~matcher () : cloudflare_email_routing_rule =
  { enabled; name; priority; zone_id; action; matcher }

type t = {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  tag : string prop;
  zone_id : string prop;
}

let make ?enabled ?priority ~name ~zone_id ~action ~matcher __id =
  let __type = "cloudflare_email_routing_rule" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       tag = Prop.computed __type __id "tag";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_rule
        (cloudflare_email_routing_rule ?enabled ?priority ~name
           ~zone_id ~action ~matcher ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?priority ~name ~zone_id ~action
    ~matcher __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?priority ~name ~zone_id ~action ~matcher __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
