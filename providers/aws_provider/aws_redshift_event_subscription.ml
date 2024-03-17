(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_event_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_redshift_event_subscription__timeouts *)

type aws_redshift_event_subscription = {
  enabled : bool prop option; [@option]  (** enabled *)
  event_categories : string prop list option; [@option]
      (** event_categories *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  severity : string prop option; [@option]  (** severity *)
  sns_topic_arn : string prop;  (** sns_topic_arn *)
  source_ids : string prop list option; [@option]  (** source_ids *)
  source_type : string prop option; [@option]  (** source_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_redshift_event_subscription__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_event_subscription *)

let aws_redshift_event_subscription ?enabled ?event_categories ?id
    ?severity ?source_ids ?source_type ?tags ?tags_all ?timeouts
    ~name ~sns_topic_arn __resource_id =
  let __resource_type = "aws_redshift_event_subscription" in
  let __resource =
    {
      enabled;
      event_categories;
      id;
      name;
      severity;
      sns_topic_arn;
      source_ids;
      source_type;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_event_subscription __resource);
  ()
