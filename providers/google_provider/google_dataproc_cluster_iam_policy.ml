(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster_iam_policy = {
  cluster : string;  (** cluster *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_policy *)

let google_dataproc_cluster_iam_policy ~cluster ~policy_data
    __resource_id =
  let __resource_type = "google_dataproc_cluster_iam_policy" in
  let __resource = { cluster; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster_iam_policy __resource);
  ()
