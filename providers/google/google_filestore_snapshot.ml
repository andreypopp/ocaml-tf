(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_filestore_snapshot = {
  description : string prop option; [@option]
      (** A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The resource name of the filestore instance. *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location of the instance. This can be a region for ENTERPRISE tier instances. *)
  name : string prop;
      (** The resource name of the snapshot. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_snapshot *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_filestore_snapshot ?description ?id ?labels ?project
    ?timeouts ~instance ~location ~name () :
    google_filestore_snapshot =
  {
    description;
    id;
    instance;
    labels;
    location;
    name;
    project;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  filesystem_used_bytes : string prop;
  id : string prop;
  instance : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?project ?timeouts ~instance
    ~location ~name __id =
  let __type = "google_filestore_snapshot" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       filesystem_used_bytes =
         Prop.computed __type __id "filesystem_used_bytes";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_filestore_snapshot
        (google_filestore_snapshot ?description ?id ?labels ?project
           ?timeouts ~instance ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~instance ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~instance
      ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
