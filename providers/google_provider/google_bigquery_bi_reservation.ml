(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_bi_reservation__preferred_tables = {
  dataset_id : string option; [@option]
      (** The ID of the dataset in the above project. *)
  project_id : string option; [@option]
      (** The assigned project ID of the project. *)
  table_id : string option; [@option]
      (** The ID of the table in the above dataset. *)
}
[@@deriving yojson_of]
(** Preferred tables to use BI capacity for. *)

type google_bigquery_bi_reservation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_bi_reservation__timeouts *)

type google_bigquery_bi_reservation = {
  id : string option; [@option]  (** id *)
  location : string;  (** LOCATION_DESCRIPTION *)
  project : string option; [@option]  (** project *)
  size : float option; [@option]
      (** Size of a reservation, in bytes. *)
  preferred_tables :
    google_bigquery_bi_reservation__preferred_tables list;
  timeouts : google_bigquery_bi_reservation__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_bi_reservation *)

let google_bigquery_bi_reservation ?id ?project ?size ?timeouts
    ~location ~preferred_tables __resource_id =
  let __resource_type = "google_bigquery_bi_reservation" in
  let __resource =
    { id; location; project; size; preferred_tables; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_bi_reservation __resource);
  ()
