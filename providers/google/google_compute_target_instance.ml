(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_target_instance = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The Compute instance VM handling traffic for this target instance.
Accepts the instance self-link, relative path
(e.g. 'projects/project/zones/zone/instances/instance') or name. If
name is given, the zone will default to the given zone or
the provider-default zone and the project will default to the
provider-level project. *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  nat_policy : string prop option; [@option]
      (** NAT option controlling how IPs are NAT'ed to the instance.
Currently only NO_NAT (default value) is supported. Default value: NO_NAT Possible values: [NO_NAT] *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** URL of the zone where the target instance resides. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_instance *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_target_instance ?description ?id ?nat_policy
    ?project ?zone ?timeouts ~instance ~name () :
    google_compute_target_instance =
  {
    description;
    id;
    instance;
    name;
    nat_policy;
    project;
    zone;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  nat_policy : string prop;
  project : string prop;
  self_link : string prop;
  zone : string prop;
}

let make ?description ?id ?nat_policy ?project ?zone ?timeouts
    ~instance ~name __id =
  let __type = "google_compute_target_instance" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       name = Prop.computed __type __id "name";
       nat_policy = Prop.computed __type __id "nat_policy";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_instance
        (google_compute_target_instance ?description ?id ?nat_policy
           ?project ?zone ?timeouts ~instance ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?nat_policy ?project ?zone
    ?timeouts ~instance ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?nat_policy ?project ?zone ?timeouts
      ~instance ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
