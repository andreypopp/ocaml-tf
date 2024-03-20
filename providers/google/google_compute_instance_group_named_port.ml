(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_instance_group_named_port = {
  group : string prop;  (** The name of the instance group. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name for this named port. The name must be 1-63 characters
long, and comply with RFC1035. *)
  port : float prop;
      (** The port number, which can be a value between 1 and 65535. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** The zone of the instance group. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_named_port *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_instance_group_named_port ?id ?project ?zone
    ?timeouts ~group ~name ~port () :
    google_compute_instance_group_named_port =
  { group; id; name; port; project; zone; timeouts }

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ?timeouts ~group ~name ~port __id =
  let __type = "google_compute_instance_group_named_port" in
  let __attrs =
    ({
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group_named_port
        (google_compute_instance_group_named_port ?id ?project ?zone
           ?timeouts ~group ~name ~port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ?timeouts ~group ~name
    ~port __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ?timeouts ~group ~name ~port __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
