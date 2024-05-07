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

type google_bigquery_reservation_assignment = {
  assignee : string prop;
  id : string prop option; [@option]
  job_type : string prop;
  location : string prop option; [@option]
  project : string prop option; [@option]
  reservation : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_reservation_assignment) -> ()

let yojson_of_google_bigquery_reservation_assignment =
  (function
   | {
       assignee = v_assignee;
       id = v_id;
       job_type = v_job_type;
       location = v_location;
       project = v_project;
       reservation = v_reservation;
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
         let arg = yojson_of_prop yojson_of_string v_reservation in
         ("reservation", arg) :: bnds
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_type in
         ("job_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_assignee in
         ("assignee", arg) :: bnds
       in
       `Assoc bnds
    : google_bigquery_reservation_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_reservation_assignment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_bigquery_reservation_assignment ?id ?location ?project
    ?timeouts ~assignee ~job_type ~reservation () :
    google_bigquery_reservation_assignment =
  {
    assignee;
    id;
    job_type;
    location;
    project;
    reservation;
    timeouts;
  }

type t = {
  tf_name : string;
  assignee : string prop;
  id : string prop;
  job_type : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reservation : string prop;
  state : string prop;
}

let make ?id ?location ?project ?timeouts ~assignee ~job_type
    ~reservation __id =
  let __type = "google_bigquery_reservation_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       assignee = Prop.computed __type __id "assignee";
       id = Prop.computed __type __id "id";
       job_type = Prop.computed __type __id "job_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reservation = Prop.computed __type __id "reservation";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_reservation_assignment
        (google_bigquery_reservation_assignment ?id ?location
           ?project ?timeouts ~assignee ~job_type ~reservation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ?timeouts ~assignee
    ~job_type ~reservation __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ?timeouts ~assignee ~job_type
      ~reservation __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
