(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_log_view__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_log_view__timeouts *)

type google_logging_log_view = {
  bucket : string prop;  (** The bucket of the resource *)
  description : string prop option; [@option]
      (** Describes this view. *)
  filter : string prop option; [@option]
      (** Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE(projects/myproject) AND resource.type = gce_instance AND LOG_ID(stdout) *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. *)
  name : string prop;
      (** The resource name of the view. For example: \'projects/my-project/locations/global/buckets/my-bucket/views/my-view\' *)
  parent : string prop option; [@option]
      (** The parent of the resource. *)
  timeouts : google_logging_log_view__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_log_view *)

type t = {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let google_logging_log_view ?description ?filter ?id ?location
    ?parent ?timeouts ~bucket ~name __resource_id =
  let __resource_type = "google_logging_log_view" in
  let __resource =
    ({
       bucket;
       description;
       filter;
       id;
       location;
       name;
       parent;
       timeouts;
     }
      : google_logging_log_view)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_log_view __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
