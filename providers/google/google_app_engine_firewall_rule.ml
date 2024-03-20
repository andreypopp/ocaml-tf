(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_app_engine_firewall_rule = {
  action : string prop;
      (** The action to take if this rule matches. Possible values: [UNSPECIFIED_ACTION, ALLOW, DENY] *)
  description : string prop option; [@option]
      (** An optional string description of this rule. *)
  id : string prop option; [@option]  (** id *)
  priority : float prop option; [@option]
      (** A positive integer that defines the order of rule evaluation.
Rules with the lowest priority are evaluated first.

A default rule at priority Int32.MaxValue matches all IPv4 and
IPv6 traffic when no previous rule matches. Only the action of
this rule can be modified by the user. *)
  project : string prop option; [@option]  (** project *)
  source_range : string prop;
      (** IP address or range, defined using CIDR notation, of requests that this rule applies to. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_firewall_rule *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_firewall_rule ?description ?id ?priority
    ?project ?timeouts ~action ~source_range () :
    google_app_engine_firewall_rule =
  {
    action;
    description;
    id;
    priority;
    project;
    source_range;
    timeouts;
  }

type t = {
  action : string prop;
  description : string prop;
  id : string prop;
  priority : float prop;
  project : string prop;
  source_range : string prop;
}

let make ?description ?id ?priority ?project ?timeouts ~action
    ~source_range __id =
  let __type = "google_app_engine_firewall_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       source_range = Prop.computed __type __id "source_range";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_firewall_rule
        (google_app_engine_firewall_rule ?description ?id ?priority
           ?project ?timeouts ~action ~source_range ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?priority ?project ?timeouts
    ~action ~source_range __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?priority ?project ?timeouts ~action
      ~source_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
