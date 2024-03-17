(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_linked_dataset__bigquery_dataset = {
  dataset_id : string prop;
      (** Output only. The full resource name of the BigQuery dataset. The DATASET_ID will match the ID
of the link, so the link must match the naming restrictions of BigQuery datasets
(alphanumeric characters and underscores only). The dataset will have a resource path of
bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET_ID] *)
}
[@@deriving yojson_of]
(** The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
Views corresponding to the LogViews in the bucket. *)

type google_logging_linked_dataset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_logging_linked_dataset__timeouts *)

type google_logging_linked_dataset = {
  bucket : string prop;
      (** The bucket to which the linked dataset is attached. *)
  description : string prop option; [@option]
      (** Describes this link. The maximum length of the description is 8000 characters. *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop;  (** The id of the linked dataset. *)
  location : string prop option; [@option]
      (** The location of the linked dataset. *)
  parent : string prop option; [@option]
      (** The parent of the linked dataset. *)
  bigquery_dataset :
    google_logging_linked_dataset__bigquery_dataset list;
  timeouts : google_logging_linked_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_linked_dataset *)

type t = {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  lifecycle_state : string prop;
  link_id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
}

let google_logging_linked_dataset ?description ?id ?location ?parent
    ?timeouts ~bucket ~link_id ~bigquery_dataset __resource_id =
  let __resource_type = "google_logging_linked_dataset" in
  let __resource =
    ({
       bucket;
       description;
       id;
       link_id;
       location;
       parent;
       bigquery_dataset;
       timeouts;
     }
      : google_logging_linked_dataset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_linked_dataset __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       lifecycle_state =
         Prop.computed __resource_type __resource_id
           "lifecycle_state";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
     }
      : t)
  in
  __resource_attributes
