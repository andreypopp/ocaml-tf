(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_logging_log_view__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_log_view__timeouts *)

type google_logging_log_view = {
  bucket : string;  (** The bucket of the resource *)
  description : string option; [@option]  (** Describes this view. *)
  filter : string option; [@option]
      (** Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE(projects/myproject) AND resource.type = gce_instance AND LOG_ID(stdout) *)
  name : string;
      (** The resource name of the view. For example: \'projects/my-project/locations/global/buckets/my-bucket/views/my-view\' *)
  timeouts : google_logging_log_view__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_log_view *)

let google_logging_log_view ?description ?filter ?timeouts ~bucket
    ~name __resource_id =
  let __resource_type = "google_logging_log_view" in
  let __resource = { bucket; description; filter; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_log_view __resource);
  ()
