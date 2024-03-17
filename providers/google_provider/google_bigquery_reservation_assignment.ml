(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_reservation_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_bigquery_reservation_assignment__timeouts *)

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
  timeouts : google_bigquery_reservation_assignment__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_reservation_assignment *)

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

let google_bigquery_reservation_assignment ?id ?location ?project
    ?timeouts ~assignee ~job_type ~reservation __resource_id =
  let __resource_type = "google_bigquery_reservation_assignment" in
  let __resource =
    ({
       assignee;
       id;
       job_type;
       location;
       project;
       reservation;
       timeouts;
     }
      : google_bigquery_reservation_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_reservation_assignment __resource);
  let __resource_attributes =
    ({
       assignee =
         Prop.computed __resource_type __resource_id "assignee";
       id = Prop.computed __resource_type __resource_id "id";
       job_type =
         Prop.computed __resource_type __resource_id "job_type";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reservation =
         Prop.computed __resource_type __resource_id "reservation";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
