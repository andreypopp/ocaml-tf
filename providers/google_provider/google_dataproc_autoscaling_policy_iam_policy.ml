(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataproc_autoscaling_policy_iam_policy = {
  policy_data : string;  (** policy_data *)
  policy_id : string;  (** policy_id *)
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_policy *)

let google_dataproc_autoscaling_policy_iam_policy ~policy_data
    ~policy_id __resource_id =
  let __resource_type =
    "google_dataproc_autoscaling_policy_iam_policy"
  in
  let __resource = { policy_data; policy_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_autoscaling_policy_iam_policy
       __resource);
  ()
