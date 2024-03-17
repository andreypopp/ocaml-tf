(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_usage_export_bucket__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_project_usage_export_bucket__timeouts *)

type google_project_usage_export_bucket = {
  bucket_name : string prop;  (** The bucket to store reports in. *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]
      (** A prefix for the reports, for instance, the project name. *)
  project : string prop option; [@option]
      (** The project to set the export bucket on. If it is not provided, the provider project is used. *)
  timeouts : google_project_usage_export_bucket__timeouts option;
}
[@@deriving yojson_of]
(** google_project_usage_export_bucket *)

type t = {
  bucket_name : string prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

let google_project_usage_export_bucket ?id ?prefix ?project ?timeouts
    ~bucket_name __resource_id =
  let __resource_type = "google_project_usage_export_bucket" in
  let __resource =
    ({ bucket_name; id; prefix; project; timeouts }
      : google_project_usage_export_bucket)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_usage_export_bucket __resource);
  let __resource_attributes =
    ({
       bucket_name =
         Prop.computed __resource_type __resource_id "bucket_name";
       id = Prop.computed __resource_type __resource_id "id";
       prefix = Prop.computed __resource_type __resource_id "prefix";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
