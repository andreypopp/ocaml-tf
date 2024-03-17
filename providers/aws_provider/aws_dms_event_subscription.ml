(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_event_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dms_event_subscription__timeouts *)

type aws_dms_event_subscription = {
  enabled : bool option; [@option]  (** enabled *)
  event_categories : string list;  (** event_categories *)
  name : string;  (** name *)
  sns_topic_arn : string;  (** sns_topic_arn *)
  source_ids : string list option; [@option]  (** source_ids *)
  source_type : string;  (** source_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_dms_event_subscription__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_event_subscription *)

let aws_dms_event_subscription ?enabled ?source_ids ?tags ?timeouts
    ~event_categories ~name ~sns_topic_arn ~source_type __resource_id
    =
  let __resource_type = "aws_dms_event_subscription" in
  let __resource =
    {
      enabled;
      event_categories;
      name;
      sns_topic_arn;
      source_ids;
      source_type;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_event_subscription __resource);
  ()
