(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type thing_group_indexing_configuration__custom_field

val thing_group_indexing_configuration__custom_field :
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  thing_group_indexing_configuration__custom_field

type thing_group_indexing_configuration__managed_field

val thing_group_indexing_configuration__managed_field :
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  thing_group_indexing_configuration__managed_field

type thing_group_indexing_configuration

val thing_group_indexing_configuration :
  thing_group_indexing_mode:string prop ->
  custom_field:thing_group_indexing_configuration__custom_field list ->
  managed_field:
    thing_group_indexing_configuration__managed_field list ->
  unit ->
  thing_group_indexing_configuration

type thing_indexing_configuration__custom_field

val thing_indexing_configuration__custom_field :
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  thing_indexing_configuration__custom_field

type thing_indexing_configuration__filter

val thing_indexing_configuration__filter :
  ?named_shadow_names:string prop list ->
  unit ->
  thing_indexing_configuration__filter

type thing_indexing_configuration__managed_field

val thing_indexing_configuration__managed_field :
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  thing_indexing_configuration__managed_field

type thing_indexing_configuration

val thing_indexing_configuration :
  ?device_defender_indexing_mode:string prop ->
  ?named_shadow_indexing_mode:string prop ->
  ?thing_connectivity_indexing_mode:string prop ->
  thing_indexing_mode:string prop ->
  custom_field:thing_indexing_configuration__custom_field list ->
  filter:thing_indexing_configuration__filter list ->
  managed_field:thing_indexing_configuration__managed_field list ->
  unit ->
  thing_indexing_configuration

type aws_iot_indexing_configuration

val aws_iot_indexing_configuration :
  ?id:string prop ->
  thing_group_indexing_configuration:
    thing_group_indexing_configuration list ->
  thing_indexing_configuration:thing_indexing_configuration list ->
  unit ->
  aws_iot_indexing_configuration

val yojson_of_aws_iot_indexing_configuration :
  aws_iot_indexing_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  thing_group_indexing_configuration:
    thing_group_indexing_configuration list ->
  thing_indexing_configuration:thing_indexing_configuration list ->
  string ->
  t
