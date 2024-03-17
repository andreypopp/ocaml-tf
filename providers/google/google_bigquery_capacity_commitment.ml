(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_capacity_commitment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_capacity_commitment__timeouts *)

type google_bigquery_capacity_commitment = {
  capacity_commitment_id : string prop option; [@option]
      (** The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
or merged. *)
  edition : string prop option; [@option]
      (** The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS *)
  enforce_single_admin_project_per_org : string prop option;
      [@option]
      (** If true, fail the request if another project in the organization has a capacity commitment. *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  plan : string prop;
      (** Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan *)
  project : string prop option; [@option]  (** project *)
  renewal_plan : string prop option; [@option]
      (** The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans. *)
  slot_count : float prop;
      (** Number of slots in this commitment. *)
  timeouts : google_bigquery_capacity_commitment__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_capacity_commitment *)

type t = {
  capacity_commitment_id : string prop;
  commitment_end_time : string prop;
  commitment_start_time : string prop;
  edition : string prop;
  enforce_single_admin_project_per_org : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  renewal_plan : string prop;
  slot_count : float prop;
  state : string prop;
}

let google_bigquery_capacity_commitment ?capacity_commitment_id
    ?edition ?enforce_single_admin_project_per_org ?id ?location
    ?project ?renewal_plan ?timeouts ~plan ~slot_count __resource_id
    =
  let __resource_type = "google_bigquery_capacity_commitment" in
  let __resource =
    ({
       capacity_commitment_id;
       edition;
       enforce_single_admin_project_per_org;
       id;
       location;
       plan;
       project;
       renewal_plan;
       slot_count;
       timeouts;
     }
      : google_bigquery_capacity_commitment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_capacity_commitment __resource);
  let __resource_attributes =
    ({
       capacity_commitment_id =
         Prop.computed __resource_type __resource_id
           "capacity_commitment_id";
       commitment_end_time =
         Prop.computed __resource_type __resource_id
           "commitment_end_time";
       commitment_start_time =
         Prop.computed __resource_type __resource_id
           "commitment_start_time";
       edition =
         Prop.computed __resource_type __resource_id "edition";
       enforce_single_admin_project_per_org =
         Prop.computed __resource_type __resource_id
           "enforce_single_admin_project_per_org";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       plan = Prop.computed __resource_type __resource_id "plan";
       project =
         Prop.computed __resource_type __resource_id "project";
       renewal_plan =
         Prop.computed __resource_type __resource_id "renewal_plan";
       slot_count =
         Prop.computed __resource_type __resource_id "slot_count";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
