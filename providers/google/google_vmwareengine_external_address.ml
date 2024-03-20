(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vmwareengine_external_address = {
  description : string prop option; [@option]
      (** User-provided description for this resource. *)
  id : string prop option; [@option]  (** id *)
  internal_ip : string prop;
      (** The internal IP address of a workload VM. *)
  name : string prop;  (** The ID of the external IP Address. *)
  parent : string prop;
      (** The resource name of the private cloud to create a new external address in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_external_address *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_external_address ?description ?id ?timeouts
    ~internal_ip ~name ~parent () :
    google_vmwareengine_external_address =
  { description; id; internal_ip; name; parent; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  external_ip : string prop;
  id : string prop;
  internal_ip : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~internal_ip ~name ~parent __id =
  let __type = "google_vmwareengine_external_address" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       external_ip = Prop.computed __type __id "external_ip";
       id = Prop.computed __type __id "id";
       internal_ip = Prop.computed __type __id "internal_ip";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_external_address
        (google_vmwareengine_external_address ?description ?id
           ?timeouts ~internal_ip ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~internal_ip ~name
    ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~internal_ip ~name ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
