(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__message *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group__variation *)

type aws_lexv2models_intent__closing_setting__closing_response__message_group = {
  message :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__closing_setting__closing_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response__message_group *)

type aws_lexv2models_intent__closing_setting__closing_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__closing_setting__closing_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__closing_response *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__condition *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response *)

type aws_lexv2models_intent__closing_setting__conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__conditional_branch *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch__response *)

type aws_lexv2models_intent__closing_setting__conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__closing_setting__conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional__default_branch *)

type aws_lexv2models_intent__closing_setting__conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__closing_setting__conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__closing_setting__conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__conditional *)

type aws_lexv2models_intent__closing_setting__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__next_step__dialog_action *)

type aws_lexv2models_intent__closing_setting__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__next_step__intent__slot__value *)

type aws_lexv2models_intent__closing_setting__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__closing_setting__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__next_step__intent__slot *)

type aws_lexv2models_intent__closing_setting__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__closing_setting__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__next_step__intent *)

type aws_lexv2models_intent__closing_setting__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__closing_setting__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__closing_setting__next_step__intent list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting__next_step *)

type aws_lexv2models_intent__closing_setting = {
  active : bool prop option; [@option]  (** active *)
  closing_response :
    aws_lexv2models_intent__closing_setting__closing_response list;
  conditional :
    aws_lexv2models_intent__closing_setting__conditional list;
  next_step : aws_lexv2models_intent__closing_setting__next_step list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__closing_setting *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response *)

type aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification = {
  failure_conditional :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_conditional
    list;
  failure_next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_next_step
    list;
  failure_response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__failure_response
    list;
  success_conditional :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_conditional
    list;
  success_next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_next_step
    list;
  success_response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__success_response
    list;
  timeout_conditional :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional
    list;
  timeout_next_step :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step
    list;
  timeout_response :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification *)

type aws_lexv2models_intent__confirmation_setting__code_hook = {
  active : bool prop;  (** active *)
  enable_code_hook_invocation : bool prop;
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
  post_code_hook_specification :
    aws_lexv2models_intent__confirmation_setting__code_hook__post_code_hook_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__code_hook *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__confirmation_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_conditional *)

type aws_lexv2models_intent__confirmation_setting__confirmation_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__confirmation_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__confirmation_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__confirmation_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_next_step *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__confirmation_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__confirmation_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__confirmation_response *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__declination_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__declination_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_conditional *)

type aws_lexv2models_intent__confirmation_setting__declination_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__declination_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__declination_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__declination_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__declination_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__declination_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_next_step *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__declination_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__declination_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__declination_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__declination_response *)

type aws_lexv2models_intent__confirmation_setting__elicitation_code_hook = {
  enable_code_hook_invocation : bool prop option; [@option]
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__elicitation_code_hook *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch *)

type aws_lexv2models_intent__confirmation_setting__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__confirmation_setting__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_conditional *)

type aws_lexv2models_intent__confirmation_setting__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_next_step__dialog_action *)

type aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot__value *)

type aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot *)

type aws_lexv2models_intent__confirmation_setting__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__confirmation_setting__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_next_step__intent *)

type aws_lexv2models_intent__confirmation_setting__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__confirmation_setting__failure_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__confirmation_setting__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_next_step *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__failure_response__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response__message_group *)

type aws_lexv2models_intent__confirmation_setting__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__failure_response *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__custom_payload *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__ssml_message *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group = {
  message :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__message
    list;
  variation :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types = {
  allow_audio_input : bool prop;  (** allow_audio_input *)
  allow_dtmf_input : bool prop;  (** allow_dtmf_input *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification = {
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length_ms : float prop;  (** max_length_ms *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification = {
  deletion_character : string prop;  (** deletion_character *)
  end_character : string prop;  (** end_character *)
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length : float prop;  (** max_length *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
  audio_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    list;
  dtmf_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  map_block_key : string prop;  (** map_block_key *)
  allowed_input_types :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    list;
  audio_and_dtmf_input_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    list;
  text_input_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification *)

type aws_lexv2models_intent__confirmation_setting__prompt_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  max_retries : float prop;  (** max_retries *)
  message_selection_strategy : string prop option; [@option]
      (** message_selection_strategy *)
  message_group :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__message_group
    list;
  prompt_attempts_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification__prompt_attempts_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting__prompt_specification *)

type aws_lexv2models_intent__confirmation_setting = {
  active : bool prop option; [@option]  (** active *)
  code_hook :
    aws_lexv2models_intent__confirmation_setting__code_hook list;
  confirmation_conditional :
    aws_lexv2models_intent__confirmation_setting__confirmation_conditional
    list;
  confirmation_next_step :
    aws_lexv2models_intent__confirmation_setting__confirmation_next_step
    list;
  confirmation_response :
    aws_lexv2models_intent__confirmation_setting__confirmation_response
    list;
  declination_conditional :
    aws_lexv2models_intent__confirmation_setting__declination_conditional
    list;
  declination_next_step :
    aws_lexv2models_intent__confirmation_setting__declination_next_step
    list;
  declination_response :
    aws_lexv2models_intent__confirmation_setting__declination_response
    list;
  elicitation_code_hook :
    aws_lexv2models_intent__confirmation_setting__elicitation_code_hook
    list;
  failure_conditional :
    aws_lexv2models_intent__confirmation_setting__failure_conditional
    list;
  failure_next_step :
    aws_lexv2models_intent__confirmation_setting__failure_next_step
    list;
  failure_response :
    aws_lexv2models_intent__confirmation_setting__failure_response
    list;
  prompt_specification :
    aws_lexv2models_intent__confirmation_setting__prompt_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__confirmation_setting *)

type aws_lexv2models_intent__dialog_code_hook = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__dialog_code_hook *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  delay_in_seconds : float prop option; [@option]
      (** delay_in_seconds *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  frequency_in_seconds : float prop;  (** frequency_in_seconds *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response *)

type aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification = {
  active : bool prop;  (** active *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  start_response :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__start_response
    list;
  update_response :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification__update_response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group = {
  message :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response *)

type aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification = {
  failure_conditional :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional
    list;
  failure_next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step
    list;
  failure_response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__failure_response
    list;
  success_conditional :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_conditional
    list;
  success_next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_next_step
    list;
  success_response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__success_response
    list;
  timeout_conditional :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional
    list;
  timeout_next_step :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step
    list;
  timeout_response :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification *)

type aws_lexv2models_intent__fulfillment_code_hook = {
  active : bool prop option; [@option]  (** active *)
  enabled : bool prop;  (** enabled *)
  fulfillment_updates_specification :
    aws_lexv2models_intent__fulfillment_code_hook__fulfillment_updates_specification
    list;
  post_fulfillment_status_specification :
    aws_lexv2models_intent__fulfillment_code_hook__post_fulfillment_status_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__fulfillment_code_hook *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response *)

type aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification = {
  failure_conditional :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_conditional
    list;
  failure_next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_next_step
    list;
  failure_response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__failure_response
    list;
  success_conditional :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_conditional
    list;
  success_next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_next_step
    list;
  success_response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__success_response
    list;
  timeout_conditional :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional
    list;
  timeout_next_step :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step
    list;
  timeout_response :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification *)

type aws_lexv2models_intent__initial_response_setting__code_hook = {
  active : bool prop;  (** active *)
  enable_code_hook_invocation : bool prop;
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
  post_code_hook_specification :
    aws_lexv2models_intent__initial_response_setting__code_hook__post_code_hook_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__code_hook *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__condition *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response *)

type aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__condition
    list;
  next_step :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response *)

type aws_lexv2models_intent__initial_response_setting__conditional__default_branch = {
  next_step :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__next_step
    list;
  response :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional__default_branch *)

type aws_lexv2models_intent__initial_response_setting__conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    aws_lexv2models_intent__initial_response_setting__conditional__conditional_branch
    list;
  default_branch :
    aws_lexv2models_intent__initial_response_setting__conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__conditional *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__custom_payload *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__plain_text_message *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__ssml_message *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation = {
  custom_payload :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__custom_payload
    list;
  image_response_card :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation *)

type aws_lexv2models_intent__initial_response_setting__initial_response__message_group = {
  message :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__message
    list;
  variation :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response__message_group *)

type aws_lexv2models_intent__initial_response_setting__initial_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    aws_lexv2models_intent__initial_response_setting__initial_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__initial_response *)

type aws_lexv2models_intent__initial_response_setting__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__next_step__dialog_action *)

type aws_lexv2models_intent__initial_response_setting__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__next_step__intent__slot__value *)

type aws_lexv2models_intent__initial_response_setting__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    aws_lexv2models_intent__initial_response_setting__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__next_step__intent__slot *)

type aws_lexv2models_intent__initial_response_setting__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    aws_lexv2models_intent__initial_response_setting__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__next_step__intent *)

type aws_lexv2models_intent__initial_response_setting__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    aws_lexv2models_intent__initial_response_setting__next_step__dialog_action
    list;
  intent :
    aws_lexv2models_intent__initial_response_setting__next_step__intent
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting__next_step *)

type aws_lexv2models_intent__initial_response_setting = {
  code_hook :
    aws_lexv2models_intent__initial_response_setting__code_hook list;
  conditional :
    aws_lexv2models_intent__initial_response_setting__conditional
    list;
  initial_response :
    aws_lexv2models_intent__initial_response_setting__initial_response
    list;
  next_step :
    aws_lexv2models_intent__initial_response_setting__next_step list;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__initial_response_setting *)

type aws_lexv2models_intent__input_context = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__input_context *)

type aws_lexv2models_intent__kendra_configuration = {
  kendra_index : string prop;  (** kendra_index *)
  query_filter_string : string prop option; [@option]
      (** query_filter_string *)
  query_filter_string_enabled : bool prop option; [@option]
      (** query_filter_string_enabled *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__kendra_configuration *)

type aws_lexv2models_intent__output_context = {
  name : string prop;  (** name *)
  time_to_live_in_seconds : float prop;
      (** time_to_live_in_seconds *)
  turns_to_live : float prop;  (** turns_to_live *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__output_context *)

type aws_lexv2models_intent__sample_utterance = {
  utterance : string prop;  (** utterance *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__sample_utterance *)

type aws_lexv2models_intent__slot_priority = {
  priority : float prop;  (** priority *)
  slot_id : string prop;  (** slot_id *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__slot_priority *)

type aws_lexv2models_intent__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_lexv2models_intent__timeouts *)

type aws_lexv2models_intent = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  locale_id : string prop;  (** locale_id *)
  name : string prop;  (** name *)
  parent_intent_signature : string prop option; [@option]
      (** parent_intent_signature *)
  closing_setting : aws_lexv2models_intent__closing_setting list;
  confirmation_setting :
    aws_lexv2models_intent__confirmation_setting list;
  dialog_code_hook : aws_lexv2models_intent__dialog_code_hook list;
  fulfillment_code_hook :
    aws_lexv2models_intent__fulfillment_code_hook list;
  initial_response_setting :
    aws_lexv2models_intent__initial_response_setting list;
  input_context : aws_lexv2models_intent__input_context list;
  kendra_configuration :
    aws_lexv2models_intent__kendra_configuration list;
  output_context : aws_lexv2models_intent__output_context list;
  sample_utterance : aws_lexv2models_intent__sample_utterance list;
  slot_priority : aws_lexv2models_intent__slot_priority list;
  timeouts : aws_lexv2models_intent__timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent *)

let aws_lexv2models_intent ?description ?parent_intent_signature
    ?timeouts ~bot_id ~bot_version ~locale_id ~name ~closing_setting
    ~confirmation_setting ~dialog_code_hook ~fulfillment_code_hook
    ~initial_response_setting ~input_context ~kendra_configuration
    ~output_context ~sample_utterance ~slot_priority __resource_id =
  let __resource_type = "aws_lexv2models_intent" in
  let __resource =
    {
      bot_id;
      bot_version;
      description;
      locale_id;
      name;
      parent_intent_signature;
      closing_setting;
      confirmation_setting;
      dialog_code_hook;
      fulfillment_code_hook;
      initial_response_setting;
      input_context;
      kendra_configuration;
      output_context;
      sample_utterance;
      slot_priority;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_intent __resource);
  ()
