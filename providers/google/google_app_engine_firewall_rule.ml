(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_firewall_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_firewall_rule__timeouts *)

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
  timeouts : google_app_engine_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_firewall_rule *)

type t = {
  action : string prop;
  description : string prop;
  id : string prop;
  priority : float prop;
  project : string prop;
  source_range : string prop;
}

let google_app_engine_firewall_rule ?description ?id ?priority
    ?project ?timeouts ~action ~source_range __resource_id =
  let __resource_type = "google_app_engine_firewall_rule" in
  let __resource =
    ({
       action;
       description;
       id;
       priority;
       project;
       source_range;
       timeouts;
     }
      : google_app_engine_firewall_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_firewall_rule __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       project =
         Prop.computed __resource_type __resource_id "project";
       source_range =
         Prop.computed __resource_type __resource_id "source_range";
     }
      : t)
  in
  __resource_attributes
