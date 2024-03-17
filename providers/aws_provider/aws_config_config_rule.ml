(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_config_rule__evaluation_mode = {
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_config_config_rule__evaluation_mode *)

type aws_config_config_rule__scope = {
  compliance_resource_id : string prop option; [@option]
      (** compliance_resource_id *)
  compliance_resource_types : string prop list option; [@option]
      (** compliance_resource_types *)
  tag_key : string prop option; [@option]  (** tag_key *)
  tag_value : string prop option; [@option]  (** tag_value *)
}
[@@deriving yojson_of]
(** aws_config_config_rule__scope *)

type aws_config_config_rule__source__custom_policy_details = {
  enable_debug_log_delivery : bool prop option; [@option]
      (** enable_debug_log_delivery *)
  policy_runtime : string prop;  (** policy_runtime *)
  policy_text : string prop;  (** policy_text *)
}
[@@deriving yojson_of]
(** aws_config_config_rule__source__custom_policy_details *)

type aws_config_config_rule__source__source_detail = {
  event_source : string prop option; [@option]  (** event_source *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  message_type : string prop option; [@option]  (** message_type *)
}
[@@deriving yojson_of]
(** aws_config_config_rule__source__source_detail *)

type aws_config_config_rule__source = {
  owner : string prop;  (** owner *)
  source_identifier : string prop option; [@option]
      (** source_identifier *)
  custom_policy_details :
    aws_config_config_rule__source__custom_policy_details list;
  source_detail : aws_config_config_rule__source__source_detail list;
}
[@@deriving yojson_of]
(** aws_config_config_rule__source *)

type aws_config_config_rule = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  input_parameters : string prop option; [@option]
      (** input_parameters *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  evaluation_mode : aws_config_config_rule__evaluation_mode list;
  scope : aws_config_config_rule__scope list;
  source : aws_config_config_rule__source list;
}
[@@deriving yojson_of]
(** aws_config_config_rule *)

let aws_config_config_rule ?description ?id ?input_parameters
    ?maximum_execution_frequency ?tags ?tags_all ~name
    ~evaluation_mode ~scope ~source __resource_id =
  let __resource_type = "aws_config_config_rule" in
  let __resource =
    {
      description;
      id;
      input_parameters;
      maximum_execution_frequency;
      name;
      tags;
      tags_all;
      evaluation_mode;
      scope;
      source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_config_rule __resource);
  ()
