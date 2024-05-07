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

type google_compute_ssl_certificate = {
  certificate : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  private_key : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_ssl_certificate) -> ()

let yojson_of_google_compute_ssl_certificate =
  (function
   | {
       certificate = v_certificate;
       description = v_description;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       private_key = v_private_key;
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
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_ssl_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_ssl_certificate

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_ssl_certificate ?description ?id ?name
    ?name_prefix ?project ?timeouts ~certificate ~private_key () :
    google_compute_ssl_certificate =
  {
    certificate;
    description;
    id;
    name;
    name_prefix;
    private_key;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate : string prop;
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  private_key : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?description ?id ?name ?name_prefix ?project ?timeouts
    ~certificate ~private_key __id =
  let __type = "google_compute_ssl_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       certificate_id = Prop.computed __type __id "certificate_id";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       private_key = Prop.computed __type __id "private_key";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ssl_certificate
        (google_compute_ssl_certificate ?description ?id ?name
           ?name_prefix ?project ?timeouts ~certificate ~private_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?project
    ?timeouts ~certificate ~private_key __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?project ?timeouts
      ~certificate ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
