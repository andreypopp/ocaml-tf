(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_run_v2_job_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_cloud_run_v2_job_iam_binding__condition *)

type google_cloud_run_v2_job_iam_binding = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  members : string list;  (** members *)
  name : string;  (** name *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition : google_cloud_run_v2_job_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_cloud_run_v2_job_iam_binding *)

let google_cloud_run_v2_job_iam_binding ?id ?location ?project
    ~members ~name ~role ~condition __resource_id =
  let __resource_type = "google_cloud_run_v2_job_iam_binding" in
  let __resource =
    { id; location; members; name; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_v2_job_iam_binding __resource);
  ()
