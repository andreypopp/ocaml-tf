(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type nlu_settings = {
  classification_threshold : float prop;
      (** classification_threshold *)
  model_training_mode : string prop;  (** model_training_mode *)
  model_type : string prop;  (** model_type *)
}
[@@deriving yojson_of]

type google_dialogflow_cx_version = {
  description : string prop option; [@option]
      (** The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;
      (** The human-readable name of the version. Limit of 64 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The Flow to create an Version for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_version *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_version ?description ?id ?parent ?timeouts
    ~display_name () : google_dialogflow_cx_version =
  { description; display_name; id; parent; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  nlu_settings : nlu_settings list prop;
  parent : string prop;
  state : string prop;
}

let make ?description ?id ?parent ?timeouts ~display_name __id =
  let __type = "google_dialogflow_cx_version" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       nlu_settings = Prop.computed __type __id "nlu_settings";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_version
        (google_dialogflow_cx_version ?description ?id ?parent
           ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?parent ?timeouts
    ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?parent ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
