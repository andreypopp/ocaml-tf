(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_container_azure_client = {
  application_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_azure_client) -> ()

let yojson_of_google_container_azure_client =
  (function
   | {
       application_id = v_application_id;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       tenant_id = v_tenant_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : google_container_azure_client ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_azure_client

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
