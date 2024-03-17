(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_osis_pipeline__buffer_options = {
  persistent_buffer_enabled : bool;  (** persistent_buffer_enabled *)
}
[@@deriving yojson_of]
(** aws_osis_pipeline__buffer_options *)

type aws_osis_pipeline__encryption_at_rest_options = {
  kms_key_arn : string;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_osis_pipeline__encryption_at_rest_options *)

type aws_osis_pipeline__log_publishing_options__cloudwatch_log_destination = {
  log_group : string;  (** log_group *)
}
[@@deriving yojson_of]
(** aws_osis_pipeline__log_publishing_options__cloudwatch_log_destination *)

type aws_osis_pipeline__log_publishing_options = {
  is_logging_enabled : bool option; [@option]
      (** is_logging_enabled *)
  cloudwatch_log_destination :
    aws_osis_pipeline__log_publishing_options__cloudwatch_log_destination
    list;
}
[@@deriving yojson_of]
(** aws_osis_pipeline__log_publishing_options *)

type aws_osis_pipeline__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_osis_pipeline__timeouts *)

type aws_osis_pipeline__vpc_options = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_osis_pipeline__vpc_options *)

type aws_osis_pipeline = {
  max_units : float;  (** max_units *)
  min_units : float;  (** min_units *)
  pipeline_configuration_body : string;
      (** pipeline_configuration_body *)
  pipeline_name : string;  (** pipeline_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  buffer_options : aws_osis_pipeline__buffer_options list;
  encryption_at_rest_options :
    aws_osis_pipeline__encryption_at_rest_options list;
  log_publishing_options :
    aws_osis_pipeline__log_publishing_options list;
  timeouts : aws_osis_pipeline__timeouts option;
  vpc_options : aws_osis_pipeline__vpc_options list;
}
[@@deriving yojson_of]
(** aws_osis_pipeline *)

let aws_osis_pipeline ?tags ?timeouts ~max_units ~min_units
    ~pipeline_configuration_body ~pipeline_name ~buffer_options
    ~encryption_at_rest_options ~log_publishing_options ~vpc_options
    __resource_id =
  let __resource_type = "aws_osis_pipeline" in
  let __resource =
    {
      max_units;
      min_units;
      pipeline_configuration_body;
      pipeline_name;
      tags;
      buffer_options;
      encryption_at_rest_options;
      log_publishing_options;
      timeouts;
      vpc_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_osis_pipeline __resource);
  ()
