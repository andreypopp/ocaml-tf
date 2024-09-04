(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type on_exception_steps__copy_step_details__destination_file_location__efs_file_location

val on_exception_steps__copy_step_details__destination_file_location__efs_file_location :
  ?file_system_id:string prop ->
  ?path:string prop ->
  unit ->
  on_exception_steps__copy_step_details__destination_file_location__efs_file_location

type on_exception_steps__copy_step_details__destination_file_location__s3_file_location

val on_exception_steps__copy_step_details__destination_file_location__s3_file_location :
  ?bucket:string prop ->
  ?key:string prop ->
  unit ->
  on_exception_steps__copy_step_details__destination_file_location__s3_file_location

type on_exception_steps__copy_step_details__destination_file_location

val on_exception_steps__copy_step_details__destination_file_location :
  ?efs_file_location:
    on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    list ->
  ?s3_file_location:
    on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    list ->
  unit ->
  on_exception_steps__copy_step_details__destination_file_location

type on_exception_steps__copy_step_details

val on_exception_steps__copy_step_details :
  ?name:string prop ->
  ?overwrite_existing:string prop ->
  ?source_file_location:string prop ->
  ?destination_file_location:
    on_exception_steps__copy_step_details__destination_file_location
    list ->
  unit ->
  on_exception_steps__copy_step_details

type on_exception_steps__custom_step_details

val on_exception_steps__custom_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  ?target:string prop ->
  ?timeout_seconds:float prop ->
  unit ->
  on_exception_steps__custom_step_details

type on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location

val on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location :
  ?file_system_id:string prop ->
  ?path:string prop ->
  unit ->
  on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location

type on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location

val on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location :
  ?bucket:string prop ->
  ?key:string prop ->
  unit ->
  on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location

type on_exception_steps__decrypt_step_details__destination_file_location

val on_exception_steps__decrypt_step_details__destination_file_location :
  ?efs_file_location:
    on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    list ->
  ?s3_file_location:
    on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    list ->
  unit ->
  on_exception_steps__decrypt_step_details__destination_file_location

type on_exception_steps__decrypt_step_details

val on_exception_steps__decrypt_step_details :
  ?name:string prop ->
  ?overwrite_existing:string prop ->
  ?source_file_location:string prop ->
  ?destination_file_location:
    on_exception_steps__decrypt_step_details__destination_file_location
    list ->
  type_:string prop ->
  unit ->
  on_exception_steps__decrypt_step_details

type on_exception_steps__delete_step_details

val on_exception_steps__delete_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  unit ->
  on_exception_steps__delete_step_details

type on_exception_steps__tag_step_details__tags

val on_exception_steps__tag_step_details__tags :
  key:string prop ->
  value:string prop ->
  unit ->
  on_exception_steps__tag_step_details__tags

type on_exception_steps__tag_step_details

val on_exception_steps__tag_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  ?tags:on_exception_steps__tag_step_details__tags list ->
  unit ->
  on_exception_steps__tag_step_details

type on_exception_steps

val on_exception_steps :
  ?copy_step_details:on_exception_steps__copy_step_details list ->
  ?custom_step_details:on_exception_steps__custom_step_details list ->
  ?decrypt_step_details:on_exception_steps__decrypt_step_details list ->
  ?delete_step_details:on_exception_steps__delete_step_details list ->
  ?tag_step_details:on_exception_steps__tag_step_details list ->
  type_:string prop ->
  unit ->
  on_exception_steps

type steps__copy_step_details__destination_file_location__efs_file_location

val steps__copy_step_details__destination_file_location__efs_file_location :
  ?file_system_id:string prop ->
  ?path:string prop ->
  unit ->
  steps__copy_step_details__destination_file_location__efs_file_location

type steps__copy_step_details__destination_file_location__s3_file_location

val steps__copy_step_details__destination_file_location__s3_file_location :
  ?bucket:string prop ->
  ?key:string prop ->
  unit ->
  steps__copy_step_details__destination_file_location__s3_file_location

type steps__copy_step_details__destination_file_location

val steps__copy_step_details__destination_file_location :
  ?efs_file_location:
    steps__copy_step_details__destination_file_location__efs_file_location
    list ->
  ?s3_file_location:
    steps__copy_step_details__destination_file_location__s3_file_location
    list ->
  unit ->
  steps__copy_step_details__destination_file_location

type steps__copy_step_details

val steps__copy_step_details :
  ?name:string prop ->
  ?overwrite_existing:string prop ->
  ?source_file_location:string prop ->
  ?destination_file_location:
    steps__copy_step_details__destination_file_location list ->
  unit ->
  steps__copy_step_details

type steps__custom_step_details

val steps__custom_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  ?target:string prop ->
  ?timeout_seconds:float prop ->
  unit ->
  steps__custom_step_details

type steps__decrypt_step_details__destination_file_location__efs_file_location

val steps__decrypt_step_details__destination_file_location__efs_file_location :
  ?file_system_id:string prop ->
  ?path:string prop ->
  unit ->
  steps__decrypt_step_details__destination_file_location__efs_file_location

type steps__decrypt_step_details__destination_file_location__s3_file_location

val steps__decrypt_step_details__destination_file_location__s3_file_location :
  ?bucket:string prop ->
  ?key:string prop ->
  unit ->
  steps__decrypt_step_details__destination_file_location__s3_file_location

type steps__decrypt_step_details__destination_file_location

val steps__decrypt_step_details__destination_file_location :
  ?efs_file_location:
    steps__decrypt_step_details__destination_file_location__efs_file_location
    list ->
  ?s3_file_location:
    steps__decrypt_step_details__destination_file_location__s3_file_location
    list ->
  unit ->
  steps__decrypt_step_details__destination_file_location

type steps__decrypt_step_details

val steps__decrypt_step_details :
  ?name:string prop ->
  ?overwrite_existing:string prop ->
  ?source_file_location:string prop ->
  ?destination_file_location:
    steps__decrypt_step_details__destination_file_location list ->
  type_:string prop ->
  unit ->
  steps__decrypt_step_details

type steps__delete_step_details

val steps__delete_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  unit ->
  steps__delete_step_details

type steps__tag_step_details__tags

val steps__tag_step_details__tags :
  key:string prop ->
  value:string prop ->
  unit ->
  steps__tag_step_details__tags

type steps__tag_step_details

val steps__tag_step_details :
  ?name:string prop ->
  ?source_file_location:string prop ->
  ?tags:steps__tag_step_details__tags list ->
  unit ->
  steps__tag_step_details

type steps

val steps :
  ?copy_step_details:steps__copy_step_details list ->
  ?custom_step_details:steps__custom_step_details list ->
  ?decrypt_step_details:steps__decrypt_step_details list ->
  ?delete_step_details:steps__delete_step_details list ->
  ?tag_step_details:steps__tag_step_details list ->
  type_:string prop ->
  unit ->
  steps

type aws_transfer_workflow

val aws_transfer_workflow :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?on_exception_steps:on_exception_steps list ->
  steps:steps list ->
  unit ->
  aws_transfer_workflow

val yojson_of_aws_transfer_workflow : aws_transfer_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?on_exception_steps:on_exception_steps list ->
  steps:steps list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?on_exception_steps:on_exception_steps list ->
  steps:steps list ->
  string ->
  t Tf_core.resource
