(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_loss_prevention_stored_info_type__dictionary__cloud_storage_path = {
  path : string prop;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_stored_info_type__dictionary__word_list = {
  words : string prop list;
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
  name : string prop;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Designated field in the BigQuery table. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__table = {
  dataset_id : string prop;  (** The dataset ID of the table. *)
  project_id : string prop;
      (** The Google Cloud Platform project ID of the project containing the table. *)
  table_id : string prop;  (** The name of the table. *)
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
  url : string prop;
      (** The url, in the format 'gs://<bucket>/<path>'. Trailing wildcard in the path is allowed. *)
}
[@@deriving yojson_of]
(** Set of files containing newline-delimited lists of dictionary phrases. *)

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__output_path = {
  path : string prop;
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
  group_indexes : float prop list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string prop;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_stored_info_type__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_loss_prevention_stored_info_type__timeouts *)

type google_data_loss_prevention_stored_info_type = {
  description : string prop option; [@option]
      (** A description of the info type. *)
  display_name : string prop option; [@option]
      (** User set display name of the info type. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The parent of the info type in any of the following formats:

* 'projects/{{project}}'
* 'projects/{{project}}/locations/{{location}}'
* 'organizations/{{organization_id}}'
* 'organizations/{{organization_id}}/locations/{{location}}' *)
  stored_info_type_id : string prop option; [@option]
      (** The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
characters. Can be empty to allow the system to generate one. *)
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

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  stored_info_type_id : string prop;
}

let google_data_loss_prevention_stored_info_type ?description
    ?display_name ?id ?stored_info_type_id ?timeouts ~parent
    ~dictionary ~large_custom_dictionary ~regex __resource_id =
  let __resource_type =
    "google_data_loss_prevention_stored_info_type"
  in
  let __resource =
    ({
       description;
       display_name;
       id;
       parent;
       stored_info_type_id;
       dictionary;
       large_custom_dictionary;
       regex;
       timeouts;
     }
      : google_data_loss_prevention_stored_info_type)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_loss_prevention_stored_info_type
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       stored_info_type_id =
         Prop.computed __resource_type __resource_id
           "stored_info_type_id";
     }
      : t)
  in
  __resource_attributes
