(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataproc_metastore_service_iam_policy = {
  policy_data : string;  (** policy_data *)
  service_id : string;  (** service_id *)
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service_iam_policy *)

let google_dataproc_metastore_service_iam_policy ~policy_data
    ~service_id __resource_id =
  let __resource_type =
    "google_dataproc_metastore_service_iam_policy"
  in
  let __resource = { policy_data; service_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_metastore_service_iam_policy
       __resource);
  ()
