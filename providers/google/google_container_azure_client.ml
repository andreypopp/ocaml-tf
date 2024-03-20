(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_container_azure_client = {
  application_id : string prop;
      (** The Azure Active Directory Application ID. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  tenant_id : string prop;
      (** The Azure Active Directory Tenant ID. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_client *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_container_azure_client ?id ?project ?timeouts
    ~application_id ~location ~name ~tenant_id () :
    google_container_azure_client =
  {
    application_id;
    id;
    location;
    name;
    project;
    tenant_id;
    timeouts;
  }

type t = {
  application_id : string prop;
  certificate : string prop;
  create_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  tenant_id : string prop;
  uid : string prop;
}

let make ?id ?project ?timeouts ~application_id ~location ~name
    ~tenant_id __id =
  let __type = "google_container_azure_client" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       certificate = Prop.computed __type __id "certificate";
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       tenant_id = Prop.computed __type __id "tenant_id";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_azure_client
        (google_container_azure_client ?id ?project ?timeouts
           ~application_id ~location ~name ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~application_id
    ~location ~name ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~application_id ~location ~name
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
