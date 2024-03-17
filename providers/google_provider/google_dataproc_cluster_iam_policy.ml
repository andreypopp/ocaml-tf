(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster_iam_policy = {
  cluster : string;  (** cluster *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_policy *)

let google_dataproc_cluster_iam_policy ?id ?project ?region ~cluster
    ~policy_data __resource_id =
  let __resource_type = "google_dataproc_cluster_iam_policy" in
  let __resource = { cluster; id; policy_data; project; region } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster_iam_policy __resource);
  ()
