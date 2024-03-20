(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_integration_connectors_endpoint_attachment = {
  description : string prop option; [@option]
      (** Description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location in which Endpoint Attachment needs to be created. *)
  name : string prop;
      (** Name of Endpoint Attachment needs to be created. *)
  project : string prop option; [@option]  (** project *)
  service_attachment : string prop;
      (** The path of the service attachment. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_integration_connectors_endpoint_attachment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_integration_connectors_endpoint_attachment ?description
    ?id ?labels ?project ?timeouts ~location ~name
    ~service_attachment () :
    google_integration_connectors_endpoint_attachment =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    service_attachment;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  endpoint_ip : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_attachment : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~location ~name
    ~service_attachment __id =
  let __type = "google_integration_connectors_endpoint_attachment" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint_ip = Prop.computed __type __id "endpoint_ip";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_attachment =
         Prop.computed __type __id "service_attachment";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integration_connectors_endpoint_attachment
        (google_integration_connectors_endpoint_attachment
           ?description ?id ?labels ?project ?timeouts ~location
           ~name ~service_attachment ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name ~service_attachment __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~location ~name
      ~service_attachment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
