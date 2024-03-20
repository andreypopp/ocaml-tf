(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_reservation_assignment = {
  assignee : string prop;
      (** The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456. *)
  id : string prop option; [@option]  (** id *)
  job_type : string prop;
      (** Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY *)
  location : string prop option; [@option]
      (** The location for the resource *)
  project : string prop option; [@option]
      (** The project for the resource *)
  reservation : string prop;  (** The reservation for the resource *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_reservation_assignment *)

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
