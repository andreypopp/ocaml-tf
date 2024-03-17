(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_linked_dataset__bigquery_dataset = {
  dataset_id : string;
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_logging_linked_dataset__timeouts *)

type google_logging_linked_dataset = {
  bucket : string;
      (** The bucket to which the linked dataset is attached. *)
  description : string option; [@option]
      (** Describes this link. The maximum length of the description is 8000 characters. *)
  id : string option; [@option]  (** id *)
  link_id : string;  (** The id of the linked dataset. *)
  location : string option; [@option]
      (** The location of the linked dataset. *)
  parent : string option; [@option]
      (** The parent of the linked dataset. *)
  bigquery_dataset :
    google_logging_linked_dataset__bigquery_dataset list;
  timeouts : google_logging_linked_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_linked_dataset *)

let google_logging_linked_dataset ?description ?id ?location ?parent
    ?timeouts ~bucket ~link_id ~bigquery_dataset __resource_id =
  let __resource_type = "google_logging_linked_dataset" in
  let __resource =
    {
      bucket;
      description;
      id;
      link_id;
      location;
      parent;
      bigquery_dataset;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_linked_dataset __resource);
  ()
