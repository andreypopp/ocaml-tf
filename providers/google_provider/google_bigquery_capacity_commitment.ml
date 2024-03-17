(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_capacity_commitment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_capacity_commitment__timeouts *)

type google_bigquery_capacity_commitment = {
  capacity_commitment_id : string option; [@option]
      (** The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
or merged. *)
  edition : string option; [@option]
      (** The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS *)
  enforce_single_admin_project_per_org : string option; [@option]
      (** If true, fail the request if another project in the organization has a capacity commitment. *)
  location : string option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  plan : string;
      (** Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan *)
  renewal_plan : string option; [@option]
      (** The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans. *)
  slot_count : float;  (** Number of slots in this commitment. *)
  timeouts : google_bigquery_capacity_commitment__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_capacity_commitment *)

let google_bigquery_capacity_commitment ?capacity_commitment_id
    ?edition ?enforce_single_admin_project_per_org ?location
    ?renewal_plan ?timeouts ~plan ~slot_count __resource_id =
  let __resource_type = "google_bigquery_capacity_commitment" in
  let __resource =
    {
      capacity_commitment_id;
      edition;
      enforce_single_admin_project_per_org;
      location;
      plan;
      renewal_plan;
      slot_count;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_capacity_commitment __resource);
  ()
