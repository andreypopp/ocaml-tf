(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?project ?size ?timeouts ~location
    ~preferred_tables __resource_id =
  let __resource_type = "google_bigquery_bi_reservation" in
  let __resource =
    google_bigquery_bi_reservation ?id ?project ?size ?timeouts
      ~location ~preferred_tables ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_bi_reservation __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       size = Prop.computed __resource_type __resource_id "size";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
