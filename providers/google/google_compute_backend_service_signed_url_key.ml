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

type google_compute_backend_service_signed_url_key = {
  backend_service : string prop;
  id : string prop option; [@option]
  key_value : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_backend_service_signed_url_key) -> ()

let yojson_of_google_compute_backend_service_signed_url_key =
  (function
   | {
       backend_service = v_backend_service;
       id = v_id;
       key_value = v_key_value;
       name = v_name;
       project = v_project;
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
         let arg = yojson_of_prop yojson_of_string v_key_value in
         ("key_value", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_backend_service_signed_url_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_backend_service_signed_url_key

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_backend_service_signed_url_key ?id ?project
    ?timeouts ~backend_service ~key_value ~name () :
    google_compute_backend_service_signed_url_key =
  { backend_service; id; key_value; name; project; timeouts }

type t = {
  backend_service : string prop;
  id : string prop;
  key_value : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~backend_service ~key_value ~name
    __id =
  let __type = "google_compute_backend_service_signed_url_key" in
  let __attrs =
    ({
       backend_service = Prop.computed __type __id "backend_service";
       id = Prop.computed __type __id "id";
       key_value = Prop.computed __type __id "key_value";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_backend_service_signed_url_key
        (google_compute_backend_service_signed_url_key ?id ?project
           ?timeouts ~backend_service ~key_value ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~backend_service
    ~key_value ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~backend_service ~key_value ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
