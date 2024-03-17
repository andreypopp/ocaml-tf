(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_classifier__csv_classifier = {
  allow_single_column : bool option; [@option]
      (** allow_single_column *)
  contains_header : string option; [@option]  (** contains_header *)
  custom_datatype_configured : bool option; [@option]
      (** custom_datatype_configured *)
  custom_datatypes : string list option; [@option]
      (** custom_datatypes *)
  delimiter : string option; [@option]  (** delimiter *)
  disable_value_trimming : bool option; [@option]
      (** disable_value_trimming *)
  header : string list option; [@option]  (** header *)
  quote_symbol : string option; [@option]  (** quote_symbol *)
  serde : string option; [@option]  (** serde *)
}
[@@deriving yojson_of]
(** aws_glue_classifier__csv_classifier *)

type aws_glue_classifier__grok_classifier = {
  classification : string;  (** classification *)
  custom_patterns : string option; [@option]  (** custom_patterns *)
  grok_pattern : string;  (** grok_pattern *)
}
[@@deriving yojson_of]
(** aws_glue_classifier__grok_classifier *)

type aws_glue_classifier__json_classifier = {
  json_path : string;  (** json_path *)
}
[@@deriving yojson_of]
(** aws_glue_classifier__json_classifier *)

type aws_glue_classifier__xml_classifier = {
  classification : string;  (** classification *)
  row_tag : string;  (** row_tag *)
}
[@@deriving yojson_of]
(** aws_glue_classifier__xml_classifier *)

type aws_glue_classifier = {
  name : string;  (** name *)
  csv_classifier : aws_glue_classifier__csv_classifier list;
  grok_classifier : aws_glue_classifier__grok_classifier list;
  json_classifier : aws_glue_classifier__json_classifier list;
  xml_classifier : aws_glue_classifier__xml_classifier list;
}
[@@deriving yojson_of]
(** aws_glue_classifier *)

let aws_glue_classifier ~name ~csv_classifier ~grok_classifier
    ~json_classifier ~xml_classifier __resource_id =
  let __resource_type = "aws_glue_classifier" in
  let __resource =
    {
      name;
      csv_classifier;
      grok_classifier;
      json_classifier;
      xml_classifier;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_classifier __resource);
  ()
