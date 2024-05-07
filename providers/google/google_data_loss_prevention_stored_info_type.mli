(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dictionary__cloud_storage_path

val dictionary__cloud_storage_path :
  path:string prop -> unit -> dictionary__cloud_storage_path

type dictionary__word_list

val dictionary__word_list :
  words:string prop list -> unit -> dictionary__word_list

type dictionary

val dictionary :
  ?cloud_storage_path:dictionary__cloud_storage_path list ->
  ?word_list:dictionary__word_list list ->
  unit ->
  dictionary

type large_custom_dictionary__big_query_field__field

val large_custom_dictionary__big_query_field__field :
  name:string prop ->
  unit ->
  large_custom_dictionary__big_query_field__field

type large_custom_dictionary__big_query_field__table

val large_custom_dictionary__big_query_field__table :
  dataset_id:string prop ->
  project_id:string prop ->
  table_id:string prop ->
  unit ->
  large_custom_dictionary__big_query_field__table

type large_custom_dictionary__big_query_field

val large_custom_dictionary__big_query_field :
  field:large_custom_dictionary__big_query_field__field list ->
  table:large_custom_dictionary__big_query_field__table list ->
  unit ->
  large_custom_dictionary__big_query_field

type large_custom_dictionary__cloud_storage_file_set

val large_custom_dictionary__cloud_storage_file_set :
  url:string prop ->
  unit ->
  large_custom_dictionary__cloud_storage_file_set

type large_custom_dictionary__output_path

val large_custom_dictionary__output_path :
  path:string prop -> unit -> large_custom_dictionary__output_path

type large_custom_dictionary

val large_custom_dictionary :
  ?big_query_field:large_custom_dictionary__big_query_field list ->
  ?cloud_storage_file_set:
    large_custom_dictionary__cloud_storage_file_set list ->
  output_path:large_custom_dictionary__output_path list ->
  unit ->
  large_custom_dictionary

type regex

val regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  regex

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_loss_prevention_stored_info_type

val google_data_loss_prevention_stored_info_type :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?stored_info_type_id:string prop ->
  ?dictionary:dictionary list ->
  ?large_custom_dictionary:large_custom_dictionary list ->
  ?regex:regex list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  unit ->
  google_data_loss_prevention_stored_info_type

val yojson_of_google_data_loss_prevention_stored_info_type :
  google_data_loss_prevention_stored_info_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  stored_info_type_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?stored_info_type_id:string prop ->
  ?dictionary:dictionary list ->
  ?large_custom_dictionary:large_custom_dictionary list ->
  ?regex:regex list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?stored_info_type_id:string prop ->
  ?dictionary:dictionary list ->
  ?large_custom_dictionary:large_custom_dictionary list ->
  ?regex:regex list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  string ->
  t Tf_core.resource
