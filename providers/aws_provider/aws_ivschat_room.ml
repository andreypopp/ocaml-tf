(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivschat_room__message_review_handler = {
  fallback_result : string option; [@option]  (** fallback_result *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_ivschat_room__message_review_handler *)

type aws_ivschat_room__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivschat_room__timeouts *)

type aws_ivschat_room = {
  id : string option; [@option]  (** id *)
  logging_configuration_identifiers : string list option; [@option]
      (** logging_configuration_identifiers *)
  maximum_message_length : float option; [@option]
      (** maximum_message_length *)
  maximum_message_rate_per_second : float option; [@option]
      (** maximum_message_rate_per_second *)
  name : string option; [@option]  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  message_review_handler :
    aws_ivschat_room__message_review_handler list;
  timeouts : aws_ivschat_room__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivschat_room *)

let aws_ivschat_room ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?timeouts ~message_review_handler __resource_id =
  let __resource_type = "aws_ivschat_room" in
  let __resource =
    {
      id;
      logging_configuration_identifiers;
      maximum_message_length;
      maximum_message_rate_per_second;
      name;
      tags;
      tags_all;
      message_review_handler;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivschat_room __resource);
  ()
