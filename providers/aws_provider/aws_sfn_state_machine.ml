(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sfn_state_machine__logging_configuration = {
  include_execution_data : bool prop option; [@option]
      (** include_execution_data *)
  level : string prop option; [@option]  (** level *)
  log_destination : string prop option; [@option]
      (** log_destination *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__logging_configuration *)

type aws_sfn_state_machine__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__timeouts *)

type aws_sfn_state_machine__tracing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_sfn_state_machine__tracing_configuration *)

type aws_sfn_state_machine = {
  definition : string prop;  (** definition *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  publish : bool prop option; [@option]  (** publish *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  logging_configuration :
    aws_sfn_state_machine__logging_configuration list;
  timeouts : aws_sfn_state_machine__timeouts option;
  tracing_configuration :
    aws_sfn_state_machine__tracing_configuration list;
}
[@@deriving yojson_of]
(** aws_sfn_state_machine *)

let aws_sfn_state_machine ?id ?name ?name_prefix ?publish ?tags
    ?tags_all ?type_ ?timeouts ~definition ~role_arn
    ~logging_configuration ~tracing_configuration __resource_id =
  let __resource_type = "aws_sfn_state_machine" in
  let __resource =
    {
      definition;
      id;
      name;
      name_prefix;
      publish;
      role_arn;
      tags;
      tags_all;
      type_;
      logging_configuration;
      timeouts;
      tracing_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sfn_state_machine __resource);
  ()
