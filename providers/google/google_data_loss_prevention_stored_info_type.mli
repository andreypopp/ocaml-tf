(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_loss_prevention_stored_info_type__dictionary__cloud_storage_path

type google_data_loss_prevention_stored_info_type__dictionary__word_list

type google_data_loss_prevention_stored_info_type__dictionary

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__field

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field__table

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__big_query_field

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__cloud_storage_file_set

type google_data_loss_prevention_stored_info_type__large_custom_dictionary__output_path

type google_data_loss_prevention_stored_info_type__large_custom_dictionary

type google_data_loss_prevention_stored_info_type__regex
type google_data_loss_prevention_stored_info_type__timeouts
type google_data_loss_prevention_stored_info_type

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  stored_info_type_id : string prop;
}

val google_data_loss_prevention_stored_info_type :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?stored_info_type_id:string prop ->
  ?timeouts:google_data_loss_prevention_stored_info_type__timeouts ->
  parent:string prop ->
  dictionary:
    google_data_loss_prevention_stored_info_type__dictionary list ->
  large_custom_dictionary:
    google_data_loss_prevention_stored_info_type__large_custom_dictionary
    list ->
  regex:google_data_loss_prevention_stored_info_type__regex list ->
  string ->
  t
