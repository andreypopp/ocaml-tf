(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_event_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dms_event_subscription__timeouts *)

type aws_dms_event_subscription = {
  enabled : bool prop option; [@option]  (** enabled *)
  event_categories : string prop list;  (** event_categories *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sns_topic_arn : string prop;  (** sns_topic_arn *)
  source_ids : string prop list option; [@option]  (** source_ids *)
  source_type : string prop;  (** source_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_dms_event_subscription__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_event_subscription *)

type t = {
  arn : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_dms_event_subscription ?enabled ?id ?source_ids ?tags
    ?tags_all ?timeouts ~event_categories ~name ~sns_topic_arn
    ~source_type __resource_id =
  let __resource_type = "aws_dms_event_subscription" in
  let __resource =
    ({
       enabled;
       event_categories;
       id;
       name;
       sns_topic_arn;
       source_ids;
       source_type;
       tags;
       tags_all;
       timeouts;
     }
      : aws_dms_event_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_event_subscription __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       event_categories =
         Prop.computed __resource_type __resource_id
           "event_categories";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
       source_ids =
         Prop.computed __resource_type __resource_id "source_ids";
       source_type =
         Prop.computed __resource_type __resource_id "source_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
