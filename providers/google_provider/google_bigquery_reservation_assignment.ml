(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_reservation_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_bigquery_reservation_assignment__timeouts *)

type google_bigquery_reservation_assignment = {
  assignee : string;
      (** The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456. *)
  job_type : string;
      (** Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY *)
  reservation : string;  (** The reservation for the resource *)
  timeouts : google_bigquery_reservation_assignment__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_reservation_assignment *)

let google_bigquery_reservation_assignment ?timeouts ~assignee
    ~job_type ~reservation __resource_id =
  let __resource_type = "google_bigquery_reservation_assignment" in
  let __resource = { assignee; job_type; reservation; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_reservation_assignment __resource);
  ()
