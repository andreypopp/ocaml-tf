(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subscriber = {
  address : string prop;  (** address *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** subscriber *)

type threshold_expression__and__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__and__cost_category *)

type threshold_expression__and__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__and__dimension *)

type threshold_expression__and__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__and__tags *)

type threshold_expression__and = {
  cost_category : threshold_expression__and__cost_category list;
  dimension : threshold_expression__and__dimension list;
  tags : threshold_expression__and__tags list;
}
[@@deriving yojson_of]
(** threshold_expression__and *)

type threshold_expression__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__cost_category *)

type threshold_expression__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__dimension *)

type threshold_expression__not__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__not__cost_category *)

type threshold_expression__not__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__not__dimension *)

type threshold_expression__not__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__not__tags *)

type threshold_expression__not = {
  cost_category : threshold_expression__not__cost_category list;
  dimension : threshold_expression__not__dimension list;
  tags : threshold_expression__not__tags list;
}
[@@deriving yojson_of]
(** threshold_expression__not *)

type threshold_expression__or__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__or__cost_category *)

type threshold_expression__or__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__or__dimension *)

type threshold_expression__or__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__or__tags *)

type threshold_expression__or = {
  cost_category : threshold_expression__or__cost_category list;
  dimension : threshold_expression__or__dimension list;
  tags : threshold_expression__or__tags list;
}
[@@deriving yojson_of]
(** threshold_expression__or *)

type threshold_expression__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** threshold_expression__tags *)

type threshold_expression = {
  and_ : threshold_expression__and list;
  cost_category : threshold_expression__cost_category list;
  dimension : threshold_expression__dimension list;
  not : threshold_expression__not list;
  or_ : threshold_expression__or list;
  tags : threshold_expression__tags list;
}
[@@deriving yojson_of]
(** threshold_expression *)

type aws_ce_anomaly_subscription = {
  account_id : string prop option; [@option]  (** account_id *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  monitor_arn_list : string prop list;  (** monitor_arn_list *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  subscriber : subscriber list;
  threshold_expression : threshold_expression list;
}
[@@deriving yojson_of]
(** aws_ce_anomaly_subscription *)

let subscriber ~address ~type_ () : subscriber = { address; type_ }

let threshold_expression__and__cost_category ?key ?match_options
    ?values () : threshold_expression__and__cost_category =
  { key; match_options; values }

let threshold_expression__and__dimension ?key ?match_options ?values
    () : threshold_expression__and__dimension =
  { key; match_options; values }

let threshold_expression__and__tags ?key ?match_options ?values () :
    threshold_expression__and__tags =
  { key; match_options; values }

let threshold_expression__and ~cost_category ~dimension ~tags () :
    threshold_expression__and =
  { cost_category; dimension; tags }

let threshold_expression__cost_category ?key ?match_options ?values
    () : threshold_expression__cost_category =
  { key; match_options; values }

let threshold_expression__dimension ?key ?match_options ?values () :
    threshold_expression__dimension =
  { key; match_options; values }

let threshold_expression__not__cost_category ?key ?match_options
    ?values () : threshold_expression__not__cost_category =
  { key; match_options; values }

let threshold_expression__not__dimension ?key ?match_options ?values
    () : threshold_expression__not__dimension =
  { key; match_options; values }

let threshold_expression__not__tags ?key ?match_options ?values () :
    threshold_expression__not__tags =
  { key; match_options; values }

let threshold_expression__not ~cost_category ~dimension ~tags () :
    threshold_expression__not =
  { cost_category; dimension; tags }

let threshold_expression__or__cost_category ?key ?match_options
    ?values () : threshold_expression__or__cost_category =
  { key; match_options; values }

let threshold_expression__or__dimension ?key ?match_options ?values
    () : threshold_expression__or__dimension =
  { key; match_options; values }

let threshold_expression__or__tags ?key ?match_options ?values () :
    threshold_expression__or__tags =
  { key; match_options; values }

let threshold_expression__or ~cost_category ~dimension ~tags () :
    threshold_expression__or =
  { cost_category; dimension; tags }

let threshold_expression__tags ?key ?match_options ?values () :
    threshold_expression__tags =
  { key; match_options; values }

let threshold_expression ~and_ ~cost_category ~dimension ~not ~or_
    ~tags () : threshold_expression =
  { and_; cost_category; dimension; not; or_; tags }

let aws_ce_anomaly_subscription ?account_id ?id ?tags ?tags_all
    ~frequency ~monitor_arn_list ~name ~subscriber
    ~threshold_expression () : aws_ce_anomaly_subscription =
  {
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

let make ?account_id ?id ?tags ?tags_all ~frequency ~monitor_arn_list
    ~name ~subscriber ~threshold_expression __id =
  let __type = "aws_ce_anomaly_subscription" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       monitor_arn_list =
         Prop.computed __type __id "monitor_arn_list";
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
      yojson_of_aws_ce_anomaly_subscription
        (aws_ce_anomaly_subscription ?account_id ?id ?tags ?tags_all
           ~frequency ~monitor_arn_list ~name ~subscriber
           ~threshold_expression ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?tags ?tags_all ~frequency
    ~monitor_arn_list ~name ~subscriber ~threshold_expression __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?tags ?tags_all ~frequency ~monitor_arn_list
      ~name ~subscriber ~threshold_expression __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
