(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_networks = {
  network : string prop;  (** network *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_vmwareengine_network = {
  description : string prop option; [@option]
      (** User-provided description for this VMware Engine network. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location where the VMwareEngineNetwork should reside. *)
  name : string prop;  (** The ID of the VMwareEngineNetwork. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop; [@key "type"]
      (** VMware Engine network type. Possible values: [LEGACY, STANDARD] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network ?description ?id ?project ?timeouts
    ~location ~name ~type_ () : google_vmwareengine_network =
  { description; id; location; name; project; type_; timeouts }

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vpc_networks : vpc_networks list prop;
}

let make ?description ?id ?project ?timeouts ~location ~name ~type_
    __id =
  let __type = "google_vmwareengine_network" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       vpc_networks = Prop.computed __type __id "vpc_networks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network
        (google_vmwareengine_network ?description ?id ?project
           ?timeouts ~location ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~location ~name ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
