(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type routing_vpcs = { uri : string prop  (** uri *) }
[@@deriving yojson_of]

type google_network_connectivity_hub = {
  description : string prop option; [@option]
      (** An optional description of the hub. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  name : string prop;
      (** Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}` *)
  project : string prop option; [@option]
      (** The project for the resource *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_connectivity_hub *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_hub ?description ?id ?labels ?project
    ?timeouts ~name () : google_network_connectivity_hub =
  { description; id; labels; name; project; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  routing_vpcs : routing_vpcs list prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  unique_id : string prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~name __id =
  let __type = "google_network_connectivity_hub" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       routing_vpcs = Prop.computed __type __id "routing_vpcs";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       unique_id = Prop.computed __type __id "unique_id";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_connectivity_hub
        (google_network_connectivity_hub ?description ?id ?labels
           ?project ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
