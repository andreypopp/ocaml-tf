(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_loss_prevention_stored_info_type__dictionary__cloud_storage_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_stored_info_type__dictionary__word_list = {
  words : string list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** List of words or phrases to search for. *)

type google_data_loss_prevention_stored_info_type__dictionary = {
  cloud_storage_path :
    google_data_loss_prevention_stored_info_type__dictionary__cloud_storage_path
    list;
  word_list :
    google_data_loss_prevention_stored_info_type__dictionary__word_list
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__field = {
  name : string;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Designated field in the BigQuery table. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__table = {
  dataset_id : string;  (** The dataset ID of the table. *)
  project_id : string;
      (** The Google Cloud Platform project ID of the project containing the table. *)
  table_id : string;  (** The name of the table. *)
}
[@@deriving yojson_of]
(** Field in a BigQuery table where each cell represents a dictionary phrase. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field = {
  field :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__field
    list;
  table :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__table
    list;
}
[@@deriving yojson_of]
(** Field in a BigQuery table where each cell represents a dictionary phrase. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__cloud_storage_file_set = {
  url : string;
      (** The url, in the format 'gs://<bucket>/<path>'. Trailing wildcard in the path is allowed. *)
}
[@@deriving yojson_of]
(** Set of files containing newline-delimited lists of dictionary phrases. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__output_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary = {
  big_query_field :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field
    list;
  cloud_storage_file_set :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary__cloud_storage_file_set
    list;
  output_path :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary__output_path
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_stored_info_type__regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_stored_info_type__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_loss_prevention_stored_info_type__timeouts *)

type google_data_loss_prevention_stored_info_type = {
  description : string option; [@option]
      (** A description of the info type. *)
  display_name : string option; [@option]
      (** User set display name of the info type. *)
  parent : string;
      (** The parent of the info type in any of the following formats:

* 'projects/{{project}}'
* 'projects/{{project}}/locations/{{location}}'
* 'organizations/{{organization_id}}'
* 'organizations/{{organization_id}}/locations/{{location}}' *)
  dictionary :
    google_data_loss_prevention_stored_info_type__dictionary list;
  large_custom_dictionary :
    google_data_loss_prevention_stored_info_type__large_custom_dictionary
    list;
  regex : google_data_loss_prevention_stored_info_type__regex list;
  timeouts :
    google_data_loss_prevention_stored_info_type__timeouts option;
}
[@@deriving yojson_of]
(** google_data_loss_prevention_stored_info_type *)

let google_data_loss_prevention_stored_info_type ?description
    ?display_name ?timeouts ~parent ~dictionary
    ~large_custom_dictionary ~regex __resource_id =
  let __resource_type =
    "google_data_loss_prevention_stored_info_type"
  in
  let __resource =
    {
      description;
      display_name;
      parent;
      dictionary;
      large_custom_dictionary;
      regex;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_loss_prevention_stored_info_type
       __resource);
  ()
