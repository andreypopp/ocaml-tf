(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type target = {
  address : string prop;  (** address *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target *)

type aws_codestarnotifications_notification_rule = {
  detail_type : string prop;  (** detail_type *)
  event_type_ids : string prop list;  (** event_type_ids *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource : string prop;  (** resource *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target : target list;
}
[@@deriving yojson_of]
(** aws_codestarnotifications_notification_rule *)

let target ?type_ ~address () : target = { address; type_ }

let aws_codestarnotifications_notification_rule ?id ?status ?tags
    ?tags_all ~detail_type ~event_type_ids ~name ~resource ~target ()
    : aws_codestarnotifications_notification_rule =
  {
    detail_type;
    event_type_ids;
    id;
    name;
    resource;
    status;
    tags;
    tags_all;
    target;
  }

type t = {
  arn : string prop;
  detail_type : string prop;
  event_type_ids : string list prop;
  id : string prop;
  name : string prop;
  resource : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?status ?tags ?tags_all ~detail_type
    ~event_type_ids ~name ~resource ~target __resource_id =
  let __resource_type =
    "aws_codestarnotifications_notification_rule"
  in
  let __resource =
    aws_codestarnotifications_notification_rule ?id ?status ?tags
      ?tags_all ~detail_type ~event_type_ids ~name ~resource ~target
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarnotifications_notification_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       detail_type =
         Prop.computed __resource_type __resource_id "detail_type";
       event_type_ids =
         Prop.computed __resource_type __resource_id "event_type_ids";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource =
         Prop.computed __resource_type __resource_id "resource";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
