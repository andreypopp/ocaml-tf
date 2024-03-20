(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control_mapping_sources__source_keyword = {
  keyword_input_type : string prop;  (** keyword_input_type *)
  keyword_value : string prop;  (** keyword_value *)
}
[@@deriving yojson_of]
(** control_mapping_sources__source_keyword *)

type control_mapping_sources = {
  source_description : string prop option; [@option]
      (** source_description *)
  source_frequency : string prop option; [@option]
      (** source_frequency *)
  source_name : string prop;  (** source_name *)
  source_set_up_option : string prop;  (** source_set_up_option *)
  source_type : string prop;  (** source_type *)
  troubleshooting_text : string prop option; [@option]
      (** troubleshooting_text *)
  source_keyword : control_mapping_sources__source_keyword list;
}
[@@deriving yojson_of]
(** control_mapping_sources *)

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
  control_mapping_sources : control_mapping_sources list;
}
[@@deriving yojson_of]
(** aws_auditmanager_control *)

let control_mapping_sources__source_keyword ~keyword_input_type
    ~keyword_value () : control_mapping_sources__source_keyword =
  { keyword_input_type; keyword_value }

let control_mapping_sources ?source_description ?source_frequency
    ?troubleshooting_text ~source_name ~source_set_up_option
    ~source_type ~source_keyword () : control_mapping_sources =
  {
    source_description;
    source_frequency;
    source_name;
    source_set_up_option;
    source_type;
    troubleshooting_text;
    source_keyword;
  }

let aws_auditmanager_control ?action_plan_instructions
    ?action_plan_title ?description ?tags ?testing_information ~name
    ~control_mapping_sources () : aws_auditmanager_control =
  {
    action_plan_instructions;
    action_plan_title;
    description;
    name;
    tags;
    testing_information;
    control_mapping_sources;
  }

type t = {
  action_plan_instructions : string prop;
  action_plan_title : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  testing_information : string prop;
  type_ : string prop;
}

let make ?action_plan_instructions ?action_plan_title ?description
    ?tags ?testing_information ~name ~control_mapping_sources __id =
  let __type = "aws_auditmanager_control" in
  let __attrs =
    ({
       action_plan_instructions =
         Prop.computed __type __id "action_plan_instructions";
       action_plan_title =
         Prop.computed __type __id "action_plan_title";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       testing_information =
         Prop.computed __type __id "testing_information";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_control
        (aws_auditmanager_control ?action_plan_instructions
           ?action_plan_title ?description ?tags ?testing_information
           ~name ~control_mapping_sources ());
    attrs = __attrs;
  }

let register ?tf_module ?action_plan_instructions ?action_plan_title
    ?description ?tags ?testing_information ~name
    ~control_mapping_sources __id =
  let (r : _ Tf_core.resource) =
    make ?action_plan_instructions ?action_plan_title ?description
      ?tags ?testing_information ~name ~control_mapping_sources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
