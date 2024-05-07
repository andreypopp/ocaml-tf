(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_integration_connectors_endpoint_attachment = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  service_attachment : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_integration_connectors_endpoint_attachment) -> ()

let yojson_of_google_integration_connectors_endpoint_attachment =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       service_attachment = v_service_attachment;
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
         let arg =
           yojson_of_prop yojson_of_string v_service_attachment
         in
         ("service_attachment", arg) :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_integration_connectors_endpoint_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_integration_connectors_endpoint_attachment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_integration_connectors_endpoint_attachment ?description
    ?id ?labels ?project ?timeouts ~location ~name
    ~service_attachment () :
    google_integration_connectors_endpoint_attachment =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    service_attachment;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  endpoint_ip : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_attachment : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~location ~name
    ~service_attachment __id =
  let __type = "google_integration_connectors_endpoint_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint_ip = Prop.computed __type __id "endpoint_ip";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_attachment =
         Prop.computed __type __id "service_attachment";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integration_connectors_endpoint_attachment
        (google_integration_connectors_endpoint_attachment
           ?description ?id ?labels ?project ?timeouts ~location
           ~name ~service_attachment ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name ~service_attachment __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~location ~name
      ~service_attachment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
