(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_job_iam_policy = {
  job_id : string;  (** job_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_dataproc_job_iam_policy *)

let google_dataproc_job_iam_policy ~job_id ~policy_data __resource_id
    =
  let __resource_type = "google_dataproc_job_iam_policy" in
  let __resource = { job_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_job_iam_policy __resource);
  ()
