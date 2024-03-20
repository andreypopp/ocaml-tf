(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed = { domains : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : managed) -> ()

let yojson_of_managed =
  (function
   | { domains = v_domains } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_domains
         in
         ("domains", arg) :: bnds
       in
       `Assoc bnds
    : managed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed

[@@@deriving.end]

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

type google_compute_managed_ssl_certificate = {
  certificate_id : float prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  managed : managed list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_managed_ssl_certificate) -> ()

let yojson_of_google_compute_managed_ssl_certificate =
  (function
   | {
       certificate_id = v_certificate_id;
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       type_ = v_type_;
       managed = v_managed;
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
         let arg = yojson_of_list yojson_of_managed v_managed in
         ("managed", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         match v_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_managed_ssl_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_managed_ssl_certificate

[@@@deriving.end]

let managed ~domains () : managed = { domains }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_managed_ssl_certificate ?certificate_id
    ?description ?id ?name ?project ?type_ ?timeouts ~managed () :
    google_compute_managed_ssl_certificate =
  {
    certificate_id;
    description;
    id;
    name;
    project;
    type_;
    managed;
    timeouts;
  }

type t = {
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subject_alternative_names : string list prop;
  type_ : string prop;
}

let make ?certificate_id ?description ?id ?name ?project ?type_
    ?timeouts ~managed __id =
  let __type = "google_compute_managed_ssl_certificate" in
  let __attrs =
    ({
       certificate_id = Prop.computed __type __id "certificate_id";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       subject_alternative_names =
         Prop.computed __type __id "subject_alternative_names";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_managed_ssl_certificate
        (google_compute_managed_ssl_certificate ?certificate_id
           ?description ?id ?name ?project ?type_ ?timeouts ~managed
           ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_id ?description ?id ?name
    ?project ?type_ ?timeouts ~managed __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_id ?description ?id ?name ?project ?type_
      ?timeouts ~managed __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
