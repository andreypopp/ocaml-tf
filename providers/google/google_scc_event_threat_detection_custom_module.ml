(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_scc_event_threat_detection_custom_module *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_event_threat_detection_custom_module ?display_name ?id
    ?timeouts ~config ~enablement_state ~organization ~type_ () :
    google_scc_event_threat_detection_custom_module =
  {
    config;
    display_name;
    enablement_state;
    id;
    organization;
    type_;
    timeouts;
  }

type t = {
  config : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  organization : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?display_name ?id ?timeouts ~config ~enablement_state
    ~organization ~type_ __id =
  let __type = "google_scc_event_threat_detection_custom_module" in
  let __attrs =
    ({
       config = Prop.computed __type __id "config";
       display_name = Prop.computed __type __id "display_name";
       enablement_state =
         Prop.computed __type __id "enablement_state";
       id = Prop.computed __type __id "id";
       last_editor = Prop.computed __type __id "last_editor";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_event_threat_detection_custom_module
        (google_scc_event_threat_detection_custom_module
           ?display_name ?id ?timeouts ~config ~enablement_state
           ~organization ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~config
    ~enablement_state ~organization ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~config ~enablement_state
      ~organization ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
