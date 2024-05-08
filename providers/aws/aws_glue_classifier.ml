(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type csv_classifier = {
  allow_single_column : bool prop option; [@option]
  contains_header : string prop option; [@option]
  custom_datatype_configured : bool prop option; [@option]
  custom_datatypes : string prop list option; [@option]
  delimiter : string prop option; [@option]
  disable_value_trimming : bool prop option; [@option]
  header : string prop list option; [@option]
  quote_symbol : string prop option; [@option]
  serde : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : csv_classifier) -> ()

let yojson_of_csv_classifier =
  (function
   | {
       allow_single_column = v_allow_single_column;
       contains_header = v_contains_header;
       custom_datatype_configured = v_custom_datatype_configured;
       custom_datatypes = v_custom_datatypes;
       delimiter = v_delimiter;
       disable_value_trimming = v_disable_value_trimming;
       header = v_header;
       quote_symbol = v_quote_symbol;
       serde = v_serde;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_serde with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serde", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quote_symbol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quote_symbol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_value_trimming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_value_trimming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_datatypes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_datatypes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_datatype_configured with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "custom_datatype_configured", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contains_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contains_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_single_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_single_column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : csv_classifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_csv_classifier

[@@@deriving.end]

type grok_classifier = {
  classification : string prop;
  custom_patterns : string prop option; [@option]
  grok_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : grok_classifier) -> ()

let yojson_of_grok_classifier =
  (function
   | {
       classification = v_classification;
       custom_patterns = v_custom_patterns;
       grok_pattern = v_grok_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_grok_pattern in
         ("grok_pattern", arg) :: bnds
       in
       let bnds =
         match v_custom_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_classification
         in
         ("classification", arg) :: bnds
       in
       `Assoc bnds
    : grok_classifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grok_classifier

[@@@deriving.end]

type json_classifier = { json_path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : json_classifier) -> ()

let yojson_of_json_classifier =
  (function
   | { json_path = v_json_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_json_path in
         ("json_path", arg) :: bnds
       in
       `Assoc bnds
    : json_classifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_json_classifier

[@@@deriving.end]

type xml_classifier = {
  classification : string prop;
  row_tag : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : xml_classifier) -> ()

let yojson_of_xml_classifier =
  (function
   | { classification = v_classification; row_tag = v_row_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_row_tag in
         ("row_tag", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_classification
         in
         ("classification", arg) :: bnds
       in
       `Assoc bnds
    : xml_classifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_xml_classifier

[@@@deriving.end]

type aws_glue_classifier = {
  id : string prop option; [@option]
  name : string prop;
  csv_classifier : csv_classifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  grok_classifier : grok_classifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_classifier : json_classifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  xml_classifier : xml_classifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_classifier) -> ()

let yojson_of_aws_glue_classifier =
  (function
   | {
       id = v_id;
       name = v_name;
       csv_classifier = v_csv_classifier;
       grok_classifier = v_grok_classifier;
       json_classifier = v_json_classifier;
       xml_classifier = v_xml_classifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_xml_classifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_xml_classifier)
               v_xml_classifier
           in
           let bnd = "xml_classifier", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_json_classifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_json_classifier)
               v_json_classifier
           in
           let bnd = "json_classifier", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grok_classifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_grok_classifier)
               v_grok_classifier
           in
           let bnd = "grok_classifier", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv_classifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_csv_classifier)
               v_csv_classifier
           in
           let bnd = "csv_classifier", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_classifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_classifier

[@@@deriving.end]

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

let aws_glue_classifier ?id ?(csv_classifier = [])
    ?(grok_classifier = []) ?(json_classifier = [])
    ?(xml_classifier = []) ~name () : aws_glue_classifier =
  {
    id;
    name;
    csv_classifier;
    grok_classifier;
    json_classifier;
    xml_classifier;
  }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ?(csv_classifier = []) ?(grok_classifier = [])
    ?(json_classifier = []) ?(xml_classifier = []) ~name __id =
  let __type = "aws_glue_classifier" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_glue_classifier ?id ~csv_classifier ~grok_classifier
           ~json_classifier ~xml_classifier ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(csv_classifier = [])
    ?(grok_classifier = []) ?(json_classifier = [])
    ?(xml_classifier = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~csv_classifier ~grok_classifier ~json_classifier
      ~xml_classifier ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
