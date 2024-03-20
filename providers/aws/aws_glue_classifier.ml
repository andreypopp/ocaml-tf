(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type csv_classifier = {
  allow_single_column : bool prop option; [@option]
      (** allow_single_column *)
  contains_header : string prop option; [@option]
      (** contains_header *)
  custom_datatype_configured : bool prop option; [@option]
      (** custom_datatype_configured *)
  custom_datatypes : string prop list option; [@option]
      (** custom_datatypes *)
  delimiter : string prop option; [@option]  (** delimiter *)
  disable_value_trimming : bool prop option; [@option]
      (** disable_value_trimming *)
  header : string prop list option; [@option]  (** header *)
  quote_symbol : string prop option; [@option]  (** quote_symbol *)
  serde : string prop option; [@option]  (** serde *)
}
[@@deriving yojson_of]
(** csv_classifier *)

type grok_classifier = {
  classification : string prop;  (** classification *)
  custom_patterns : string prop option; [@option]
      (** custom_patterns *)
  grok_pattern : string prop;  (** grok_pattern *)
}
[@@deriving yojson_of]
(** grok_classifier *)

type json_classifier = { json_path : string prop  (** json_path *) }
[@@deriving yojson_of]
(** json_classifier *)

type xml_classifier = {
  classification : string prop;  (** classification *)
  row_tag : string prop;  (** row_tag *)
}
[@@deriving yojson_of]
(** xml_classifier *)

type aws_glue_classifier = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  csv_classifier : csv_classifier list;
  grok_classifier : grok_classifier list;
  json_classifier : json_classifier list;
  xml_classifier : xml_classifier list;
}
[@@deriving yojson_of]
(** aws_glue_classifier *)

let csv_classifier ?allow_single_column ?contains_header
    ?custom_datatype_configured ?custom_datatypes ?delimiter
    ?disable_value_trimming ?header ?quote_symbol ?serde () :
    csv_classifier =
  {
    allow_single_column;
    contains_header;
    custom_datatype_configured;
    custom_datatypes;
    delimiter;
    disable_value_trimming;
    header;
    quote_symbol;
    serde;
  }

let grok_classifier ?custom_patterns ~classification ~grok_pattern ()
    : grok_classifier =
  { classification; custom_patterns; grok_pattern }

let json_classifier ~json_path () : json_classifier = { json_path }

let xml_classifier ~classification ~row_tag () : xml_classifier =
  { classification; row_tag }

let aws_glue_classifier ?id ~name ~csv_classifier ~grok_classifier
    ~json_classifier ~xml_classifier () : aws_glue_classifier =
  {
    id;
    name;
    csv_classifier;
    grok_classifier;
    json_classifier;
    xml_classifier;
  }

type t = { id : string prop; name : string prop }

let make ?id ~name ~csv_classifier ~grok_classifier ~json_classifier
    ~xml_classifier __id =
  let __type = "aws_glue_classifier" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_classifier
        (aws_glue_classifier ?id ~name ~csv_classifier
           ~grok_classifier ~json_classifier ~xml_classifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~csv_classifier ~grok_classifier
    ~json_classifier ~xml_classifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~csv_classifier ~grok_classifier ~json_classifier
      ~xml_classifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
