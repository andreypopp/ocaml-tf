(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__efs_file_location *)

type aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]  (** bucket *)
  key : string prop option; [@option]  (** key *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__s3_file_location *)

type aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location = {
  efs_file_location :
    aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location *)

type aws_transfer_workflow__on_exception_steps__copy_step_details = {
  name : string prop option; [@option]  (** name *)
  overwrite_existing : string prop option; [@option]
      (** overwrite_existing *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  destination_file_location :
    aws_transfer_workflow__on_exception_steps__copy_step_details__destination_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__copy_step_details *)

type aws_transfer_workflow__on_exception_steps__custom_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  target : string prop option; [@option]  (** target *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__custom_step_details *)

type aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location *)

type aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]  (** bucket *)
  key : string prop option; [@option]  (** key *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location *)

type aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location = {
  efs_file_location :
    aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location *)

type aws_transfer_workflow__on_exception_steps__decrypt_step_details = {
  name : string prop option; [@option]  (** name *)
  overwrite_existing : string prop option; [@option]
      (** overwrite_existing *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  type_ : string prop; [@key "type"]  (** type *)
  destination_file_location :
    aws_transfer_workflow__on_exception_steps__decrypt_step_details__destination_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__decrypt_step_details *)

type aws_transfer_workflow__on_exception_steps__delete_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__delete_step_details *)

type aws_transfer_workflow__on_exception_steps__tag_step_details__tags = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__tag_step_details__tags *)

type aws_transfer_workflow__on_exception_steps__tag_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  tags :
    aws_transfer_workflow__on_exception_steps__tag_step_details__tags
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps__tag_step_details *)

type aws_transfer_workflow__on_exception_steps = {
  type_ : string prop; [@key "type"]  (** type *)
  copy_step_details :
    aws_transfer_workflow__on_exception_steps__copy_step_details list;
  custom_step_details :
    aws_transfer_workflow__on_exception_steps__custom_step_details
    list;
  decrypt_step_details :
    aws_transfer_workflow__on_exception_steps__decrypt_step_details
    list;
  delete_step_details :
    aws_transfer_workflow__on_exception_steps__delete_step_details
    list;
  tag_step_details :
    aws_transfer_workflow__on_exception_steps__tag_step_details list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__on_exception_steps *)

type aws_transfer_workflow__steps__copy_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__copy_step_details__destination_file_location__efs_file_location *)

type aws_transfer_workflow__steps__copy_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]  (** bucket *)
  key : string prop option; [@option]  (** key *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__copy_step_details__destination_file_location__s3_file_location *)

type aws_transfer_workflow__steps__copy_step_details__destination_file_location = {
  efs_file_location :
    aws_transfer_workflow__steps__copy_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    aws_transfer_workflow__steps__copy_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__copy_step_details__destination_file_location *)

type aws_transfer_workflow__steps__copy_step_details = {
  name : string prop option; [@option]  (** name *)
  overwrite_existing : string prop option; [@option]
      (** overwrite_existing *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  destination_file_location :
    aws_transfer_workflow__steps__copy_step_details__destination_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__copy_step_details *)

type aws_transfer_workflow__steps__custom_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  target : string prop option; [@option]  (** target *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__custom_step_details *)

type aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__efs_file_location *)

type aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]  (** bucket *)
  key : string prop option; [@option]  (** key *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__s3_file_location *)

type aws_transfer_workflow__steps__decrypt_step_details__destination_file_location = {
  efs_file_location :
    aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    aws_transfer_workflow__steps__decrypt_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__decrypt_step_details__destination_file_location *)

type aws_transfer_workflow__steps__decrypt_step_details = {
  name : string prop option; [@option]  (** name *)
  overwrite_existing : string prop option; [@option]
      (** overwrite_existing *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  type_ : string prop; [@key "type"]  (** type *)
  destination_file_location :
    aws_transfer_workflow__steps__decrypt_step_details__destination_file_location
    list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__decrypt_step_details *)

type aws_transfer_workflow__steps__delete_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__delete_step_details *)

type aws_transfer_workflow__steps__tag_step_details__tags = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__tag_step_details__tags *)

type aws_transfer_workflow__steps__tag_step_details = {
  name : string prop option; [@option]  (** name *)
  source_file_location : string prop option; [@option]
      (** source_file_location *)
  tags : aws_transfer_workflow__steps__tag_step_details__tags list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps__tag_step_details *)

type aws_transfer_workflow__steps = {
  type_ : string prop; [@key "type"]  (** type *)
  copy_step_details :
    aws_transfer_workflow__steps__copy_step_details list;
  custom_step_details :
    aws_transfer_workflow__steps__custom_step_details list;
  decrypt_step_details :
    aws_transfer_workflow__steps__decrypt_step_details list;
  delete_step_details :
    aws_transfer_workflow__steps__delete_step_details list;
  tag_step_details :
    aws_transfer_workflow__steps__tag_step_details list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow__steps *)

type aws_transfer_workflow = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  on_exception_steps :
    aws_transfer_workflow__on_exception_steps list;
  steps : aws_transfer_workflow__steps list;
}
[@@deriving yojson_of]
(** aws_transfer_workflow *)

let aws_transfer_workflow ?description ?id ?tags ?tags_all
    ~on_exception_steps ~steps __resource_id =
  let __resource_type = "aws_transfer_workflow" in
  let __resource =
    { description; id; tags; tags_all; on_exception_steps; steps }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_workflow __resource);
  ()
