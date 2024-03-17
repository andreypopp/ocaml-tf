(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_trigger__actions__notification_property = {
  notify_delay_after : float prop option; [@option]
      (** notify_delay_after *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__actions__notification_property *)

type aws_glue_trigger__actions = {
  arguments : (string * string prop) list option; [@option]
      (** arguments *)
  crawler_name : string prop option; [@option]  (** crawler_name *)
  job_name : string prop option; [@option]  (** job_name *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  timeout : float prop option; [@option]  (** timeout *)
  notification_property :
    aws_glue_trigger__actions__notification_property list;
}
[@@deriving yojson_of]
(** aws_glue_trigger__actions *)

type aws_glue_trigger__event_batching_condition = {
  batch_size : float prop;  (** batch_size *)
  batch_window : float prop option; [@option]  (** batch_window *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__event_batching_condition *)

type aws_glue_trigger__predicate__conditions = {
  crawl_state : string prop option; [@option]  (** crawl_state *)
  crawler_name : string prop option; [@option]  (** crawler_name *)
  job_name : string prop option; [@option]  (** job_name *)
  logical_operator : string prop option; [@option]
      (** logical_operator *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__predicate__conditions *)

type aws_glue_trigger__predicate = {
  logical : string prop option; [@option]  (** logical *)
  conditions : aws_glue_trigger__predicate__conditions list;
}
[@@deriving yojson_of]
(** aws_glue_trigger__predicate *)

type aws_glue_trigger__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_glue_trigger__timeouts *)

type aws_glue_trigger = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schedule : string prop option; [@option]  (** schedule *)
  start_on_creation : bool prop option; [@option]
      (** start_on_creation *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  workflow_name : string prop option; [@option]  (** workflow_name *)
  actions : aws_glue_trigger__actions list;
  event_batching_condition :
    aws_glue_trigger__event_batching_condition list;
  predicate : aws_glue_trigger__predicate list;
  timeouts : aws_glue_trigger__timeouts option;
}
[@@deriving yojson_of]
(** aws_glue_trigger *)

let aws_glue_trigger ?description ?enabled ?id ?schedule
    ?start_on_creation ?tags ?tags_all ?workflow_name ?timeouts ~name
    ~type_ ~actions ~event_batching_condition ~predicate
    __resource_id =
  let __resource_type = "aws_glue_trigger" in
  let __resource =
    {
      description;
      enabled;
      id;
      name;
      schedule;
      start_on_creation;
      tags;
      tags_all;
      type_;
      workflow_name;
      actions;
      event_batching_condition;
      predicate;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_trigger __resource);
  ()
