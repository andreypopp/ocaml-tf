(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_connection_iam_policy = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_bigquery_connection_iam_policy *)

let google_bigquery_connection_iam_policy ?id ?location ?project
    ~connection_id ~policy_data __resource_id =
  let __resource_type = "google_bigquery_connection_iam_policy" in
  let __resource =
    { connection_id; id; location; policy_data; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_connection_iam_policy __resource);
  ()
