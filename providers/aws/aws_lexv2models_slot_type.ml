(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type composite_slot_type_setting__subslots = {
  name : string prop;  (** name *)
  slot_type_id : string prop;  (** slot_type_id *)
}
[@@deriving yojson_of]
(** composite_slot_type_setting__subslots *)

type composite_slot_type_setting = {
  subslots : composite_slot_type_setting__subslots list;
}
[@@deriving yojson_of]
(** composite_slot_type_setting *)

type external_source_setting__grammar_slot_type_setting__source = {
  kms_key_arn : string prop;  (** kms_key_arn *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_object_key : string prop;  (** s3_object_key *)
}
[@@deriving yojson_of]
(** external_source_setting__grammar_slot_type_setting__source *)

type external_source_setting__grammar_slot_type_setting = {
  source :
    external_source_setting__grammar_slot_type_setting__source list;
}
[@@deriving yojson_of]
(** external_source_setting__grammar_slot_type_setting *)

type external_source_setting = {
  grammar_slot_type_setting :
    external_source_setting__grammar_slot_type_setting list;
}
[@@deriving yojson_of]
(** external_source_setting *)

type slot_type_values__slot_type_value = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** slot_type_values__slot_type_value *)

type slot_type_values__synonyms = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** slot_type_values__synonyms *)

type slot_type_values = {
  slot_type_value : slot_type_values__slot_type_value list;
  synonyms : slot_type_values__synonyms list;
}
[@@deriving yojson_of]
(** slot_type_values *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type value_selection_setting__advanced_recognition_setting = {
  audio_recognition_setting : string prop option; [@option]
      (** audio_recognition_setting *)
}
[@@deriving yojson_of]
(** value_selection_setting__advanced_recognition_setting *)

type value_selection_setting__regex_filter = {
  pattern : string prop;  (** pattern *)
}
[@@deriving yojson_of]
(** value_selection_setting__regex_filter *)

type value_selection_setting = {
  resolution_strategy : string prop;  (** resolution_strategy *)
  advanced_recognition_setting :
    value_selection_setting__advanced_recognition_setting list;
  regex_filter : value_selection_setting__regex_filter list;
}
[@@deriving yojson_of]
(** value_selection_setting *)

type aws_lexv2models_slot_type = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  locale_id : string prop;  (** locale_id *)
  name : string prop;  (** name *)
  parent_slot_type_signature : string prop option; [@option]
      (** parent_slot_type_signature *)
  composite_slot_type_setting : composite_slot_type_setting list;
  external_source_setting : external_source_setting list;
  slot_type_values : slot_type_values list;
  timeouts : timeouts option;
  value_selection_setting : value_selection_setting list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot_type *)

let composite_slot_type_setting__subslots ~name ~slot_type_id () :
    composite_slot_type_setting__subslots =
  { name; slot_type_id }

let composite_slot_type_setting ~subslots () :
    composite_slot_type_setting =
  { subslots }

let external_source_setting__grammar_slot_type_setting__source
    ~kms_key_arn ~s3_bucket_name ~s3_object_key () :
    external_source_setting__grammar_slot_type_setting__source =
  { kms_key_arn; s3_bucket_name; s3_object_key }

let external_source_setting__grammar_slot_type_setting ~source () :
    external_source_setting__grammar_slot_type_setting =
  { source }

let external_source_setting ~grammar_slot_type_setting () :
    external_source_setting =
  { grammar_slot_type_setting }

let slot_type_values__slot_type_value ~value () :
    slot_type_values__slot_type_value =
  { value }

let slot_type_values__synonyms ~value () : slot_type_values__synonyms
    =
  { value }

let slot_type_values ~slot_type_value ~synonyms () : slot_type_values
    =
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

let value_selection_setting ~resolution_strategy
    ~advanced_recognition_setting ~regex_filter () :
    value_selection_setting =
  { resolution_strategy; advanced_recognition_setting; regex_filter }

let aws_lexv2models_slot_type ?description
    ?parent_slot_type_signature ?timeouts ~bot_id ~bot_version
    ~locale_id ~name ~composite_slot_type_setting
    ~external_source_setting ~slot_type_values
    ~value_selection_setting () : aws_lexv2models_slot_type =
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
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  name : string prop;
  parent_slot_type_signature : string prop;
  slot_type_id : string prop;
}

let register ?tf_module ?description ?parent_slot_type_signature
    ?timeouts ~bot_id ~bot_version ~locale_id ~name
    ~composite_slot_type_setting ~external_source_setting
    ~slot_type_values ~value_selection_setting __resource_id =
  let __resource_type = "aws_lexv2models_slot_type" in
  let __resource =
    aws_lexv2models_slot_type ?description
      ?parent_slot_type_signature ?timeouts ~bot_id ~bot_version
      ~locale_id ~name ~composite_slot_type_setting
      ~external_source_setting ~slot_type_values
      ~value_selection_setting ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_slot_type __resource);
  let __resource_attributes =
    ({
       bot_id = Prop.computed __resource_type __resource_id "bot_id";
       bot_version =
         Prop.computed __resource_type __resource_id "bot_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       locale_id =
         Prop.computed __resource_type __resource_id "locale_id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_slot_type_signature =
         Prop.computed __resource_type __resource_id
           "parent_slot_type_signature";
       slot_type_id =
         Prop.computed __resource_type __resource_id "slot_type_id";
     }
      : t)
  in
  __resource_attributes
