(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_control__control_mapping_sources__source_keyword = {
  keyword_input_type : string prop;  (** keyword_input_type *)
  keyword_value : string prop;  (** keyword_value *)
}
[@@deriving yojson_of]
(** aws_auditmanager_control__control_mapping_sources__source_keyword *)

type aws_auditmanager_control__control_mapping_sources = {
  source_description : string prop option; [@option]
      (** source_description *)
  source_frequency : string prop option; [@option]
      (** source_frequency *)
  source_id : string prop;  (** source_id *)
  source_name : string prop;  (** source_name *)
  source_set_up_option : string prop;  (** source_set_up_option *)
  source_type : string prop;  (** source_type *)
  troubleshooting_text : string prop option; [@option]
      (** troubleshooting_text *)
  source_keyword :
    aws_auditmanager_control__control_mapping_sources__source_keyword
    list;
}
[@@deriving yojson_of]
(** aws_auditmanager_control__control_mapping_sources *)

type aws_auditmanager_control = {
  action_plan_instructions : string prop option; [@option]
      (** action_plan_instructions *)
  action_plan_title : string prop option; [@option]
      (** action_plan_title *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  testing_information : string prop option; [@option]
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
