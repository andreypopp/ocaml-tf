(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type state = { code : string prop  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_membership_binding = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this Membership binding.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** Location of the membership *)
  membership_binding_id : string prop;
      (** The client-provided identifier of the membership binding. *)
  membership_id : string prop;  (** Id of the membership *)
  project : string prop option; [@option]  (** project *)
  scope : string prop;
      (** A Workspace resource name in the format
'projects/*/locations/*/scopes/*'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_binding *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_membership_binding ?id ?labels ?project ?timeouts
    ~location ~membership_binding_id ~membership_id ~scope () :
    google_gke_hub_membership_binding =
  {
    id;
    labels;
    location;
    membership_binding_id;
    membership_id;
    project;
    scope;
    timeouts;
  }

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_binding_id : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ?labels ?project ?timeouts ~location
    ~membership_binding_id ~membership_id ~scope __id =
  let __type = "google_gke_hub_membership_binding" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       membership_binding_id =
         Prop.computed __type __id "membership_binding_id";
       membership_id = Prop.computed __type __id "membership_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership_binding
        (google_gke_hub_membership_binding ?id ?labels ?project
           ?timeouts ~location ~membership_binding_id ~membership_id
           ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?timeouts ~location
    ~membership_binding_id ~membership_id ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?timeouts ~location
      ~membership_binding_id ~membership_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
