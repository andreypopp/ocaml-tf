(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_disk_resource_policy_attachment = {
  disk : string prop;
      (** The name of the disk in which the resource policies are attached to. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource policy to be attached to the disk for scheduling snapshot
creation. Do not specify the self link. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** A reference to the zone where the disk resides. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_resource_policy_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_disk_resource_policy_attachment ?id ?project ?zone
    ?timeouts ~disk ~name () :
    google_compute_disk_resource_policy_attachment =
  { disk; id; name; project; zone; timeouts }

type t = {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ?timeouts ~disk ~name __id =
  let __type = "google_compute_disk_resource_policy_attachment" in
  let __attrs =
    ({
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk_resource_policy_attachment
        (google_compute_disk_resource_policy_attachment ?id ?project
           ?zone ?timeouts ~disk ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ?timeouts ~disk ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ?timeouts ~disk ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
