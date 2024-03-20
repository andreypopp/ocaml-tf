(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type version_configs = {
  version : string prop;
      (** Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}. *)
}
[@@deriving yojson_of]
(** A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned. *)

type google_dialogflow_cx_environment = {
  description : string prop option; [@option]
      (** The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;
      (** The human-readable name of the environment (unique in an agent). Limit of 64 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The Agent to create an Environment for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  timeouts : timeouts option;
  version_configs : version_configs list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_environment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let version_configs ~version () : version_configs = { version }

let google_dialogflow_cx_environment ?description ?id ?parent
    ?timeouts ~display_name ~version_configs () :
    google_dialogflow_cx_environment =
  {
    description;
    display_name;
    id;
    parent;
    timeouts;
    version_configs;
  }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let make ?description ?id ?parent ?timeouts ~display_name
    ~version_configs __id =
  let __type = "google_dialogflow_cx_environment" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_environment
        (google_dialogflow_cx_environment ?description ?id ?parent
           ?timeouts ~display_name ~version_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?parent ?timeouts
    ~display_name ~version_configs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?parent ?timeouts ~display_name
      ~version_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
