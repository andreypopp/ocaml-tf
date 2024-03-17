(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_metastore_service_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service_iam_binding__condition *)

type google_dataproc_metastore_service_iam_binding = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  service_id : string;  (** service_id *)
  condition :
    google_dataproc_metastore_service_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service_iam_binding *)

let google_dataproc_metastore_service_iam_binding ?id ?location
    ?project ~members ~role ~service_id ~condition __resource_id =
  let __resource_type =
    "google_dataproc_metastore_service_iam_binding"
  in
  let __resource =
    { id; location; members; project; role; service_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_metastore_service_iam_binding
       __resource);
  ()
