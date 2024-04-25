(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__delete_marker_replication

val rule__delete_marker_replication :
  status:string prop -> unit -> rule__delete_marker_replication

type rule__destination__access_control_translation

val rule__destination__access_control_translation :
  owner:string prop ->
  unit ->
  rule__destination__access_control_translation

type rule__destination__encryption_configuration

val rule__destination__encryption_configuration :
  replica_kms_key_id:string prop ->
  unit ->
  rule__destination__encryption_configuration

type rule__destination__metrics__event_threshold

val rule__destination__metrics__event_threshold :
  minutes:float prop ->
  unit ->
  rule__destination__metrics__event_threshold

type rule__destination__metrics

val rule__destination__metrics :
  ?event_threshold:rule__destination__metrics__event_threshold list ->
  status:string prop ->
  unit ->
  rule__destination__metrics

type rule__destination__replication_time__time

val rule__destination__replication_time__time :
  minutes:float prop ->
  unit ->
  rule__destination__replication_time__time

type rule__destination__replication_time

val rule__destination__replication_time :
  status:string prop ->
  time:rule__destination__replication_time__time list ->
  unit ->
  rule__destination__replication_time

type rule__destination

val rule__destination :
  ?account:string prop ->
  ?storage_class:string prop ->
  ?access_control_translation:
    rule__destination__access_control_translation list ->
  ?encryption_configuration:
    rule__destination__encryption_configuration list ->
  ?metrics:rule__destination__metrics list ->
  ?replication_time:rule__destination__replication_time list ->
  bucket:string prop ->
  unit ->
  rule__destination

type rule__existing_object_replication

val rule__existing_object_replication :
  status:string prop -> unit -> rule__existing_object_replication

type rule__filter__and

val rule__filter__and :
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  rule__filter__and

type rule__filter__tag

val rule__filter__tag :
  key:string prop -> value:string prop -> unit -> rule__filter__tag

type rule__filter

val rule__filter :
  ?prefix:string prop ->
  ?and_:rule__filter__and list ->
  ?tag:rule__filter__tag list ->
  unit ->
  rule__filter

type rule__source_selection_criteria__replica_modifications

val rule__source_selection_criteria__replica_modifications :
  status:string prop ->
  unit ->
  rule__source_selection_criteria__replica_modifications

type rule__source_selection_criteria__sse_kms_encrypted_objects

val rule__source_selection_criteria__sse_kms_encrypted_objects :
  status:string prop ->
  unit ->
  rule__source_selection_criteria__sse_kms_encrypted_objects

type rule__source_selection_criteria

val rule__source_selection_criteria :
  ?replica_modifications:
    rule__source_selection_criteria__replica_modifications list ->
  ?sse_kms_encrypted_objects:
    rule__source_selection_criteria__sse_kms_encrypted_objects list ->
  unit ->
  rule__source_selection_criteria

type rule

val rule :
  ?id:string prop ->
  ?prefix:string prop ->
  ?priority:float prop ->
  ?delete_marker_replication:rule__delete_marker_replication list ->
  ?existing_object_replication:rule__existing_object_replication list ->
  ?filter:rule__filter list ->
  ?source_selection_criteria:rule__source_selection_criteria list ->
  status:string prop ->
  destination:rule__destination list ->
  unit ->
  rule

type aws_s3_bucket_replication_configuration

val aws_s3_bucket_replication_configuration :
  ?id:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  role:string prop ->
  rule:rule list ->
  unit ->
  aws_s3_bucket_replication_configuration

val yojson_of_aws_s3_bucket_replication_configuration :
  aws_s3_bucket_replication_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  id : string prop;
  role : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  role:string prop ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  role:string prop ->
  rule:rule list ->
  string ->
  t Tf_core.resource
