(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_event_subscription *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshift_event_subscription ?enabled ?event_categories ?id
    ?severity ?source_ids ?source_type ?tags ?tags_all ?timeouts
    ~name ~sns_topic_arn () : aws_redshift_event_subscription =
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

type t = {
  arn : string prop;
  customer_aws_id : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  severity : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?enabled ?event_categories ?id ?severity
    ?source_ids ?source_type ?tags ?tags_all ?timeouts ~name
    ~sns_topic_arn __resource_id =
  let __resource_type = "aws_redshift_event_subscription" in
  let __resource =
    aws_redshift_event_subscription ?enabled ?event_categories ?id
      ?severity ?source_ids ?source_type ?tags ?tags_all ?timeouts
      ~name ~sns_topic_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_event_subscription __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       customer_aws_id =
         Prop.computed __resource_type __resource_id
           "customer_aws_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       event_categories =
         Prop.computed __resource_type __resource_id
           "event_categories";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
       source_ids =
         Prop.computed __resource_type __resource_id "source_ids";
       source_type =
         Prop.computed __resource_type __resource_id "source_type";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
