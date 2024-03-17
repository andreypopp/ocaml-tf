(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_reservation__autoscale = {
  current_slots : float;
      (** The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots]. *)
  max_slots : float option; [@option]
      (** Number of slots to be scaled when needed. *)
}
[@@deriving yojson_of]
(** The configuration parameters for the auto scaling feature. *)

type google_bigquery_reservation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_reservation__timeouts *)

type google_bigquery_reservation = {
  concurrency : float option; [@option]
      (** Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. *)
  ignore_idle_slots : bool option; [@option]
      (** If false, any query using this reservation will use idle slots from other reservations within
the same admin project. If true, a query using this reservation will execute with the slot
capacity specified above at most. *)
  location : string option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  multi_region_auxiliary : bool option; [@option]
      (** Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. *)
  name : string;
      (** The name of the reservation. This field must only contain alphanumeric characters or dash. *)
  slot_capacity : float;
      (** Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false. *)
  autoscale : google_bigquery_reservation__autoscale list;
  timeouts : google_bigquery_reservation__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_reservation *)

let google_bigquery_reservation ?concurrency ?ignore_idle_slots
    ?location ?multi_region_auxiliary ?timeouts ~name ~slot_capacity
    ~autoscale __resource_id =
  let __resource_type = "google_bigquery_reservation" in
  let __resource =
    {
      concurrency;
      ignore_idle_slots;
      location;
      multi_region_auxiliary;
      name;
      slot_capacity;
      autoscale;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_reservation __resource);
  ()
