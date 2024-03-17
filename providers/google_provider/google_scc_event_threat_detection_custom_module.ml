(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_event_threat_detection_custom_module__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_scc_event_threat_detection_custom_module__timeouts *)

type google_scc_event_threat_detection_custom_module = {
  config : string prop;
      (** Config for the module. For the resident module, its config value is defined at this level.
For the inherited module, its config value is inherited from the ancestor module. *)
  display_name : string prop option; [@option]
      (** The human readable name to be displayed for the module. *)
  enablement_state : string prop;
      (** The state of enablement for the module at the given level of the hierarchy. Possible values: [ENABLED, DISABLED] *)
  id : string prop option; [@option]  (** id *)
  organization : string prop;
      (** Numerical ID of the parent organization. *)
  type_ : string prop; [@key "type"]
      (** Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP. *)
  timeouts :
    google_scc_event_threat_detection_custom_module__timeouts option;
}
[@@deriving yojson_of]
(** google_scc_event_threat_detection_custom_module *)

let google_scc_event_threat_detection_custom_module ?display_name ?id
    ?timeouts ~config ~enablement_state ~organization ~type_
    __resource_id =
  let __resource_type =
    "google_scc_event_threat_detection_custom_module"
  in
  let __resource =
    {
      config;
      display_name;
      enablement_state;
      id;
      organization;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_event_threat_detection_custom_module
       __resource);
  ()
