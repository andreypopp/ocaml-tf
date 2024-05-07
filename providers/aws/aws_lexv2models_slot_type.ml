(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type composite_slot_type_setting__subslots = {
  name : string prop;
  slot_type_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : composite_slot_type_setting__subslots) -> ()

let yojson_of_composite_slot_type_setting__subslots =
  (function
   | { name = v_name; slot_type_id = v_slot_type_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slot_type_id in
         ("slot_type_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : composite_slot_type_setting__subslots ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_composite_slot_type_setting__subslots

[@@@deriving.end]

type composite_slot_type_setting = {
  subslots : composite_slot_type_setting__subslots list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : composite_slot_type_setting) -> ()

let yojson_of_composite_slot_type_setting =
  (function
   | { subslots = v_subslots } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_composite_slot_type_setting__subslots
             v_subslots
         in
         ("subslots", arg) :: bnds
       in
       `Assoc bnds
    : composite_slot_type_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_composite_slot_type_setting

[@@@deriving.end]

type external_source_setting__grammar_slot_type_setting__source = {
  kms_key_arn : string prop;
  s3_bucket_name : string prop;
  s3_object_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : external_source_setting__grammar_slot_type_setting__source) ->
  ()

let yojson_of_external_source_setting__grammar_slot_type_setting__source
    =
  (function
   | {
       kms_key_arn = v_kms_key_arn;
       s3_bucket_name = v_s3_bucket_name;
       s3_object_key = v_s3_object_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_object_key in
         ("s3_object_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : external_source_setting__grammar_slot_type_setting__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_external_source_setting__grammar_slot_type_setting__source

[@@@deriving.end]

type external_source_setting__grammar_slot_type_setting = {
  source :
    external_source_setting__grammar_slot_type_setting__source list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : external_source_setting__grammar_slot_type_setting) -> ()

let yojson_of_external_source_setting__grammar_slot_type_setting =
  (function
   | { source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_external_source_setting__grammar_slot_type_setting__source
             v_source
         in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : external_source_setting__grammar_slot_type_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_source_setting__grammar_slot_type_setting

[@@@deriving.end]

type external_source_setting = {
  grammar_slot_type_setting :
    external_source_setting__grammar_slot_type_setting list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_source_setting) -> ()

let yojson_of_external_source_setting =
  (function
   | { grammar_slot_type_setting = v_grammar_slot_type_setting } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_external_source_setting__grammar_slot_type_setting
             v_grammar_slot_type_setting
         in
         ("grammar_slot_type_setting", arg) :: bnds
       in
       `Assoc bnds
    : external_source_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_source_setting

[@@@deriving.end]

type slot_type_values__slot_type_value = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : slot_type_values__slot_type_value) -> ()

let yojson_of_slot_type_values__slot_type_value =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : slot_type_values__slot_type_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot_type_values__slot_type_value

[@@@deriving.end]

type slot_type_values__synonyms = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : slot_type_values__synonyms) -> ()

let yojson_of_slot_type_values__synonyms =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : slot_type_values__synonyms -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot_type_values__synonyms

[@@@deriving.end]

type slot_type_values = {
  slot_type_value : slot_type_values__slot_type_value list;
  synonyms : slot_type_values__synonyms list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slot_type_values) -> ()

let yojson_of_slot_type_values =
  (function
   | { slot_type_value = v_slot_type_value; synonyms = v_synonyms }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_slot_type_values__synonyms
             v_synonyms
         in
         ("synonyms", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_slot_type_values__slot_type_value
             v_slot_type_value
         in
         ("slot_type_value", arg) :: bnds
       in
       `Assoc bnds
    : slot_type_values -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot_type_values

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type value_selection_setting__advanced_recognition_setting = {
  audio_recognition_setting : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : value_selection_setting__advanced_recognition_setting) ->
  ()

let yojson_of_value_selection_setting__advanced_recognition_setting =
  (function
   | { audio_recognition_setting = v_audio_recognition_setting } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_audio_recognition_setting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_recognition_setting", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_selection_setting__advanced_recognition_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_selection_setting__advanced_recognition_setting

[@@@deriving.end]

type value_selection_setting__regex_filter = {
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : value_selection_setting__regex_filter) -> ()

let yojson_of_value_selection_setting__regex_filter =
  (function
   | { pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       `Assoc bnds
    : value_selection_setting__regex_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_selection_setting__regex_filter

[@@@deriving.end]

type value_selection_setting = {
  resolution_strategy : string prop;
  advanced_recognition_setting :
    value_selection_setting__advanced_recognition_setting list;
  regex_filter : value_selection_setting__regex_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : value_selection_setting) -> ()

let yojson_of_value_selection_setting =
  (function
   | {
       resolution_strategy = v_resolution_strategy;
       advanced_recognition_setting = v_advanced_recognition_setting;
       regex_filter = v_regex_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_selection_setting__regex_filter
             v_regex_filter
         in
         ("regex_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_selection_setting__advanced_recognition_setting
             v_advanced_recognition_setting
         in
         ("advanced_recognition_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resolution_strategy
         in
         ("resolution_strategy", arg) :: bnds
       in
       `Assoc bnds
    : value_selection_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_selection_setting

[@@@deriving.end]

type aws_lexv2models_slot_type = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop option; [@option]
  locale_id : string prop;
  name : string prop;
  parent_slot_type_signature : string prop option; [@option]
  composite_slot_type_setting : composite_slot_type_setting list;
  external_source_setting : external_source_setting list;
  slot_type_values : slot_type_values list;
  timeouts : timeouts option;
  value_selection_setting : value_selection_setting list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lexv2models_slot_type) -> ()

let yojson_of_aws_lexv2models_slot_type =
  (function
   | {
       bot_id = v_bot_id;
       bot_version = v_bot_version;
       description = v_description;
       locale_id = v_locale_id;
       name = v_name;
       parent_slot_type_signature = v_parent_slot_type_signature;
       composite_slot_type_setting = v_composite_slot_type_setting;
       external_source_setting = v_external_source_setting;
       slot_type_values = v_slot_type_values;
       timeouts = v_timeouts;
       value_selection_setting = v_value_selection_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_value_selection_setting
             v_value_selection_setting
         in
         ("value_selection_setting", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_slot_type_values
             v_slot_type_values
         in
         ("slot_type_values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_external_source_setting
             v_external_source_setting
         in
         ("external_source_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_composite_slot_type_setting
             v_composite_slot_type_setting
         in
         ("composite_slot_type_setting", arg) :: bnds
       in
       let bnds =
         match v_parent_slot_type_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_slot_type_signature", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locale_id in
         ("locale_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_version in
         ("bot_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_id in
         ("bot_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_lexv2models_slot_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lexv2models_slot_type

[@@@deriving.end]

let composite_slot_type_setting__subslots ~name ~slot_type_id () :
    composite_slot_type_setting__subslots =
  { name; slot_type_id }

let composite_slot_type_setting ?(subslots = []) () :
    composite_slot_type_setting =
  { subslots }

let external_source_setting__grammar_slot_type_setting__source
    ~kms_key_arn ~s3_bucket_name ~s3_object_key () :
    external_source_setting__grammar_slot_type_setting__source =
  { kms_key_arn; s3_bucket_name; s3_object_key }

let external_source_setting__grammar_slot_type_setting ?(source = [])
    () : external_source_setting__grammar_slot_type_setting =
  { source }

let external_source_setting ?(grammar_slot_type_setting = []) () :
    external_source_setting =
  { grammar_slot_type_setting }

let slot_type_values__slot_type_value ~value () :
    slot_type_values__slot_type_value =
  { value }

let slot_type_values__synonyms ~value () : slot_type_values__synonyms
    =
  { value }

let slot_type_values ?(slot_type_value = []) ?(synonyms = []) () :
    slot_type_values =
  { slot_type_value; synonyms }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let value_selection_setting__advanced_recognition_setting
    ?audio_recognition_setting () :
    value_selection_setting__advanced_recognition_setting =
  { audio_recognition_setting }

let value_selection_setting__regex_filter ~pattern () :
    value_selection_setting__regex_filter =
  { pattern }

let value_selection_setting ?(advanced_recognition_setting = [])
    ?(regex_filter = []) ~resolution_strategy () :
    value_selection_setting =
  { resolution_strategy; advanced_recognition_setting; regex_filter }

let aws_lexv2models_slot_type ?description
    ?parent_slot_type_signature ?(composite_slot_type_setting = [])
    ?(external_source_setting = []) ?(slot_type_values = [])
    ?timeouts ?(value_selection_setting = []) ~bot_id ~bot_version
    ~locale_id ~name () : aws_lexv2models_slot_type =
  {
    bot_id;
    bot_version;
    description;
    locale_id;
    name;
    parent_slot_type_signature;
    composite_slot_type_setting;
    external_source_setting;
    slot_type_values;
    timeouts;
    value_selection_setting;
  }

type t = {
  tf_name : string;
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  name : string prop;
  parent_slot_type_signature : string prop;
  slot_type_id : string prop;
}

let make ?description ?parent_slot_type_signature
    ?(composite_slot_type_setting = [])
    ?(external_source_setting = []) ?(slot_type_values = [])
    ?timeouts ?(value_selection_setting = []) ~bot_id ~bot_version
    ~locale_id ~name __id =
  let __type = "aws_lexv2models_slot_type" in
  let __attrs =
    ({
       tf_name = __id;
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       locale_id = Prop.computed __type __id "locale_id";
       name = Prop.computed __type __id "name";
       parent_slot_type_signature =
         Prop.computed __type __id "parent_slot_type_signature";
       slot_type_id = Prop.computed __type __id "slot_type_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_slot_type
        (aws_lexv2models_slot_type ?description
           ?parent_slot_type_signature ~composite_slot_type_setting
           ~external_source_setting ~slot_type_values ?timeouts
           ~value_selection_setting ~bot_id ~bot_version ~locale_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?parent_slot_type_signature
    ?(composite_slot_type_setting = [])
    ?(external_source_setting = []) ?(slot_type_values = [])
    ?timeouts ?(value_selection_setting = []) ~bot_id ~bot_version
    ~locale_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?parent_slot_type_signature
      ~composite_slot_type_setting ~external_source_setting
      ~slot_type_values ?timeouts ~value_selection_setting ~bot_id
      ~bot_version ~locale_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
