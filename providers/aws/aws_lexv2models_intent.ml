(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type closing_setting__closing_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message__custom_payload *)

type closing_setting__closing_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message__image_response_card__button *)

type closing_setting__closing_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__closing_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message__image_response_card *)

type closing_setting__closing_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message__plain_text_message *)

type closing_setting__closing_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message__ssml_message *)

type closing_setting__closing_response__message_group__message = {
  custom_payload :
    closing_setting__closing_response__message_group__message__custom_payload
    list;
  image_response_card :
    closing_setting__closing_response__message_group__message__image_response_card
    list;
  plain_text_message :
    closing_setting__closing_response__message_group__message__plain_text_message
    list;
  ssml_message :
    closing_setting__closing_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__message *)

type closing_setting__closing_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation__custom_payload *)

type closing_setting__closing_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation__image_response_card__button *)

type closing_setting__closing_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__closing_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation__image_response_card *)

type closing_setting__closing_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation__plain_text_message *)

type closing_setting__closing_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation__ssml_message *)

type closing_setting__closing_response__message_group__variation = {
  custom_payload :
    closing_setting__closing_response__message_group__variation__custom_payload
    list;
  image_response_card :
    closing_setting__closing_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    closing_setting__closing_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    closing_setting__closing_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group__variation *)

type closing_setting__closing_response__message_group = {
  message :
    closing_setting__closing_response__message_group__message list;
  variation :
    closing_setting__closing_response__message_group__variation list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response__message_group *)

type closing_setting__closing_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    closing_setting__closing_response__message_group list;
}
[@@deriving yojson_of]
(** closing_setting__closing_response *)

type closing_setting__conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__condition *)

type closing_setting__conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__next_step__dialog_action *)

type closing_setting__conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__next_step__intent__slot__value *)

type closing_setting__conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    closing_setting__conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__next_step__intent__slot *)

type closing_setting__conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    closing_setting__conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__next_step__intent *)

type closing_setting__conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    closing_setting__conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    closing_setting__conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__next_step *)

type closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload *)

type closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card *)

type closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message *)

type closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message *)

type closing_setting__conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__message *)

type closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload *)

type closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card *)

type closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message *)

type closing_setting__conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group__variation *)

type closing_setting__conditional__conditional_branch__response__message_group = {
  message :
    closing_setting__conditional__conditional_branch__response__message_group__message
    list;
  variation :
    closing_setting__conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response__message_group *)

type closing_setting__conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    closing_setting__conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch__response *)

type closing_setting__conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    closing_setting__conditional__conditional_branch__condition list;
  next_step :
    closing_setting__conditional__conditional_branch__next_step list;
  response :
    closing_setting__conditional__conditional_branch__response list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__conditional_branch *)

type closing_setting__conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__next_step__dialog_action *)

type closing_setting__conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__next_step__intent__slot__value *)

type closing_setting__conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    closing_setting__conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__next_step__intent__slot *)

type closing_setting__conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    closing_setting__conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__next_step__intent *)

type closing_setting__conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    closing_setting__conditional__default_branch__next_step__dialog_action
    list;
  intent :
    closing_setting__conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__next_step *)

type closing_setting__conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message__custom_payload *)

type closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button *)

type closing_setting__conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message__image_response_card *)

type closing_setting__conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message__plain_text_message *)

type closing_setting__conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message__ssml_message *)

type closing_setting__conditional__default_branch__response__message_group__message = {
  custom_payload :
    closing_setting__conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    closing_setting__conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    closing_setting__conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    closing_setting__conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__message *)

type closing_setting__conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation__custom_payload *)

type closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button *)

type closing_setting__conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation__image_response_card *)

type closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message *)

type closing_setting__conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation__ssml_message *)

type closing_setting__conditional__default_branch__response__message_group__variation = {
  custom_payload :
    closing_setting__conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    closing_setting__conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    closing_setting__conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group__variation *)

type closing_setting__conditional__default_branch__response__message_group = {
  message :
    closing_setting__conditional__default_branch__response__message_group__message
    list;
  variation :
    closing_setting__conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response__message_group *)

type closing_setting__conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    closing_setting__conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch__response *)

type closing_setting__conditional__default_branch = {
  next_step :
    closing_setting__conditional__default_branch__next_step list;
  response :
    closing_setting__conditional__default_branch__response list;
}
[@@deriving yojson_of]
(** closing_setting__conditional__default_branch *)

type closing_setting__conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    closing_setting__conditional__conditional_branch list;
  default_branch : closing_setting__conditional__default_branch list;
}
[@@deriving yojson_of]
(** closing_setting__conditional *)

type closing_setting__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** closing_setting__next_step__dialog_action *)

type closing_setting__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** closing_setting__next_step__intent__slot__value *)

type closing_setting__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value : closing_setting__next_step__intent__slot__value list;
}
[@@deriving yojson_of]
(** closing_setting__next_step__intent__slot *)

type closing_setting__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot : closing_setting__next_step__intent__slot list;
}
[@@deriving yojson_of]
(** closing_setting__next_step__intent *)

type closing_setting__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action : closing_setting__next_step__dialog_action list;
  intent : closing_setting__next_step__intent list;
}
[@@deriving yojson_of]
(** closing_setting__next_step *)

type closing_setting = {
  active : bool prop option; [@option]  (** active *)
  closing_response : closing_setting__closing_response list;
  conditional : closing_setting__conditional list;
  next_step : closing_setting__next_step list;
}
[@@deriving yojson_of]
(** closing_setting *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch = {
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_conditional *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__failure_response *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch = {
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_conditional *)

type confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__success_response *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch = {
  next_step :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    list;
  intent :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation = {
  custom_payload :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group = {
  message :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    list;
  variation :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group *)

type confirmation_setting__code_hook__post_code_hook_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification__timeout_response *)

type confirmation_setting__code_hook__post_code_hook_specification = {
  failure_conditional :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional
    list;
  failure_next_step :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step
    list;
  failure_response :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response
    list;
  success_conditional :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional
    list;
  success_next_step :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step
    list;
  success_response :
    confirmation_setting__code_hook__post_code_hook_specification__success_response
    list;
  timeout_conditional :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional
    list;
  timeout_next_step :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step
    list;
  timeout_response :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook__post_code_hook_specification *)

type confirmation_setting__code_hook = {
  active : bool prop;  (** active *)
  enable_code_hook_invocation : bool prop;
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
  post_code_hook_specification :
    confirmation_setting__code_hook__post_code_hook_specification
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__code_hook *)

type confirmation_setting__confirmation_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__condition *)

type confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__confirmation_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__next_step *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__confirmation_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response__message_group *)

type confirmation_setting__confirmation_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch__response *)

type confirmation_setting__confirmation_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__confirmation_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__confirmation_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__conditional_branch *)

type confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__confirmation_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__next_step__intent *)

type confirmation_setting__confirmation_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__next_step *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__message *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__confirmation_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response__message_group *)

type confirmation_setting__confirmation_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch__response *)

type confirmation_setting__confirmation_conditional__default_branch = {
  next_step :
    confirmation_setting__confirmation_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__confirmation_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional__default_branch *)

type confirmation_setting__confirmation_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__confirmation_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__confirmation_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_conditional *)

type confirmation_setting__confirmation_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_next_step__dialog_action *)

type confirmation_setting__confirmation_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_next_step__intent__slot__value *)

type confirmation_setting__confirmation_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__confirmation_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_next_step__intent__slot *)

type confirmation_setting__confirmation_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__confirmation_next_step__intent__slot list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_next_step__intent *)

type confirmation_setting__confirmation_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__confirmation_next_step__dialog_action list;
  intent : confirmation_setting__confirmation_next_step__intent list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_next_step *)

type confirmation_setting__confirmation_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message__custom_payload *)

type confirmation_setting__confirmation_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message__image_response_card__button *)

type confirmation_setting__confirmation_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message__image_response_card *)

type confirmation_setting__confirmation_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message__plain_text_message *)

type confirmation_setting__confirmation_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message__ssml_message *)

type confirmation_setting__confirmation_response__message_group__message = {
  custom_payload :
    confirmation_setting__confirmation_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__message *)

type confirmation_setting__confirmation_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation__custom_payload *)

type confirmation_setting__confirmation_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation__image_response_card__button *)

type confirmation_setting__confirmation_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__confirmation_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation__image_response_card *)

type confirmation_setting__confirmation_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation__plain_text_message *)

type confirmation_setting__confirmation_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation__ssml_message *)

type confirmation_setting__confirmation_response__message_group__variation = {
  custom_payload :
    confirmation_setting__confirmation_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__confirmation_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__confirmation_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__confirmation_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group__variation *)

type confirmation_setting__confirmation_response__message_group = {
  message :
    confirmation_setting__confirmation_response__message_group__message
    list;
  variation :
    confirmation_setting__confirmation_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response__message_group *)

type confirmation_setting__confirmation_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__confirmation_response__message_group list;
}
[@@deriving yojson_of]
(** confirmation_setting__confirmation_response *)

type confirmation_setting__declination_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__condition *)

type confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__declination_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__declination_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__next_step *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__declination_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response__message_group *)

type confirmation_setting__declination_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch__response *)

type confirmation_setting__declination_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__declination_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__declination_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__declination_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__conditional_branch *)

type confirmation_setting__declination_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__declination_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__declination_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__declination_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__next_step__intent *)

type confirmation_setting__declination_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__declination_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__declination_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__next_step *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__message *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__declination_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__declination_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response__message_group *)

type confirmation_setting__declination_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__declination_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch__response *)

type confirmation_setting__declination_conditional__default_branch = {
  next_step :
    confirmation_setting__declination_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__declination_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional__default_branch *)

type confirmation_setting__declination_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__declination_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__declination_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_conditional *)

type confirmation_setting__declination_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_next_step__dialog_action *)

type confirmation_setting__declination_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_next_step__intent__slot__value *)

type confirmation_setting__declination_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__declination_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_next_step__intent__slot *)

type confirmation_setting__declination_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__declination_next_step__intent__slot list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_next_step__intent *)

type confirmation_setting__declination_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__declination_next_step__dialog_action list;
  intent : confirmation_setting__declination_next_step__intent list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_next_step *)

type confirmation_setting__declination_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message__custom_payload *)

type confirmation_setting__declination_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message__image_response_card__button *)

type confirmation_setting__declination_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message__image_response_card *)

type confirmation_setting__declination_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message__plain_text_message *)

type confirmation_setting__declination_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message__ssml_message *)

type confirmation_setting__declination_response__message_group__message = {
  custom_payload :
    confirmation_setting__declination_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__message *)

type confirmation_setting__declination_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation__custom_payload *)

type confirmation_setting__declination_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation__image_response_card__button *)

type confirmation_setting__declination_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__declination_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation__image_response_card *)

type confirmation_setting__declination_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation__plain_text_message *)

type confirmation_setting__declination_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation__ssml_message *)

type confirmation_setting__declination_response__message_group__variation = {
  custom_payload :
    confirmation_setting__declination_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__declination_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__declination_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__declination_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group__variation *)

type confirmation_setting__declination_response__message_group = {
  message :
    confirmation_setting__declination_response__message_group__message
    list;
  variation :
    confirmation_setting__declination_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response__message_group *)

type confirmation_setting__declination_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__declination_response__message_group list;
}
[@@deriving yojson_of]
(** confirmation_setting__declination_response *)

type confirmation_setting__elicitation_code_hook = {
  enable_code_hook_invocation : bool prop option; [@option]
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
}
[@@deriving yojson_of]
(** confirmation_setting__elicitation_code_hook *)

type confirmation_setting__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__condition *)

type confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action *)

type confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot *)

type confirmation_setting__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__next_step__intent *)

type confirmation_setting__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__next_step *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__message *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation *)

type confirmation_setting__failure_conditional__conditional_branch__response__message_group = {
  message :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response__message_group *)

type confirmation_setting__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch__response *)

type confirmation_setting__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    confirmation_setting__failure_conditional__conditional_branch__condition
    list;
  next_step :
    confirmation_setting__failure_conditional__conditional_branch__next_step
    list;
  response :
    confirmation_setting__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__conditional_branch *)

type confirmation_setting__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__next_step__dialog_action *)

type confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value *)

type confirmation_setting__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__next_step__intent__slot *)

type confirmation_setting__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    confirmation_setting__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__next_step__intent *)

type confirmation_setting__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    confirmation_setting__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__next_step *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__message *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type confirmation_setting__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group__variation *)

type confirmation_setting__failure_conditional__default_branch__response__message_group = {
  message :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response__message_group *)

type confirmation_setting__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch__response *)

type confirmation_setting__failure_conditional__default_branch = {
  next_step :
    confirmation_setting__failure_conditional__default_branch__next_step
    list;
  response :
    confirmation_setting__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional__default_branch *)

type confirmation_setting__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    confirmation_setting__failure_conditional__conditional_branch
    list;
  default_branch :
    confirmation_setting__failure_conditional__default_branch list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_conditional *)

type confirmation_setting__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_next_step__dialog_action *)

type confirmation_setting__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_next_step__intent__slot__value *)

type confirmation_setting__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    confirmation_setting__failure_next_step__intent__slot__value list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_next_step__intent__slot *)

type confirmation_setting__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot : confirmation_setting__failure_next_step__intent__slot list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_next_step__intent *)

type confirmation_setting__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    confirmation_setting__failure_next_step__dialog_action list;
  intent : confirmation_setting__failure_next_step__intent list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_next_step *)

type confirmation_setting__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message__custom_payload *)

type confirmation_setting__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message__image_response_card__button *)

type confirmation_setting__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message__image_response_card *)

type confirmation_setting__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message__plain_text_message *)

type confirmation_setting__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message__ssml_message *)

type confirmation_setting__failure_response__message_group__message = {
  custom_payload :
    confirmation_setting__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__message *)

type confirmation_setting__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation__custom_payload *)

type confirmation_setting__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation__image_response_card__button *)

type confirmation_setting__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation__image_response_card *)

type confirmation_setting__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation__plain_text_message *)

type confirmation_setting__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation__ssml_message *)

type confirmation_setting__failure_response__message_group__variation = {
  custom_payload :
    confirmation_setting__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group__variation *)

type confirmation_setting__failure_response__message_group = {
  message :
    confirmation_setting__failure_response__message_group__message
    list;
  variation :
    confirmation_setting__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response__message_group *)

type confirmation_setting__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    confirmation_setting__failure_response__message_group list;
}
[@@deriving yojson_of]
(** confirmation_setting__failure_response *)

type confirmation_setting__prompt_specification__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message__custom_payload *)

type confirmation_setting__prompt_specification__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message__image_response_card__button *)

type confirmation_setting__prompt_specification__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__prompt_specification__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message__image_response_card *)

type confirmation_setting__prompt_specification__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message__plain_text_message *)

type confirmation_setting__prompt_specification__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message__ssml_message *)

type confirmation_setting__prompt_specification__message_group__message = {
  custom_payload :
    confirmation_setting__prompt_specification__message_group__message__custom_payload
    list;
  image_response_card :
    confirmation_setting__prompt_specification__message_group__message__image_response_card
    list;
  plain_text_message :
    confirmation_setting__prompt_specification__message_group__message__plain_text_message
    list;
  ssml_message :
    confirmation_setting__prompt_specification__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__message *)

type confirmation_setting__prompt_specification__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation__custom_payload *)

type confirmation_setting__prompt_specification__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation__image_response_card__button *)

type confirmation_setting__prompt_specification__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    confirmation_setting__prompt_specification__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation__image_response_card *)

type confirmation_setting__prompt_specification__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation__plain_text_message *)

type confirmation_setting__prompt_specification__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation__ssml_message *)

type confirmation_setting__prompt_specification__message_group__variation = {
  custom_payload :
    confirmation_setting__prompt_specification__message_group__variation__custom_payload
    list;
  image_response_card :
    confirmation_setting__prompt_specification__message_group__variation__image_response_card
    list;
  plain_text_message :
    confirmation_setting__prompt_specification__message_group__variation__plain_text_message
    list;
  ssml_message :
    confirmation_setting__prompt_specification__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group__variation *)

type confirmation_setting__prompt_specification__message_group = {
  message :
    confirmation_setting__prompt_specification__message_group__message
    list;
  variation :
    confirmation_setting__prompt_specification__message_group__variation
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__message_group *)

type confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types = {
  allow_audio_input : bool prop;  (** allow_audio_input *)
  allow_dtmf_input : bool prop;  (** allow_dtmf_input *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types *)

type confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification = {
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length_ms : float prop;  (** max_length_ms *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification *)

type confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification = {
  deletion_character : string prop;  (** deletion_character *)
  end_character : string prop;  (** end_character *)
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length : float prop;  (** max_length *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification *)

type confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
  audio_specification :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    list;
  dtmf_specification :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification *)

type confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification *)

type confirmation_setting__prompt_specification__prompt_attempts_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  map_block_key : string prop;  (** map_block_key *)
  allowed_input_types :
    confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    list;
  audio_and_dtmf_input_specification :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    list;
  text_input_specification :
    confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification__prompt_attempts_specification *)

type confirmation_setting__prompt_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  max_retries : float prop;  (** max_retries *)
  message_selection_strategy : string prop option; [@option]
      (** message_selection_strategy *)
  message_group :
    confirmation_setting__prompt_specification__message_group list;
  prompt_attempts_specification :
    confirmation_setting__prompt_specification__prompt_attempts_specification
    list;
}
[@@deriving yojson_of]
(** confirmation_setting__prompt_specification *)

type confirmation_setting = {
  active : bool prop option; [@option]  (** active *)
  code_hook : confirmation_setting__code_hook list;
  confirmation_conditional :
    confirmation_setting__confirmation_conditional list;
  confirmation_next_step :
    confirmation_setting__confirmation_next_step list;
  confirmation_response :
    confirmation_setting__confirmation_response list;
  declination_conditional :
    confirmation_setting__declination_conditional list;
  declination_next_step :
    confirmation_setting__declination_next_step list;
  declination_response :
    confirmation_setting__declination_response list;
  elicitation_code_hook :
    confirmation_setting__elicitation_code_hook list;
  failure_conditional :
    confirmation_setting__failure_conditional list;
  failure_next_step : confirmation_setting__failure_next_step list;
  failure_response : confirmation_setting__failure_response list;
  prompt_specification :
    confirmation_setting__prompt_specification list;
}
[@@deriving yojson_of]
(** confirmation_setting *)

type dialog_code_hook = { enabled : bool prop  (** enabled *) }
[@@deriving yojson_of]
(** dialog_code_hook *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group = {
  message :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message
    list;
  variation :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group *)

type fulfillment_code_hook__fulfillment_updates_specification__start_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  delay_in_seconds : float prop option; [@option]
      (** delay_in_seconds *)
  message_group :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__start_response *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group = {
  message :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message
    list;
  variation :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group *)

type fulfillment_code_hook__fulfillment_updates_specification__update_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  frequency_in_seconds : float prop;  (** frequency_in_seconds *)
  message_group :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification__update_response *)

type fulfillment_code_hook__fulfillment_updates_specification = {
  active : bool prop;  (** active *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  start_response :
    fulfillment_code_hook__fulfillment_updates_specification__start_response
    list;
  update_response :
    fulfillment_code_hook__fulfillment_updates_specification__update_response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__fulfillment_updates_specification *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch = {
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__failure_response *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch = {
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch
    list;
  default_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_conditional *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__success_response *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch = {
  next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action
    list;
  intent :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation = {
  custom_payload :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group = {
  message :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message
    list;
  variation :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group *)

type fulfillment_code_hook__post_fulfillment_status_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification__timeout_response *)

type fulfillment_code_hook__post_fulfillment_status_specification = {
  failure_conditional :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional
    list;
  failure_next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step
    list;
  failure_response :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response
    list;
  success_conditional :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional
    list;
  success_next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step
    list;
  success_response :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response
    list;
  timeout_conditional :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional
    list;
  timeout_next_step :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step
    list;
  timeout_response :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook__post_fulfillment_status_specification *)

type fulfillment_code_hook = {
  active : bool prop option; [@option]  (** active *)
  enabled : bool prop;  (** enabled *)
  fulfillment_updates_specification :
    fulfillment_code_hook__fulfillment_updates_specification list;
  post_fulfillment_status_specification :
    fulfillment_code_hook__post_fulfillment_status_specification list;
}
[@@deriving yojson_of]
(** fulfillment_code_hook *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    list;
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch = {
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    list;
  default_branch :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_conditional *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__failure_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__failure_response *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    list;
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch = {
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__success_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    list;
  default_branch :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_conditional *)

type initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__success_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__success_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__success_response *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    list;
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch = {
  next_step :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    list;
  response :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    list;
  default_branch :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    list;
  intent :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation = {
  custom_payload :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group = {
  message :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    list;
  variation :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group *)

type initial_response_setting__code_hook__post_code_hook_specification__timeout_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification__timeout_response *)

type initial_response_setting__code_hook__post_code_hook_specification = {
  failure_conditional :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional
    list;
  failure_next_step :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step
    list;
  failure_response :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response
    list;
  success_conditional :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional
    list;
  success_next_step :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step
    list;
  success_response :
    initial_response_setting__code_hook__post_code_hook_specification__success_response
    list;
  timeout_conditional :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional
    list;
  timeout_next_step :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step
    list;
  timeout_response :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook__post_code_hook_specification *)

type initial_response_setting__code_hook = {
  active : bool prop;  (** active *)
  enable_code_hook_invocation : bool prop;
      (** enable_code_hook_invocation *)
  invocation_label : string prop option; [@option]
      (** invocation_label *)
  post_code_hook_specification :
    initial_response_setting__code_hook__post_code_hook_specification
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__code_hook *)

type initial_response_setting__conditional__conditional_branch__condition = {
  expression_string : string prop;  (** expression_string *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__condition *)

type initial_response_setting__conditional__conditional_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__next_step__dialog_action *)

type initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value *)

type initial_response_setting__conditional__conditional_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__next_step__intent__slot *)

type initial_response_setting__conditional__conditional_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__conditional__conditional_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__next_step__intent *)

type initial_response_setting__conditional__conditional_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__conditional__conditional_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__conditional__conditional_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__next_step *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message *)

type initial_response_setting__conditional__conditional_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__message *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__conditional__conditional_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group__variation *)

type initial_response_setting__conditional__conditional_branch__response__message_group = {
  message :
    initial_response_setting__conditional__conditional_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response__message_group *)

type initial_response_setting__conditional__conditional_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__conditional__conditional_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch__response *)

type initial_response_setting__conditional__conditional_branch = {
  name : string prop;  (** name *)
  condition :
    initial_response_setting__conditional__conditional_branch__condition
    list;
  next_step :
    initial_response_setting__conditional__conditional_branch__next_step
    list;
  response :
    initial_response_setting__conditional__conditional_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__conditional_branch *)

type initial_response_setting__conditional__default_branch__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__next_step__dialog_action *)

type initial_response_setting__conditional__default_branch__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__next_step__intent__slot__value *)

type initial_response_setting__conditional__default_branch__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__conditional__default_branch__next_step__intent__slot__value
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__next_step__intent__slot *)

type initial_response_setting__conditional__default_branch__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot :
    initial_response_setting__conditional__default_branch__next_step__intent__slot
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__next_step__intent *)

type initial_response_setting__conditional__default_branch__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__conditional__default_branch__next_step__dialog_action
    list;
  intent :
    initial_response_setting__conditional__default_branch__next_step__intent
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__next_step *)

type initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload *)

type initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button *)

type initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card *)

type initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message *)

type initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message *)

type initial_response_setting__conditional__default_branch__response__message_group__message = {
  custom_payload :
    initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__message *)

type initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload *)

type initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button *)

type initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card *)

type initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message *)

type initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message *)

type initial_response_setting__conditional__default_branch__response__message_group__variation = {
  custom_payload :
    initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group__variation *)

type initial_response_setting__conditional__default_branch__response__message_group = {
  message :
    initial_response_setting__conditional__default_branch__response__message_group__message
    list;
  variation :
    initial_response_setting__conditional__default_branch__response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response__message_group *)

type initial_response_setting__conditional__default_branch__response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__conditional__default_branch__response__message_group
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch__response *)

type initial_response_setting__conditional__default_branch = {
  next_step :
    initial_response_setting__conditional__default_branch__next_step
    list;
  response :
    initial_response_setting__conditional__default_branch__response
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional__default_branch *)

type initial_response_setting__conditional = {
  active : bool prop;  (** active *)
  conditional_branch :
    initial_response_setting__conditional__conditional_branch list;
  default_branch :
    initial_response_setting__conditional__default_branch list;
}
[@@deriving yojson_of]
(** initial_response_setting__conditional *)

type initial_response_setting__initial_response__message_group__message__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message__custom_payload *)

type initial_response_setting__initial_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message__image_response_card__button *)

type initial_response_setting__initial_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__initial_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message__image_response_card *)

type initial_response_setting__initial_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message__plain_text_message *)

type initial_response_setting__initial_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message__ssml_message *)

type initial_response_setting__initial_response__message_group__message = {
  custom_payload :
    initial_response_setting__initial_response__message_group__message__custom_payload
    list;
  image_response_card :
    initial_response_setting__initial_response__message_group__message__image_response_card
    list;
  plain_text_message :
    initial_response_setting__initial_response__message_group__message__plain_text_message
    list;
  ssml_message :
    initial_response_setting__initial_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__message *)

type initial_response_setting__initial_response__message_group__variation__custom_payload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation__custom_payload *)

type initial_response_setting__initial_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation__image_response_card__button *)

type initial_response_setting__initial_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    initial_response_setting__initial_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation__image_response_card *)

type initial_response_setting__initial_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation__plain_text_message *)

type initial_response_setting__initial_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation__ssml_message *)

type initial_response_setting__initial_response__message_group__variation = {
  custom_payload :
    initial_response_setting__initial_response__message_group__variation__custom_payload
    list;
  image_response_card :
    initial_response_setting__initial_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    initial_response_setting__initial_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    initial_response_setting__initial_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group__variation *)

type initial_response_setting__initial_response__message_group = {
  message :
    initial_response_setting__initial_response__message_group__message
    list;
  variation :
    initial_response_setting__initial_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response__message_group *)

type initial_response_setting__initial_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    initial_response_setting__initial_response__message_group list;
}
[@@deriving yojson_of]
(** initial_response_setting__initial_response *)

type initial_response_setting__next_step__dialog_action = {
  slot_to_elicit : string prop option; [@option]
      (** slot_to_elicit *)
  suppress_next_message : bool prop option; [@option]
      (** suppress_next_message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** initial_response_setting__next_step__dialog_action *)

type initial_response_setting__next_step__intent__slot__value = {
  interpreted_value : string prop option; [@option]
      (** interpreted_value *)
}
[@@deriving yojson_of]
(** initial_response_setting__next_step__intent__slot__value *)

type initial_response_setting__next_step__intent__slot = {
  map_block_key : string prop;  (** map_block_key *)
  shape : string prop option; [@option]  (** shape *)
  value :
    initial_response_setting__next_step__intent__slot__value list;
}
[@@deriving yojson_of]
(** initial_response_setting__next_step__intent__slot *)

type initial_response_setting__next_step__intent = {
  name : string prop option; [@option]  (** name *)
  slot : initial_response_setting__next_step__intent__slot list;
}
[@@deriving yojson_of]
(** initial_response_setting__next_step__intent *)

type initial_response_setting__next_step = {
  session_attributes : (string * string prop) list option; [@option]
      (** session_attributes *)
  dialog_action :
    initial_response_setting__next_step__dialog_action list;
  intent : initial_response_setting__next_step__intent list;
}
[@@deriving yojson_of]
(** initial_response_setting__next_step *)

type initial_response_setting = {
  code_hook : initial_response_setting__code_hook list;
  conditional : initial_response_setting__conditional list;
  initial_response : initial_response_setting__initial_response list;
  next_step : initial_response_setting__next_step list;
}
[@@deriving yojson_of]
(** initial_response_setting *)

type input_context = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** input_context *)

type kendra_configuration = {
  kendra_index : string prop;  (** kendra_index *)
  query_filter_string : string prop option; [@option]
      (** query_filter_string *)
  query_filter_string_enabled : bool prop option; [@option]
      (** query_filter_string_enabled *)
}
[@@deriving yojson_of]
(** kendra_configuration *)

type output_context = {
  name : string prop;  (** name *)
  time_to_live_in_seconds : float prop;
      (** time_to_live_in_seconds *)
  turns_to_live : float prop;  (** turns_to_live *)
}
[@@deriving yojson_of]
(** output_context *)

type sample_utterance = { utterance : string prop  (** utterance *) }
[@@deriving yojson_of]
(** sample_utterance *)

type slot_priority = {
  priority : float prop;  (** priority *)
  slot_id : string prop;  (** slot_id *)
}
[@@deriving yojson_of]
(** slot_priority *)

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

type aws_lexv2models_intent = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  locale_id : string prop;  (** locale_id *)
  name : string prop;  (** name *)
  parent_intent_signature : string prop option; [@option]
      (** parent_intent_signature *)
  closing_setting : closing_setting list;
  confirmation_setting : confirmation_setting list;
  dialog_code_hook : dialog_code_hook list;
  fulfillment_code_hook : fulfillment_code_hook list;
  initial_response_setting : initial_response_setting list;
  input_context : input_context list;
  kendra_configuration : kendra_configuration list;
  output_context : output_context list;
  sample_utterance : sample_utterance list;
  slot_priority : slot_priority list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_intent *)

let closing_setting__closing_response__message_group__message__custom_payload
    ~value () :
    closing_setting__closing_response__message_group__message__custom_payload
    =
  { value }

let closing_setting__closing_response__message_group__message__image_response_card__button
    ~text ~value () :
    closing_setting__closing_response__message_group__message__image_response_card__button
    =
  { text; value }

let closing_setting__closing_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__closing_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__closing_response__message_group__message__plain_text_message
    ~value () :
    closing_setting__closing_response__message_group__message__plain_text_message
    =
  { value }

let closing_setting__closing_response__message_group__message__ssml_message
    ~value () :
    closing_setting__closing_response__message_group__message__ssml_message
    =
  { value }

let closing_setting__closing_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__closing_response__message_group__message =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__closing_response__message_group__variation__custom_payload
    ~value () :
    closing_setting__closing_response__message_group__variation__custom_payload
    =
  { value }

let closing_setting__closing_response__message_group__variation__image_response_card__button
    ~text ~value () :
    closing_setting__closing_response__message_group__variation__image_response_card__button
    =
  { text; value }

let closing_setting__closing_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__closing_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__closing_response__message_group__variation__plain_text_message
    ~value () :
    closing_setting__closing_response__message_group__variation__plain_text_message
    =
  { value }

let closing_setting__closing_response__message_group__variation__ssml_message
    ~value () :
    closing_setting__closing_response__message_group__variation__ssml_message
    =
  { value }

let closing_setting__closing_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__closing_response__message_group__variation =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__closing_response__message_group ~message
    ~variation () : closing_setting__closing_response__message_group
    =
  { message; variation }

let closing_setting__closing_response ?allow_interrupt ~message_group
    () : closing_setting__closing_response =
  { allow_interrupt; message_group }

let closing_setting__conditional__conditional_branch__condition
    ~expression_string () :
    closing_setting__conditional__conditional_branch__condition =
  { expression_string }

let closing_setting__conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    closing_setting__conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let closing_setting__conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    closing_setting__conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let closing_setting__conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    closing_setting__conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let closing_setting__conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    closing_setting__conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let closing_setting__conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    closing_setting__conditional__conditional_branch__next_step =
  { session_attributes; dialog_action; intent }

let closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    closing_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let closing_setting__conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__conditional__conditional_branch__response__message_group
    ~message ~variation () :
    closing_setting__conditional__conditional_branch__response__message_group
    =
  { message; variation }

let closing_setting__conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    closing_setting__conditional__conditional_branch__response =
  { allow_interrupt; message_group }

let closing_setting__conditional__conditional_branch ~name ~condition
    ~next_step ~response () :
    closing_setting__conditional__conditional_branch =
  { name; condition; next_step; response }

let closing_setting__conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    closing_setting__conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let closing_setting__conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    closing_setting__conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let closing_setting__conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    closing_setting__conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let closing_setting__conditional__default_branch__next_step__intent
    ?name ~slot () :
    closing_setting__conditional__default_branch__next_step__intent =
  { name; slot }

let closing_setting__conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    closing_setting__conditional__default_branch__next_step =
  { session_attributes; dialog_action; intent }

let closing_setting__conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    closing_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let closing_setting__conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    closing_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let closing_setting__conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    closing_setting__conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    closing_setting__conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let closing_setting__conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    closing_setting__conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let closing_setting__conditional__default_branch__response__message_group
    ~message ~variation () :
    closing_setting__conditional__default_branch__response__message_group
    =
  { message; variation }

let closing_setting__conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    closing_setting__conditional__default_branch__response =
  { allow_interrupt; message_group }

let closing_setting__conditional__default_branch ~next_step ~response
    () : closing_setting__conditional__default_branch =
  { next_step; response }

let closing_setting__conditional ~active ~conditional_branch
    ~default_branch () : closing_setting__conditional =
  { active; conditional_branch; default_branch }

let closing_setting__next_step__dialog_action ?slot_to_elicit
    ?suppress_next_message ~type_ () :
    closing_setting__next_step__dialog_action =
  { slot_to_elicit; suppress_next_message; type_ }

let closing_setting__next_step__intent__slot__value
    ?interpreted_value () :
    closing_setting__next_step__intent__slot__value =
  { interpreted_value }

let closing_setting__next_step__intent__slot ?shape ~map_block_key
    ~value () : closing_setting__next_step__intent__slot =
  { map_block_key; shape; value }

let closing_setting__next_step__intent ?name ~slot () :
    closing_setting__next_step__intent =
  { name; slot }

let closing_setting__next_step ?session_attributes ~dialog_action
    ~intent () : closing_setting__next_step =
  { session_attributes; dialog_action; intent }

let closing_setting ?active ~closing_response ~conditional ~next_step
    () : closing_setting =
  { active; closing_response; conditional; next_step }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    =
  { next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__failure_conditional
    ~active ~conditional_branch ~default_branch () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_conditional
    =
  { active; conditional_branch; default_branch }

let confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__failure_next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__failure_response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__failure_response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    =
  { next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__success_conditional
    ~active ~conditional_branch ~default_branch () :
    confirmation_setting__code_hook__post_code_hook_specification__success_conditional
    =
  { active; conditional_branch; default_branch }

let confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__success_next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__success_next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__success_response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__success_response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    =
  { next_step; response }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional
    ~active ~conditional_branch ~default_branch () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_conditional
    =
  { active; conditional_branch; default_branch }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    ?name ~slot () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    =
  { name; slot }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    ~message ~variation () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    =
  { message; variation }

let confirmation_setting__code_hook__post_code_hook_specification__timeout_response
    ?allow_interrupt ~message_group () :
    confirmation_setting__code_hook__post_code_hook_specification__timeout_response
    =
  { allow_interrupt; message_group }

let confirmation_setting__code_hook__post_code_hook_specification
    ~failure_conditional ~failure_next_step ~failure_response
    ~success_conditional ~success_next_step ~success_response
    ~timeout_conditional ~timeout_next_step ~timeout_response () :
    confirmation_setting__code_hook__post_code_hook_specification =
  {
    failure_conditional;
    failure_next_step;
    failure_response;
    success_conditional;
    success_next_step;
    success_response;
    timeout_conditional;
    timeout_next_step;
    timeout_response;
  }

let confirmation_setting__code_hook ?invocation_label ~active
    ~enable_code_hook_invocation ~post_code_hook_specification () :
    confirmation_setting__code_hook =
  {
    active;
    enable_code_hook_invocation;
    invocation_label;
    post_code_hook_specification;
  }

let confirmation_setting__confirmation_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__confirmation_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__confirmation_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__confirmation_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__confirmation_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__confirmation_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__confirmation_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__confirmation_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__confirmation_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__confirmation_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__confirmation_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__confirmation_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__confirmation_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__confirmation_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__confirmation_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__confirmation_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__confirmation_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__confirmation_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__confirmation_conditional__default_branch =
  { next_step; response }

let confirmation_setting__confirmation_conditional ~active
    ~conditional_branch ~default_branch () :
    confirmation_setting__confirmation_conditional =
  { active; conditional_branch; default_branch }

let confirmation_setting__confirmation_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__confirmation_next_step__dialog_action =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__confirmation_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__confirmation_next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__confirmation_next_step__intent__slot ?shape
    ~map_block_key ~value () :
    confirmation_setting__confirmation_next_step__intent__slot =
  { map_block_key; shape; value }

let confirmation_setting__confirmation_next_step__intent ?name ~slot
    () : confirmation_setting__confirmation_next_step__intent =
  { name; slot }

let confirmation_setting__confirmation_next_step ?session_attributes
    ~dialog_action ~intent () :
    confirmation_setting__confirmation_next_step =
  { session_attributes; dialog_action; intent }

let confirmation_setting__confirmation_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__confirmation_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__confirmation_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__confirmation_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__confirmation_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__confirmation_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__confirmation_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__confirmation_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__confirmation_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__confirmation_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__confirmation_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__confirmation_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__confirmation_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__confirmation_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__confirmation_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__confirmation_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__confirmation_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__confirmation_response__message_group
    ~message ~variation () :
    confirmation_setting__confirmation_response__message_group =
  { message; variation }

let confirmation_setting__confirmation_response ?allow_interrupt
    ~message_group () : confirmation_setting__confirmation_response =
  { allow_interrupt; message_group }

let confirmation_setting__declination_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__declination_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__declination_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__declination_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__declination_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__declination_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__declination_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__declination_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__declination_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__declination_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__declination_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__declination_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let confirmation_setting__declination_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__declination_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__declination_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__declination_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__declination_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__declination_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__declination_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__declination_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__declination_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__declination_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__declination_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__declination_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__declination_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__declination_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__declination_conditional__default_branch =
  { next_step; response }

let confirmation_setting__declination_conditional ~active
    ~conditional_branch ~default_branch () :
    confirmation_setting__declination_conditional =
  { active; conditional_branch; default_branch }

let confirmation_setting__declination_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__declination_next_step__dialog_action =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__declination_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__declination_next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__declination_next_step__intent__slot ?shape
    ~map_block_key ~value () :
    confirmation_setting__declination_next_step__intent__slot =
  { map_block_key; shape; value }

let confirmation_setting__declination_next_step__intent ?name ~slot
    () : confirmation_setting__declination_next_step__intent =
  { name; slot }

let confirmation_setting__declination_next_step ?session_attributes
    ~dialog_action ~intent () :
    confirmation_setting__declination_next_step =
  { session_attributes; dialog_action; intent }

let confirmation_setting__declination_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__declination_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__declination_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__declination_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__declination_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__declination_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__declination_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__declination_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__declination_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__declination_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__declination_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__declination_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__declination_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__declination_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__declination_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__declination_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__declination_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__declination_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__declination_response__message_group
    ~message ~variation () :
    confirmation_setting__declination_response__message_group =
  { message; variation }

let confirmation_setting__declination_response ?allow_interrupt
    ~message_group () : confirmation_setting__declination_response =
  { allow_interrupt; message_group }

let confirmation_setting__elicitation_code_hook
    ?enable_code_hook_invocation ?invocation_label () :
    confirmation_setting__elicitation_code_hook =
  { enable_code_hook_invocation; invocation_label }

let confirmation_setting__failure_conditional__conditional_branch__condition
    ~expression_string () :
    confirmation_setting__failure_conditional__conditional_branch__condition
    =
  { expression_string }

let confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__failure_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__failure_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__failure_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__failure_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__failure_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__failure_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__failure_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__failure_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__failure_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    confirmation_setting__failure_conditional__conditional_branch =
  { name; condition; next_step; response }

let confirmation_setting__failure_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__failure_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__failure_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let confirmation_setting__failure_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    confirmation_setting__failure_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let confirmation_setting__failure_conditional__default_branch__next_step__intent
    ?name ~slot () :
    confirmation_setting__failure_conditional__default_branch__next_step__intent
    =
  { name; slot }

let confirmation_setting__failure_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    confirmation_setting__failure_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__failure_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_conditional__default_branch__response__message_group
    ~message ~variation () :
    confirmation_setting__failure_conditional__default_branch__response__message_group
    =
  { message; variation }

let confirmation_setting__failure_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    confirmation_setting__failure_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let confirmation_setting__failure_conditional__default_branch
    ~next_step ~response () :
    confirmation_setting__failure_conditional__default_branch =
  { next_step; response }

let confirmation_setting__failure_conditional ~active
    ~conditional_branch ~default_branch () :
    confirmation_setting__failure_conditional =
  { active; conditional_branch; default_branch }

let confirmation_setting__failure_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    confirmation_setting__failure_next_step__dialog_action =
  { slot_to_elicit; suppress_next_message; type_ }

let confirmation_setting__failure_next_step__intent__slot__value
    ?interpreted_value () :
    confirmation_setting__failure_next_step__intent__slot__value =
  { interpreted_value }

let confirmation_setting__failure_next_step__intent__slot ?shape
    ~map_block_key ~value () :
    confirmation_setting__failure_next_step__intent__slot =
  { map_block_key; shape; value }

let confirmation_setting__failure_next_step__intent ?name ~slot () :
    confirmation_setting__failure_next_step__intent =
  { name; slot }

let confirmation_setting__failure_next_step ?session_attributes
    ~dialog_action ~intent () :
    confirmation_setting__failure_next_step =
  { session_attributes; dialog_action; intent }

let confirmation_setting__failure_response__message_group__message__custom_payload
    ~value () :
    confirmation_setting__failure_response__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__failure_response__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_response__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_response__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__failure_response__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__failure_response__message_group__message__ssml_message
    ~value () :
    confirmation_setting__failure_response__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__failure_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_response__message_group__message =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_response__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__failure_response__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__failure_response__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__failure_response__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__failure_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__failure_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__failure_response__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__failure_response__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__failure_response__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__failure_response__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__failure_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__failure_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__failure_response__message_group ~message
    ~variation () :
    confirmation_setting__failure_response__message_group =
  { message; variation }

let confirmation_setting__failure_response ?allow_interrupt
    ~message_group () : confirmation_setting__failure_response =
  { allow_interrupt; message_group }

let confirmation_setting__prompt_specification__message_group__message__custom_payload
    ~value () :
    confirmation_setting__prompt_specification__message_group__message__custom_payload
    =
  { value }

let confirmation_setting__prompt_specification__message_group__message__image_response_card__button
    ~text ~value () :
    confirmation_setting__prompt_specification__message_group__message__image_response_card__button
    =
  { text; value }

let confirmation_setting__prompt_specification__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__prompt_specification__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__prompt_specification__message_group__message__plain_text_message
    ~value () :
    confirmation_setting__prompt_specification__message_group__message__plain_text_message
    =
  { value }

let confirmation_setting__prompt_specification__message_group__message__ssml_message
    ~value () :
    confirmation_setting__prompt_specification__message_group__message__ssml_message
    =
  { value }

let confirmation_setting__prompt_specification__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__prompt_specification__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__prompt_specification__message_group__variation__custom_payload
    ~value () :
    confirmation_setting__prompt_specification__message_group__variation__custom_payload
    =
  { value }

let confirmation_setting__prompt_specification__message_group__variation__image_response_card__button
    ~text ~value () :
    confirmation_setting__prompt_specification__message_group__variation__image_response_card__button
    =
  { text; value }

let confirmation_setting__prompt_specification__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    confirmation_setting__prompt_specification__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let confirmation_setting__prompt_specification__message_group__variation__plain_text_message
    ~value () :
    confirmation_setting__prompt_specification__message_group__variation__plain_text_message
    =
  { value }

let confirmation_setting__prompt_specification__message_group__variation__ssml_message
    ~value () :
    confirmation_setting__prompt_specification__message_group__variation__ssml_message
    =
  { value }

let confirmation_setting__prompt_specification__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    confirmation_setting__prompt_specification__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let confirmation_setting__prompt_specification__message_group
    ~message ~variation () :
    confirmation_setting__prompt_specification__message_group =
  { message; variation }

let confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    ~allow_audio_input ~allow_dtmf_input () :
    confirmation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    =
  { allow_audio_input; allow_dtmf_input }

let confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    ~end_timeout_ms ~max_length_ms () :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    =
  { end_timeout_ms; max_length_ms }

let confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    ~deletion_character ~end_character ~end_timeout_ms ~max_length ()
    :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    =
  { deletion_character; end_character; end_timeout_ms; max_length }

let confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    ~start_timeout_ms ~audio_specification ~dtmf_specification () :
    confirmation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    =
  { start_timeout_ms; audio_specification; dtmf_specification }

let confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    ~start_timeout_ms () :
    confirmation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    =
  { start_timeout_ms }

let confirmation_setting__prompt_specification__prompt_attempts_specification
    ?allow_interrupt ~map_block_key ~allowed_input_types
    ~audio_and_dtmf_input_specification ~text_input_specification ()
    :
    confirmation_setting__prompt_specification__prompt_attempts_specification
    =
  {
    allow_interrupt;
    map_block_key;
    allowed_input_types;
    audio_and_dtmf_input_specification;
    text_input_specification;
  }

let confirmation_setting__prompt_specification ?allow_interrupt
    ?message_selection_strategy ~max_retries ~message_group
    ~prompt_attempts_specification () :
    confirmation_setting__prompt_specification =
  {
    allow_interrupt;
    max_retries;
    message_selection_strategy;
    message_group;
    prompt_attempts_specification;
  }

let confirmation_setting ?active ~code_hook ~confirmation_conditional
    ~confirmation_next_step ~confirmation_response
    ~declination_conditional ~declination_next_step
    ~declination_response ~elicitation_code_hook ~failure_conditional
    ~failure_next_step ~failure_response ~prompt_specification () :
    confirmation_setting =
  {
    active;
    code_hook;
    confirmation_conditional;
    confirmation_next_step;
    confirmation_response;
    declination_conditional;
    declination_next_step;
    declination_response;
    elicitation_code_hook;
    failure_conditional;
    failure_next_step;
    failure_response;
    prompt_specification;
  }

let dialog_code_hook ~enabled () : dialog_code_hook = { enabled }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group
    ~message ~variation () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response__message_group
    =
  { message; variation }

let fulfillment_code_hook__fulfillment_updates_specification__start_response
    ?allow_interrupt ?delay_in_seconds ~message_group () :
    fulfillment_code_hook__fulfillment_updates_specification__start_response
    =
  { allow_interrupt; delay_in_seconds; message_group }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group
    ~message ~variation () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response__message_group
    =
  { message; variation }

let fulfillment_code_hook__fulfillment_updates_specification__update_response
    ?allow_interrupt ~frequency_in_seconds ~message_group () :
    fulfillment_code_hook__fulfillment_updates_specification__update_response
    =
  { allow_interrupt; frequency_in_seconds; message_group }

let fulfillment_code_hook__fulfillment_updates_specification
    ?timeout_in_seconds ~active ~start_response ~update_response () :
    fulfillment_code_hook__fulfillment_updates_specification =
  { active; timeout_in_seconds; start_response; update_response }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition
    ~expression_string () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__condition
    =
  { expression_string }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch
    ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional__default_branch
    =
  { next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional
    ~active ~conditional_branch ~default_branch () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_conditional
    =
  { active; conditional_branch; default_branch }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__failure_response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__failure_response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition
    ~expression_string () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__condition
    =
  { expression_string }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch
    ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional__default_branch
    =
  { next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__success_conditional
    ~active ~conditional_branch ~default_branch () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_conditional
    =
  { active; conditional_branch; default_branch }

let fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__success_next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__success_response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__success_response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition
    ~expression_string () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__condition
    =
  { expression_string }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch
    ~next_step ~response () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional__default_branch
    =
  { next_step; response }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional
    ~active ~conditional_branch ~default_branch () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_conditional
    =
  { active; conditional_branch; default_branch }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value
    ?interpreted_value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot__value
    =
  { interpreted_value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent__slot
    =
  { map_block_key; shape; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent
    ?name ~slot () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step__intent
    =
  { name; slot }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step
    ?session_attributes ~dialog_action ~intent () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_next_step
    =
  { session_attributes; dialog_action; intent }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__custom_payload
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button
    ~text ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card__button
    =
  { text; value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__plain_text_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message
    ~value () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation__ssml_message
    =
  { value }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group
    ~message ~variation () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response__message_group
    =
  { message; variation }

let fulfillment_code_hook__post_fulfillment_status_specification__timeout_response
    ?allow_interrupt ~message_group () :
    fulfillment_code_hook__post_fulfillment_status_specification__timeout_response
    =
  { allow_interrupt; message_group }

let fulfillment_code_hook__post_fulfillment_status_specification
    ~failure_conditional ~failure_next_step ~failure_response
    ~success_conditional ~success_next_step ~success_response
    ~timeout_conditional ~timeout_next_step ~timeout_response () :
    fulfillment_code_hook__post_fulfillment_status_specification =
  {
    failure_conditional;
    failure_next_step;
    failure_response;
    success_conditional;
    success_next_step;
    success_response;
    timeout_conditional;
    timeout_next_step;
    timeout_response;
  }

let fulfillment_code_hook ?active ~enabled
    ~fulfillment_updates_specification
    ~post_fulfillment_status_specification () : fulfillment_code_hook
    =
  {
    active;
    enabled;
    fulfillment_updates_specification;
    post_fulfillment_status_specification;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    ~expression_string () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__condition
    =
  { expression_string }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional__default_branch
    =
  { next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__failure_conditional
    ~active ~conditional_branch ~default_branch () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_conditional
    =
  { active; conditional_branch; default_branch }

let initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__failure_next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__failure_response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__failure_response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    ~expression_string () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__condition
    =
  { expression_string }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional__default_branch
    =
  { next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__success_conditional
    ~active ~conditional_branch ~default_branch () :
    initial_response_setting__code_hook__post_code_hook_specification__success_conditional
    =
  { active; conditional_branch; default_branch }

let initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__success_next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__success_next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__success_response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__success_response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    ~expression_string () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__condition
    =
  { expression_string }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    ~name ~condition ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__conditional_branch
    =
  { name; condition; next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    ~next_step ~response () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional__default_branch
    =
  { next_step; response }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional
    ~active ~conditional_branch ~default_branch () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_conditional
    =
  { active; conditional_branch; default_branch }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    ?name ~slot () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step__intent
    =
  { name; slot }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    ~message ~variation () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response__message_group
    =
  { message; variation }

let initial_response_setting__code_hook__post_code_hook_specification__timeout_response
    ?allow_interrupt ~message_group () :
    initial_response_setting__code_hook__post_code_hook_specification__timeout_response
    =
  { allow_interrupt; message_group }

let initial_response_setting__code_hook__post_code_hook_specification
    ~failure_conditional ~failure_next_step ~failure_response
    ~success_conditional ~success_next_step ~success_response
    ~timeout_conditional ~timeout_next_step ~timeout_response () :
    initial_response_setting__code_hook__post_code_hook_specification
    =
  {
    failure_conditional;
    failure_next_step;
    failure_response;
    success_conditional;
    success_next_step;
    success_response;
    timeout_conditional;
    timeout_next_step;
    timeout_response;
  }

let initial_response_setting__code_hook ?invocation_label ~active
    ~enable_code_hook_invocation ~post_code_hook_specification () :
    initial_response_setting__code_hook =
  {
    active;
    enable_code_hook_invocation;
    invocation_label;
    post_code_hook_specification;
  }

let initial_response_setting__conditional__conditional_branch__condition
    ~expression_string () :
    initial_response_setting__conditional__conditional_branch__condition
    =
  { expression_string }

let initial_response_setting__conditional__conditional_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__conditional__conditional_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__conditional__conditional_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__conditional__conditional_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__conditional__conditional_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__conditional__conditional_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__conditional__conditional_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__conditional__conditional_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__conditional__conditional_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__conditional__conditional_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__conditional__conditional_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__conditional__conditional_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__conditional__conditional_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__conditional__conditional_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__conditional__conditional_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__conditional__conditional_branch__response
    =
  { allow_interrupt; message_group }

let initial_response_setting__conditional__conditional_branch ~name
    ~condition ~next_step ~response () :
    initial_response_setting__conditional__conditional_branch =
  { name; condition; next_step; response }

let initial_response_setting__conditional__default_branch__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__conditional__default_branch__next_step__dialog_action
    =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__conditional__default_branch__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__conditional__default_branch__next_step__intent__slot__value
    =
  { interpreted_value }

let initial_response_setting__conditional__default_branch__next_step__intent__slot
    ?shape ~map_block_key ~value () :
    initial_response_setting__conditional__default_branch__next_step__intent__slot
    =
  { map_block_key; shape; value }

let initial_response_setting__conditional__default_branch__next_step__intent
    ?name ~slot () :
    initial_response_setting__conditional__default_branch__next_step__intent
    =
  { name; slot }

let initial_response_setting__conditional__default_branch__next_step
    ?session_attributes ~dialog_action ~intent () :
    initial_response_setting__conditional__default_branch__next_step
    =
  { session_attributes; dialog_action; intent }

let initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__conditional__default_branch__response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__conditional__default_branch__response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__conditional__default_branch__response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__conditional__default_branch__response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__conditional__default_branch__response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__conditional__default_branch__response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__conditional__default_branch__response__message_group
    ~message ~variation () :
    initial_response_setting__conditional__default_branch__response__message_group
    =
  { message; variation }

let initial_response_setting__conditional__default_branch__response
    ?allow_interrupt ~message_group () :
    initial_response_setting__conditional__default_branch__response =
  { allow_interrupt; message_group }

let initial_response_setting__conditional__default_branch ~next_step
    ~response () :
    initial_response_setting__conditional__default_branch =
  { next_step; response }

let initial_response_setting__conditional ~active ~conditional_branch
    ~default_branch () : initial_response_setting__conditional =
  { active; conditional_branch; default_branch }

let initial_response_setting__initial_response__message_group__message__custom_payload
    ~value () :
    initial_response_setting__initial_response__message_group__message__custom_payload
    =
  { value }

let initial_response_setting__initial_response__message_group__message__image_response_card__button
    ~text ~value () :
    initial_response_setting__initial_response__message_group__message__image_response_card__button
    =
  { text; value }

let initial_response_setting__initial_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__initial_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__initial_response__message_group__message__plain_text_message
    ~value () :
    initial_response_setting__initial_response__message_group__message__plain_text_message
    =
  { value }

let initial_response_setting__initial_response__message_group__message__ssml_message
    ~value () :
    initial_response_setting__initial_response__message_group__message__ssml_message
    =
  { value }

let initial_response_setting__initial_response__message_group__message
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__initial_response__message_group__message
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__initial_response__message_group__variation__custom_payload
    ~value () :
    initial_response_setting__initial_response__message_group__variation__custom_payload
    =
  { value }

let initial_response_setting__initial_response__message_group__variation__image_response_card__button
    ~text ~value () :
    initial_response_setting__initial_response__message_group__variation__image_response_card__button
    =
  { text; value }

let initial_response_setting__initial_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    initial_response_setting__initial_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let initial_response_setting__initial_response__message_group__variation__plain_text_message
    ~value () :
    initial_response_setting__initial_response__message_group__variation__plain_text_message
    =
  { value }

let initial_response_setting__initial_response__message_group__variation__ssml_message
    ~value () :
    initial_response_setting__initial_response__message_group__variation__ssml_message
    =
  { value }

let initial_response_setting__initial_response__message_group__variation
    ~custom_payload ~image_response_card ~plain_text_message
    ~ssml_message () :
    initial_response_setting__initial_response__message_group__variation
    =
  {
    custom_payload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let initial_response_setting__initial_response__message_group
    ~message ~variation () :
    initial_response_setting__initial_response__message_group =
  { message; variation }

let initial_response_setting__initial_response ?allow_interrupt
    ~message_group () : initial_response_setting__initial_response =
  { allow_interrupt; message_group }

let initial_response_setting__next_step__dialog_action
    ?slot_to_elicit ?suppress_next_message ~type_ () :
    initial_response_setting__next_step__dialog_action =
  { slot_to_elicit; suppress_next_message; type_ }

let initial_response_setting__next_step__intent__slot__value
    ?interpreted_value () :
    initial_response_setting__next_step__intent__slot__value =
  { interpreted_value }

let initial_response_setting__next_step__intent__slot ?shape
    ~map_block_key ~value () :
    initial_response_setting__next_step__intent__slot =
  { map_block_key; shape; value }

let initial_response_setting__next_step__intent ?name ~slot () :
    initial_response_setting__next_step__intent =
  { name; slot }

let initial_response_setting__next_step ?session_attributes
    ~dialog_action ~intent () : initial_response_setting__next_step =
  { session_attributes; dialog_action; intent }

let initial_response_setting ~code_hook ~conditional
    ~initial_response ~next_step () : initial_response_setting =
  { code_hook; conditional; initial_response; next_step }

let input_context ~name () : input_context = { name }

let kendra_configuration ?query_filter_string
    ?query_filter_string_enabled ~kendra_index () :
    kendra_configuration =
  { kendra_index; query_filter_string; query_filter_string_enabled }

let output_context ~name ~time_to_live_in_seconds ~turns_to_live () :
    output_context =
  { name; time_to_live_in_seconds; turns_to_live }

let sample_utterance ~utterance () : sample_utterance = { utterance }

let slot_priority ~priority ~slot_id () : slot_priority =
  { priority; slot_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lexv2models_intent ?description ?parent_intent_signature
    ?timeouts ~bot_id ~bot_version ~locale_id ~name ~closing_setting
    ~confirmation_setting ~dialog_code_hook ~fulfillment_code_hook
    ~initial_response_setting ~input_context ~kendra_configuration
    ~output_context ~sample_utterance ~slot_priority () :
    aws_lexv2models_intent =
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

type t = {
  bot_id : string prop;
  bot_version : string prop;
  creation_date_time : string prop;
  description : string prop;
  id : string prop;
  intent_id : string prop;
  last_updated_date_time : string prop;
  locale_id : string prop;
  name : string prop;
  parent_intent_signature : string prop;
}

let register ?tf_module ?description ?parent_intent_signature
    ?timeouts ~bot_id ~bot_version ~locale_id ~name ~closing_setting
    ~confirmation_setting ~dialog_code_hook ~fulfillment_code_hook
    ~initial_response_setting ~input_context ~kendra_configuration
    ~output_context ~sample_utterance ~slot_priority __resource_id =
  let __resource_type = "aws_lexv2models_intent" in
  let __resource =
    aws_lexv2models_intent ?description ?parent_intent_signature
      ?timeouts ~bot_id ~bot_version ~locale_id ~name
      ~closing_setting ~confirmation_setting ~dialog_code_hook
      ~fulfillment_code_hook ~initial_response_setting ~input_context
      ~kendra_configuration ~output_context ~sample_utterance
      ~slot_priority ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_intent __resource);
  let __resource_attributes =
    ({
       bot_id = Prop.computed __resource_type __resource_id "bot_id";
       bot_version =
         Prop.computed __resource_type __resource_id "bot_version";
       creation_date_time =
         Prop.computed __resource_type __resource_id
           "creation_date_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       intent_id =
         Prop.computed __resource_type __resource_id "intent_id";
       last_updated_date_time =
         Prop.computed __resource_type __resource_id
           "last_updated_date_time";
       locale_id =
         Prop.computed __resource_type __resource_id "locale_id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_intent_signature =
         Prop.computed __resource_type __resource_id
           "parent_intent_signature";
     }
      : t)
  in
  __resource_attributes
