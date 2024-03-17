(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_app_engine_firewall_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_firewall_rule__timeouts *)

type google_app_engine_firewall_rule = {
  action : string;
      (** The action to take if this rule matches. Possible values: [UNSPECIFIED_ACTION, ALLOW, DENY] *)
  description : string option; [@option]
      (** An optional string description of this rule. *)
  priority : float option; [@option]
      (** A positive integer that defines the order of rule evaluation.
Rules with the lowest priority are evaluated first.

A default rule at priority Int32.MaxValue matches all IPv4 and
IPv6 traffic when no previous rule matches. Only the action of
this rule can be modified by the user. *)
  source_range : string;
      (** IP address or range, defined using CIDR notation, of requests that this rule applies to. *)
  timeouts : google_app_engine_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_firewall_rule *)

let google_app_engine_firewall_rule ?description ?priority ?timeouts
    ~action ~source_range __resource_id =
  let __resource_type = "google_app_engine_firewall_rule" in
  let __resource =
    { action; description; priority; source_range; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_firewall_rule __resource);
  ()
