(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange_iam_member__condition *)

type google_bigquery_analytics_hub_data_exchange_iam_member = {
  data_exchange_id : string;  (** data_exchange_id *)
  member : string;  (** member *)
  role : string;  (** role *)
  condition :
    google_bigquery_analytics_hub_data_exchange_iam_member__condition
    list;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange_iam_member *)

let google_bigquery_analytics_hub_data_exchange_iam_member
    ~data_exchange_id ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_data_exchange_iam_member"
  in
  let __resource = { data_exchange_id; member; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_data_exchange_iam_member
       __resource);
  ()
