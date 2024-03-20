(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type message_review_handler = {
  fallback_result : string prop option; [@option]
      (** fallback_result *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** message_review_handler *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ivschat_room = {
  id : string prop option; [@option]  (** id *)
  logging_configuration_identifiers : string prop list option;
      [@option]
      (** logging_configuration_identifiers *)
  maximum_message_length : float prop option; [@option]
      (** maximum_message_length *)
  maximum_message_rate_per_second : float prop option; [@option]
      (** maximum_message_rate_per_second *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  message_review_handler : message_review_handler list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ivschat_room *)

let message_review_handler ?fallback_result ?uri () :
    message_review_handler =
  { fallback_result; uri }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivschat_room ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?timeouts ~message_review_handler () :
    aws_ivschat_room =
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

type t = {
  arn : string prop;
  id : string prop;
  logging_configuration_identifiers : string list prop;
  maximum_message_length : float prop;
  maximum_message_rate_per_second : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?timeouts ~message_review_handler __id =
  let __type = "aws_ivschat_room" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       logging_configuration_identifiers =
         Prop.computed __type __id
           "logging_configuration_identifiers";
       maximum_message_length =
         Prop.computed __type __id "maximum_message_length";
       maximum_message_rate_per_second =
         Prop.computed __type __id "maximum_message_rate_per_second";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivschat_room
        (aws_ivschat_room ?id ?logging_configuration_identifiers
           ?maximum_message_length ?maximum_message_rate_per_second
           ?name ?tags ?tags_all ?timeouts ~message_review_handler ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?timeouts ~message_review_handler __id =
  let (r : _ Tf_core.resource) =
    make ?id ?logging_configuration_identifiers
      ?maximum_message_length ?maximum_message_rate_per_second ?name
      ?tags ?tags_all ?timeouts ~message_review_handler __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
