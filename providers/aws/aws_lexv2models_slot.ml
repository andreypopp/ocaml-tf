(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multiple_values_setting = {
  allow_multiple_values : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multiple_values_setting) -> ()

let yojson_of_multiple_values_setting =
  (function
   | { allow_multiple_values = v_allow_multiple_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allow_multiple_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_multiple_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : multiple_values_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multiple_values_setting

[@@@deriving.end]

type obfuscation_setting = { obfuscation_setting_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : obfuscation_setting) -> ()

let yojson_of_obfuscation_setting =
  (function
   | { obfuscation_setting_type = v_obfuscation_setting_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_obfuscation_setting_type
         in
         ("obfuscation_setting_type", arg) :: bnds
       in
       `Assoc bnds
    : obfuscation_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_obfuscation_setting

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

type value_elicitation_setting__default_value_specification__default_value_list = {
  default_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__default_value_specification__default_value_list) ->
  ()

let yojson_of_value_elicitation_setting__default_value_specification__default_value_list
    =
  (function
   | { default_value = v_default_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_value in
         ("default_value", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__default_value_specification__default_value_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__default_value_specification__default_value_list

[@@@deriving.end]

type value_elicitation_setting__default_value_specification = {
  default_value_list :
    value_elicitation_setting__default_value_specification__default_value_list
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : value_elicitation_setting__default_value_specification) ->
  ()

let yojson_of_value_elicitation_setting__default_value_specification
    =
  (function
   | { default_value_list = v_default_value_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__default_value_specification__default_value_list
             v_default_value_list
         in
         ("default_value_list", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__default_value_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__default_value_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    =
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
    : value_elicitation_setting__prompt_specification__message_group__message__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message__custom_playload

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__message__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    =
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
    : value_elicitation_setting__prompt_specification__message_group__message__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    =
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
    : value_elicitation_setting__prompt_specification__message_group__message__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message__ssml_message

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__message = {
  custom_playload :
    value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__message) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__message
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__message

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    =
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
    : value_elicitation_setting__prompt_specification__message_group__variation__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__custom_playload

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__variation__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    =
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
    : value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    =
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
    : value_elicitation_setting__prompt_specification__message_group__variation__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__ssml_message

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group__variation = {
  custom_playload :
    value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group__variation) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group__variation
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group__variation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group__variation

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__message_group = {
  message :
    value_elicitation_setting__prompt_specification__message_group__message
    list;
  variation :
    value_elicitation_setting__prompt_specification__message_group__variation
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__message_group) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__message_group
    =
  (function
   | { message = v_message; variation = v_variation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__variation
             v_variation
         in
         ("variation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group__message
             v_message
         in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__message_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__message_group

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types = {
  allow_audio_input : bool prop;
  allow_dtmf_input : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    =
  (function
   | {
       allow_audio_input = v_allow_audio_input;
       allow_dtmf_input = v_allow_dtmf_input;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_dtmf_input
         in
         ("allow_dtmf_input", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_audio_input
         in
         ("allow_audio_input", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification = {
  end_timeout_ms : float prop;
  max_length_ms : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    =
  (function
   | {
       end_timeout_ms = v_end_timeout_ms;
       max_length_ms = v_max_length_ms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_length_ms in
         ("max_length_ms", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_timeout_ms in
         ("end_timeout_ms", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification = {
  deletion_character : string prop;
  end_character : string prop;
  end_timeout_ms : float prop;
  max_length : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    =
  (function
   | {
       deletion_character = v_deletion_character;
       end_character = v_end_character;
       end_timeout_ms = v_end_timeout_ms;
       max_length = v_max_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_length in
         ("max_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_timeout_ms in
         ("end_timeout_ms", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_character in
         ("end_character", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deletion_character
         in
         ("deletion_character", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification = {
  start_timeout_ms : float prop;
  audio_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    list;
  dtmf_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    =
  (function
   | {
       start_timeout_ms = v_start_timeout_ms;
       audio_specification = v_audio_specification;
       dtmf_specification = v_dtmf_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
             v_dtmf_specification
         in
         ("dtmf_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
             v_audio_specification
         in
         ("audio_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_start_timeout_ms
         in
         ("start_timeout_ms", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification = {
  start_timeout_ms : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    =
  (function
   | { start_timeout_ms = v_start_timeout_ms } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_start_timeout_ms
         in
         ("start_timeout_ms", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification__prompt_attempts_specification = {
  allow_interrupt : bool prop option; [@option]
  map_block_key : string prop;
  allowed_input_types :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    list;
  audio_and_dtmf_input_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    list;
  text_input_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__prompt_specification__prompt_attempts_specification) ->
  ()

let yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification
    =
  (function
   | {
       allow_interrupt = v_allow_interrupt;
       map_block_key = v_map_block_key;
       allowed_input_types = v_allowed_input_types;
       audio_and_dtmf_input_specification =
         v_audio_and_dtmf_input_specification;
       text_input_specification = v_text_input_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
             v_text_input_specification
         in
         ("text_input_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
             v_audio_and_dtmf_input_specification
         in
         ("audio_and_dtmf_input_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
             v_allowed_input_types
         in
         ("allowed_input_types", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_map_block_key in
         ("map_block_key", arg) :: bnds
       in
       let bnds =
         match v_allow_interrupt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_interrupt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification__prompt_attempts_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification

[@@@deriving.end]

type value_elicitation_setting__prompt_specification = {
  allow_interrupt : bool prop option; [@option]
  max_retries : float prop;
  message_selection_strategy : string prop option; [@option]
  message_group :
    value_elicitation_setting__prompt_specification__message_group
    list;
  prompt_attempts_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : value_elicitation_setting__prompt_specification) -> ()

let yojson_of_value_elicitation_setting__prompt_specification =
  (function
   | {
       allow_interrupt = v_allow_interrupt;
       max_retries = v_max_retries;
       message_selection_strategy = v_message_selection_strategy;
       message_group = v_message_group;
       prompt_attempts_specification =
         v_prompt_attempts_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__prompt_attempts_specification
             v_prompt_attempts_specification
         in
         ("prompt_attempts_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification__message_group
             v_message_group
         in
         ("message_group", arg) :: bnds
       in
       let bnds =
         match v_message_selection_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_selection_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         match v_allow_interrupt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_interrupt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__prompt_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_elicitation_setting__prompt_specification

[@@@deriving.end]

type value_elicitation_setting__sample_utterance = {
  utterance : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : value_elicitation_setting__sample_utterance) -> ()

let yojson_of_value_elicitation_setting__sample_utterance =
  (function
   | { utterance = v_utterance } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_utterance in
         ("utterance", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__sample_utterance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_elicitation_setting__sample_utterance

[@@@deriving.end]

type value_elicitation_setting__slot_resolution_setting = {
  slot_resolution_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : value_elicitation_setting__slot_resolution_setting) -> ()

let yojson_of_value_elicitation_setting__slot_resolution_setting =
  (function
   | { slot_resolution_strategy = v_slot_resolution_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_slot_resolution_strategy
         in
         ("slot_resolution_strategy", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__slot_resolution_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_elicitation_setting__slot_resolution_setting

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response__message_group) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    =
  (function
   | { message = v_message; variation = v_variation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
             v_variation
         in
         ("variation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
             v_message
         in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response__message_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__continue_response = {
  allow_interrupt : bool prop option; [@option]
  message_group :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__continue_response) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response
    =
  (function
   | {
       allow_interrupt = v_allow_interrupt;
       message_group = v_message_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
             v_message_group
         in
         ("message_group", arg) :: bnds
       in
       let bnds =
         match v_allow_interrupt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_interrupt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__continue_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    =
  (function
   | { message = v_message; variation = v_variation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
             v_variation
         in
         ("variation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
             v_message
         in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response = {
  allow_interrupt : bool prop option; [@option]
  frequency_in_seconds : float prop;
  timeout_in_seconds : float prop;
  message_group :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__still_waiting_response) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    =
  (function
   | {
       allow_interrupt = v_allow_interrupt;
       frequency_in_seconds = v_frequency_in_seconds;
       timeout_in_seconds = v_timeout_in_seconds;
       message_group = v_message_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
             v_message_group
         in
         ("message_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_in_seconds
         in
         ("timeout_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_frequency_in_seconds
         in
         ("frequency_in_seconds", arg) :: bnds
       in
       let bnds =
         match v_allow_interrupt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_interrupt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__still_waiting_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button = {
  text : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    =
  (function
   | { text = v_text; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]
  subtitle : string prop option; [@option]
  title : string prop;
  button :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    =
  (function
   | {
       image_url = v_image_url;
       subtitle = v_subtitle;
       title = v_title;
       button = v_button;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
             v_button
         in
         ("button", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_subtitle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subtitle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    =
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
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    =
  (function
   | {
       custom_playload = v_custom_playload;
       image_response_card = v_image_response_card;
       plain_text_message = v_plain_text_message;
       ssml_message = v_ssml_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
             v_ssml_message
         in
         ("ssml_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
             v_plain_text_message
         in
         ("plain_text_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
             v_image_response_card
         in
         ("image_response_card", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
             v_custom_playload
         in
         ("custom_playload", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    =
  (function
   | { message = v_message; variation = v_variation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
             v_variation
         in
         ("variation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
             v_message
         in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification__waiting_response = {
  allow_interrupt : bool prop option; [@option]
  message_group :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       value_elicitation_setting__wait_and_continue_specification__waiting_response) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response
    =
  (function
   | {
       allow_interrupt = v_allow_interrupt;
       message_group = v_message_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
             v_message_group
         in
         ("message_group", arg) :: bnds
       in
       let bnds =
         match v_allow_interrupt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_interrupt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification__waiting_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response

[@@@deriving.end]

type value_elicitation_setting__wait_and_continue_specification = {
  active : bool prop option; [@option]
  continue_response :
    value_elicitation_setting__wait_and_continue_specification__continue_response
    list;
  still_waiting_response :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    list;
  waiting_response :
    value_elicitation_setting__wait_and_continue_specification__waiting_response
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : value_elicitation_setting__wait_and_continue_specification) ->
  ()

let yojson_of_value_elicitation_setting__wait_and_continue_specification
    =
  (function
   | {
       active = v_active;
       continue_response = v_continue_response;
       still_waiting_response = v_still_waiting_response;
       waiting_response = v_waiting_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__waiting_response
             v_waiting_response
         in
         ("waiting_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__still_waiting_response
             v_still_waiting_response
         in
         ("still_waiting_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification__continue_response
             v_continue_response
         in
         ("continue_response", arg) :: bnds
       in
       let bnds =
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting__wait_and_continue_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_value_elicitation_setting__wait_and_continue_specification

[@@@deriving.end]

type value_elicitation_setting = {
  slot_constraint : string prop;
  default_value_specification :
    value_elicitation_setting__default_value_specification list;
  prompt_specification :
    value_elicitation_setting__prompt_specification list;
  sample_utterance :
    value_elicitation_setting__sample_utterance list;
  slot_resolution_setting :
    value_elicitation_setting__slot_resolution_setting list;
  wait_and_continue_specification :
    value_elicitation_setting__wait_and_continue_specification list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : value_elicitation_setting) -> ()

let yojson_of_value_elicitation_setting =
  (function
   | {
       slot_constraint = v_slot_constraint;
       default_value_specification = v_default_value_specification;
       prompt_specification = v_prompt_specification;
       sample_utterance = v_sample_utterance;
       slot_resolution_setting = v_slot_resolution_setting;
       wait_and_continue_specification =
         v_wait_and_continue_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__wait_and_continue_specification
             v_wait_and_continue_specification
         in
         ("wait_and_continue_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__slot_resolution_setting
             v_slot_resolution_setting
         in
         ("slot_resolution_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__sample_utterance
             v_sample_utterance
         in
         ("sample_utterance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__prompt_specification
             v_prompt_specification
         in
         ("prompt_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_value_elicitation_setting__default_value_specification
             v_default_value_specification
         in
         ("default_value_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_slot_constraint
         in
         ("slot_constraint", arg) :: bnds
       in
       `Assoc bnds
    : value_elicitation_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_elicitation_setting

[@@@deriving.end]

type aws_lexv2models_slot = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop option; [@option]
  intent_id : string prop;
  locale_id : string prop;
  name : string prop;
  slot_type_id : string prop option; [@option]
  multiple_values_setting : multiple_values_setting list;
  obfuscation_setting : obfuscation_setting list;
  timeouts : timeouts option;
  value_elicitation_setting : value_elicitation_setting list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lexv2models_slot) -> ()

let yojson_of_aws_lexv2models_slot =
  (function
   | {
       bot_id = v_bot_id;
       bot_version = v_bot_version;
       description = v_description;
       intent_id = v_intent_id;
       locale_id = v_locale_id;
       name = v_name;
       slot_type_id = v_slot_type_id;
       multiple_values_setting = v_multiple_values_setting;
       obfuscation_setting = v_obfuscation_setting;
       timeouts = v_timeouts;
       value_elicitation_setting = v_value_elicitation_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_value_elicitation_setting
             v_value_elicitation_setting
         in
         ("value_elicitation_setting", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_obfuscation_setting
             v_obfuscation_setting
         in
         ("obfuscation_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_multiple_values_setting
             v_multiple_values_setting
         in
         ("multiple_values_setting", arg) :: bnds
       in
       let bnds =
         match v_slot_type_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slot_type_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_intent_id in
         ("intent_id", arg) :: bnds
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
    : aws_lexv2models_slot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lexv2models_slot

[@@@deriving.end]

let multiple_values_setting ?allow_multiple_values () :
    multiple_values_setting =
  { allow_multiple_values }

let obfuscation_setting ~obfuscation_setting_type () :
    obfuscation_setting =
  { obfuscation_setting_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let value_elicitation_setting__default_value_specification__default_value_list
    ~default_value () :
    value_elicitation_setting__default_value_specification__default_value_list
    =
  { default_value }

let value_elicitation_setting__default_value_specification
    ?(default_value_list = []) () :
    value_elicitation_setting__default_value_specification =
  { default_value_list }

let value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__prompt_specification__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__prompt_specification__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__prompt_specification__message_group
    ?(message = []) ?(variation = []) () :
    value_elicitation_setting__prompt_specification__message_group =
  { message; variation }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    ~allow_audio_input ~allow_dtmf_input () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    =
  { allow_audio_input; allow_dtmf_input }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    ~end_timeout_ms ~max_length_ms () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    =
  { end_timeout_ms; max_length_ms }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    ~deletion_character ~end_character ~end_timeout_ms ~max_length ()
    :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    =
  { deletion_character; end_character; end_timeout_ms; max_length }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    ?(audio_specification = []) ?(dtmf_specification = [])
    ~start_timeout_ms () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    =
  { start_timeout_ms; audio_specification; dtmf_specification }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    ~start_timeout_ms () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    =
  { start_timeout_ms }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification
    ?allow_interrupt ?(allowed_input_types = [])
    ?(audio_and_dtmf_input_specification = [])
    ?(text_input_specification = []) ~map_block_key () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification
    =
  {
    allow_interrupt;
    map_block_key;
    allowed_input_types;
    audio_and_dtmf_input_specification;
    text_input_specification;
  }

let value_elicitation_setting__prompt_specification ?allow_interrupt
    ?message_selection_strategy ?(message_group = []) ~max_retries
    ~prompt_attempts_specification () :
    value_elicitation_setting__prompt_specification =
  {
    allow_interrupt;
    max_retries;
    message_selection_strategy;
    message_group;
    prompt_attempts_specification;
  }

let value_elicitation_setting__sample_utterance ~utterance () :
    value_elicitation_setting__sample_utterance =
  { utterance }

let value_elicitation_setting__slot_resolution_setting
    ~slot_resolution_strategy () :
    value_elicitation_setting__slot_resolution_setting =
  { slot_resolution_strategy }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    ?(message = []) ?(variation = []) () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__continue_response
    ?allow_interrupt ?(message_group = []) () :
    value_elicitation_setting__wait_and_continue_specification__continue_response
    =
  { allow_interrupt; message_group }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    ?(message = []) ?(variation = []) () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    ?allow_interrupt ?(message_group = []) ~frequency_in_seconds
    ~timeout_in_seconds () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    =
  {
    allow_interrupt;
    frequency_in_seconds;
    timeout_in_seconds;
    message_group;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    ?image_url ?subtitle ?(button = []) ~title () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    ?(custom_playload = []) ?(image_response_card = [])
    ?(plain_text_message = []) ?(ssml_message = []) () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    ?(message = []) ?(variation = []) () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__waiting_response
    ?allow_interrupt ?(message_group = []) () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response
    =
  { allow_interrupt; message_group }

let value_elicitation_setting__wait_and_continue_specification
    ?active ?(continue_response = []) ?(still_waiting_response = [])
    ?(waiting_response = []) () :
    value_elicitation_setting__wait_and_continue_specification =
  {
    active;
    continue_response;
    still_waiting_response;
    waiting_response;
  }

let value_elicitation_setting ?(default_value_specification = [])
    ?(prompt_specification = []) ?(sample_utterance = [])
    ?(slot_resolution_setting = [])
    ?(wait_and_continue_specification = []) ~slot_constraint () :
    value_elicitation_setting =
  {
    slot_constraint;
    default_value_specification;
    prompt_specification;
    sample_utterance;
    slot_resolution_setting;
    wait_and_continue_specification;
  }

let aws_lexv2models_slot ?description ?slot_type_id
    ?(multiple_values_setting = []) ?(obfuscation_setting = [])
    ?timeouts ?(value_elicitation_setting = []) ~bot_id ~bot_version
    ~intent_id ~locale_id ~name () : aws_lexv2models_slot =
  {
    bot_id;
    bot_version;
    description;
    intent_id;
    locale_id;
    name;
    slot_type_id;
    multiple_values_setting;
    obfuscation_setting;
    timeouts;
    value_elicitation_setting;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  intent_id : string prop;
  locale_id : string prop;
  name : string prop;
  slot_id : string prop;
  slot_type_id : string prop;
}

let make ?description ?slot_type_id ?(multiple_values_setting = [])
    ?(obfuscation_setting = []) ?timeouts
    ?(value_elicitation_setting = []) ~bot_id ~bot_version ~intent_id
    ~locale_id ~name __id =
  let __type = "aws_lexv2models_slot" in
  let __attrs =
    ({
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       intent_id = Prop.computed __type __id "intent_id";
       locale_id = Prop.computed __type __id "locale_id";
       name = Prop.computed __type __id "name";
       slot_id = Prop.computed __type __id "slot_id";
       slot_type_id = Prop.computed __type __id "slot_type_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_slot
        (aws_lexv2models_slot ?description ?slot_type_id
           ~multiple_values_setting ~obfuscation_setting ?timeouts
           ~value_elicitation_setting ~bot_id ~bot_version ~intent_id
           ~locale_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?slot_type_id
    ?(multiple_values_setting = []) ?(obfuscation_setting = [])
    ?timeouts ?(value_elicitation_setting = []) ~bot_id ~bot_version
    ~intent_id ~locale_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?slot_type_id ~multiple_values_setting
      ~obfuscation_setting ?timeouts ~value_elicitation_setting
      ~bot_id ~bot_version ~intent_id ~locale_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
