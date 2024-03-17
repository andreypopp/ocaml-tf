(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_auditmanager_control__control_mapping_sources__source_keyword = {
  keyword_input_type : string;  (** keyword_input_type *)
  keyword_value : string;  (** keyword_value *)
}
[@@deriving yojson_of]
(** aws_auditmanager_control__control_mapping_sources__source_keyword *)

type aws_auditmanager_control__control_mapping_sources = {
  source_description : string option; [@option]
      (** source_description *)
  source_frequency : string option; [@option]
      (** source_frequency *)
  source_id : string;  (** source_id *)
  source_name : string;  (** source_name *)
  source_set_up_option : string;  (** source_set_up_option *)
  source_type : string;  (** source_type *)
  troubleshooting_text : string option; [@option]
      (** troubleshooting_text *)
  source_keyword :
    aws_auditmanager_control__control_mapping_sources__source_keyword
    list;
}
[@@deriving yojson_of]
(** aws_auditmanager_control__control_mapping_sources *)

type aws_auditmanager_control = {
  action_plan_instructions : string option; [@option]
      (** action_plan_instructions *)
  action_plan_title : string option; [@option]
      (** action_plan_title *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  testing_information : string option; [@option]
      (** testing_information *)
  control_mapping_sources :
    aws_auditmanager_control__control_mapping_sources list;
}
[@@deriving yojson_of]
(** aws_auditmanager_control *)

let aws_auditmanager_control ?action_plan_instructions
    ?action_plan_title ?description ?tags ?testing_information ~name
    ~control_mapping_sources __resource_id =
  let __resource_type = "aws_auditmanager_control" in
  let __resource =
    {
      action_plan_instructions;
      action_plan_title;
      description;
      name;
      tags;
      testing_information;
      control_mapping_sources;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_control __resource);
  ()
