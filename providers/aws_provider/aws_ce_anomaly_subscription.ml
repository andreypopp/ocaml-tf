(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ce_anomaly_subscription__subscriber = {
  address : string;  (** address *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__subscriber *)

type aws_ce_anomaly_subscription__threshold_expression__and__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__and__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__and__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and__tags *)

type aws_ce_anomaly_subscription__threshold_expression__and = {
  cost_category :
    aws_ce_anomaly_subscription__threshold_expression__and__cost_category
    list;
  dimension :
    aws_ce_anomaly_subscription__threshold_expression__and__dimension
    list;
  tags :
    aws_ce_anomaly_subscription__threshold_expression__and__tags list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and *)

type aws_ce_anomaly_subscription__threshold_expression__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__not__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__not__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__not__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not__tags *)

type aws_ce_anomaly_subscription__threshold_expression__not = {
  cost_category :
    aws_ce_anomaly_subscription__threshold_expression__not__cost_category
    list;
  dimension :
    aws_ce_anomaly_subscription__threshold_expression__not__dimension
    list;
  tags :
    aws_ce_anomaly_subscription__threshold_expression__not__tags list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not *)

type aws_ce_anomaly_subscription__threshold_expression__or__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__or__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__or__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or__tags *)

type aws_ce_anomaly_subscription__threshold_expression__or = {
  cost_category :
    aws_ce_anomaly_subscription__threshold_expression__or__cost_category
    list;
  dimension :
    aws_ce_anomaly_subscription__threshold_expression__or__dimension
    list;
  tags :
    aws_ce_anomaly_subscription__threshold_expression__or__tags list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or *)

type aws_ce_anomaly_subscription__threshold_expression__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__tags *)

type aws_ce_anomaly_subscription__threshold_expression = {
  and_ : aws_ce_anomaly_subscription__threshold_expression__and list;
  cost_category :
    aws_ce_anomaly_subscription__threshold_expression__cost_category
    list;
  dimension :
    aws_ce_anomaly_subscription__threshold_expression__dimension list;
  not : aws_ce_anomaly_subscription__threshold_expression__not list;
  or_ : aws_ce_anomaly_subscription__threshold_expression__or list;
  tags : aws_ce_anomaly_subscription__threshold_expression__tags list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression *)

type aws_ce_anomaly_subscription = {
  frequency : string;  (** frequency *)
  monitor_arn_list : string list;  (** monitor_arn_list *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  subscriber : aws_ce_anomaly_subscription__subscriber list;
  threshold_expression :
    aws_ce_anomaly_subscription__threshold_expression list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription *)

let aws_ce_anomaly_subscription ?tags ~frequency ~monitor_arn_list
    ~name ~subscriber ~threshold_expression __resource_id =
  let __resource_type = "aws_ce_anomaly_subscription" in
  let __resource =
    {
      frequency;
      monitor_arn_list;
      name;
      tags;
      subscriber;
      threshold_expression;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_anomaly_subscription __resource);
  ()
