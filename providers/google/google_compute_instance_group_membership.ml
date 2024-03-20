(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_instance_group_membership = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** An instance being added to the InstanceGroup *)
  instance_group : string prop;
      (** Represents an Instance Group resource name that the instance belongs to. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** A reference to the zone where the instance group resides. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_membership *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_instance_group_membership ?id ?project ?zone
    ?timeouts ~instance ~instance_group () :
    google_compute_instance_group_membership =
  { id; instance; instance_group; project; zone; timeouts }

type t = {
  id : string prop;
  instance : string prop;
  instance_group : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ?timeouts ~instance ~instance_group __id
    =
  let __type = "google_compute_instance_group_membership" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       instance_group = Prop.computed __type __id "instance_group";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group_membership
        (google_compute_instance_group_membership ?id ?project ?zone
           ?timeouts ~instance ~instance_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ?timeouts ~instance
    ~instance_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ?timeouts ~instance ~instance_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
