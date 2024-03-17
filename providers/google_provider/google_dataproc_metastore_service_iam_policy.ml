(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_metastore_service_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  service_id : string prop;  (** service_id *)
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service_iam_policy *)

let google_dataproc_metastore_service_iam_policy ?id ?location
    ?project ~policy_data ~service_id __resource_id =
  let __resource_type =
    "google_dataproc_metastore_service_iam_policy"
  in
  let __resource =
    { id; location; policy_data; project; service_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_metastore_service_iam_policy
       __resource);
  ()
