(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type preferred_tables = {
  dataset_id : string prop option; [@option]
      (** The ID of the dataset in the above project. *)
  project_id : string prop option; [@option]
      (** The assigned project ID of the project. *)
  table_id : string prop option; [@option]
      (** The ID of the table in the above dataset. *)
}
[@@deriving yojson_of]
(** Preferred tables to use BI capacity for. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_bi_reservation = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** LOCATION_DESCRIPTION *)
  project : string prop option; [@option]  (** project *)
  size : float prop option; [@option]
      (** Size of a reservation, in bytes. *)
  preferred_tables : preferred_tables list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_bi_reservation *)

let preferred_tables ?dataset_id ?project_id ?table_id () :
    preferred_tables =
  { dataset_id; project_id; table_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_bi_reservation ?id ?project ?size ?timeouts
    ~location ~preferred_tables () : google_bigquery_bi_reservation =
  { id; location; project; size; preferred_tables; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  update_time : string prop;
}

let make ?id ?project ?size ?timeouts ~location ~preferred_tables
    __id =
  let __type = "google_bigquery_bi_reservation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       size = Prop.computed __type __id "size";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_bi_reservation
        (google_bigquery_bi_reservation ?id ?project ?size ?timeouts
           ~location ~preferred_tables ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?size ?timeouts ~location
    ~preferred_tables __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?size ?timeouts ~location ~preferred_tables
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
