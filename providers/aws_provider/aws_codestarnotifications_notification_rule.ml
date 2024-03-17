(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codestarnotifications_notification_rule__target = {
  address : string prop;  (** address *)
  status : string prop;  (** status *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codestarnotifications_notification_rule__target *)

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
  target : aws_codestarnotifications_notification_rule__target list;
}
[@@deriving yojson_of]
(** aws_codestarnotifications_notification_rule *)

let aws_codestarnotifications_notification_rule ?id ?status ?tags
    ?tags_all ~detail_type ~event_type_ids ~name ~resource ~target
    __resource_id =
  let __resource_type =
    "aws_codestarnotifications_notification_rule"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarnotifications_notification_rule __resource);
  ()
