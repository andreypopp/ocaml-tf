(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sfn_state_machine__logging_configuration = {
  include_execution_data : bool option; [@option]
      (** include_execution_data *)
  level : string option; [@option]  (** level *)
  log_destination : string option; [@option]  (** log_destination *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__logging_configuration *)

type aws_sfn_state_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__timeouts *)

type aws_sfn_state_machine__tracing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__tracing_configuration *)

type aws_sfn_state_machine = {
  definition : string;  (** definition *)
  publish : bool option; [@option]  (** publish *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  logging_configuration :
    aws_sfn_state_machine__logging_configuration list;
  timeouts : aws_sfn_state_machine__timeouts option;
  tracing_configuration :
    aws_sfn_state_machine__tracing_configuration list;
}
[@@deriving yojson_of]
(** aws_sfn_state_machine *)

let aws_sfn_state_machine ?publish ?tags ?type_ ?timeouts ~definition
    ~role_arn ~logging_configuration ~tracing_configuration
    __resource_id =
  let __resource_type = "aws_sfn_state_machine" in
  let __resource =
    {
      definition;
      publish;
      role_arn;
      tags;
      type_;
      logging_configuration;
      timeouts;
      tracing_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sfn_state_machine __resource);
  ()
