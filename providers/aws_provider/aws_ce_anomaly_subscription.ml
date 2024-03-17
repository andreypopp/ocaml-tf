(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ce_anomaly_subscription__subscriber = {
  address : string prop;  (** address *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__subscriber *)

type aws_ce_anomaly_subscription__threshold_expression__and__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__and__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__and__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__and__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
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
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__not__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__not__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__not__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__not__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
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
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or__cost_category *)

type aws_ce_anomaly_subscription__threshold_expression__or__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription__threshold_expression__or__dimension *)

type aws_ce_anomaly_subscription__threshold_expression__or__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
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
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
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
  account_id : string prop option; [@option]  (** account_id *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  monitor_arn_list : string prop list;  (** monitor_arn_list *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  subscriber : aws_ce_anomaly_subscription__subscriber list;
  threshold_expression :
    aws_ce_anomaly_subscription__threshold_expression list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription *)

type t = {
  account_id : string prop;
  arn : string prop;
  frequency : string prop;
  id : string prop;
  monitor_arn_list : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_ce_anomaly_subscription ?account_id ?id ?tags ?tags_all
    ~frequency ~monitor_arn_list ~name ~subscriber
    ~threshold_expression __resource_id =
  let __resource_type = "aws_ce_anomaly_subscription" in
  let __resource =
    ({
       account_id;
       frequency;
       id;
       monitor_arn_list;
       name;
       tags;
       tags_all;
       subscriber;
       threshold_expression;
     }
      : aws_ce_anomaly_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_anomaly_subscription __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       monitor_arn_list =
         Prop.computed __resource_type __resource_id
           "monitor_arn_list";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
