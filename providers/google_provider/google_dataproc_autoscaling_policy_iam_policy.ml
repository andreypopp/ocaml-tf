(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_policy = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  policy_data : string;  (** policy_data *)
  policy_id : string;  (** policy_id *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_policy *)

let google_dataproc_autoscaling_policy_iam_policy ?id ?location
    ?project ~policy_data ~policy_id __resource_id =
  let __resource_type =
    "google_dataproc_autoscaling_policy_iam_policy"
  in
  let __resource =
    { id; location; policy_data; policy_id; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_autoscaling_policy_iam_policy
       __resource);
  ()
