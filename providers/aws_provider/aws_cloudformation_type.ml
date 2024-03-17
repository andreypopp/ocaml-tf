(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudformation_type__logging_config = {
  log_group_name : string;  (** log_group_name *)
  log_role_arn : string;  (** log_role_arn *)
}
[@@deriving yojson_of]
(** aws_cloudformation_type__logging_config *)

type aws_cloudformation_type = {
  execution_role_arn : string option; [@option]
      (** execution_role_arn *)
  schema_handler_package : string;  (** schema_handler_package *)
  type_name : string;  (** type_name *)
  logging_config : aws_cloudformation_type__logging_config list;
}
[@@deriving yojson_of]
(** aws_cloudformation_type *)

let aws_cloudformation_type ?execution_role_arn
    ~schema_handler_package ~type_name ~logging_config __resource_id
    =
  let __resource_type = "aws_cloudformation_type" in
  let __resource =
    {
      execution_role_arn;
      schema_handler_package;
      type_name;
      logging_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_type __resource);
  ()
