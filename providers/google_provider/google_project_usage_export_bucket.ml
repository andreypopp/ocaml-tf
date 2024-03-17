(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_usage_export_bucket__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_project_usage_export_bucket__timeouts *)

type google_project_usage_export_bucket = {
  bucket_name : string;  (** The bucket to store reports in. *)
  id : string option; [@option]  (** id *)
  prefix : string option; [@option]
      (** A prefix for the reports, for instance, the project name. *)
  project : string option; [@option]
      (** The project to set the export bucket on. If it is not provided, the provider project is used. *)
  timeouts : google_project_usage_export_bucket__timeouts option;
}
[@@deriving yojson_of]
(** google_project_usage_export_bucket *)

let google_project_usage_export_bucket ?id ?prefix ?project ?timeouts
    ~bucket_name __resource_id =
  let __resource_type = "google_project_usage_export_bucket" in
  let __resource = { bucket_name; id; prefix; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_usage_export_bucket __resource);
  ()
