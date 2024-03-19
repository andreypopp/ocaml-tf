(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type exclude_filter = {
  metric_names : string prop list option; [@option]
      (** metric_names *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** exclude_filter *)

type include_filter = {
  metric_names : string prop list option; [@option]
      (** metric_names *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** include_filter *)

type statistics_configuration__include_metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** statistics_configuration__include_metric *)

type statistics_configuration = {
  additional_statistics : string prop list;
      (** additional_statistics *)
  include_metric : statistics_configuration__include_metric list;
}
[@@deriving yojson_of]
(** statistics_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudwatch_metric_stream = {
  firehose_arn : string prop;  (** firehose_arn *)
  id : string prop option; [@option]  (** id *)
  include_linked_accounts_metrics : bool prop option; [@option]
      (** include_linked_accounts_metrics *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  output_format : string prop;  (** output_format *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  exclude_filter : exclude_filter list;
  include_filter : include_filter list;
  statistics_configuration : statistics_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream *)

let exclude_filter ?metric_names ~namespace () : exclude_filter =
  { metric_names; namespace }

let include_filter ?metric_names ~namespace () : include_filter =
  { metric_names; namespace }

let statistics_configuration__include_metric ~metric_name ~namespace
    () : statistics_configuration__include_metric =
  { metric_name; namespace }

let statistics_configuration ~additional_statistics ~include_metric
    () : statistics_configuration =
  { additional_statistics; include_metric }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudwatch_metric_stream ?id ?include_linked_accounts_metrics
    ?name ?name_prefix ?tags ?tags_all ?timeouts ~firehose_arn
    ~output_format ~role_arn ~exclude_filter ~include_filter
    ~statistics_configuration () : aws_cloudwatch_metric_stream =
  {
    firehose_arn;
    id;
    include_linked_accounts_metrics;
    name;
    name_prefix;
    output_format;
    role_arn;
    tags;
    tags_all;
    exclude_filter;
    include_filter;
    statistics_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  creation_date : string prop;
  firehose_arn : string prop;
  id : string prop;
  include_linked_accounts_metrics : bool prop;
  last_update_date : string prop;
  name : string prop;
  name_prefix : string prop;
  output_format : string prop;
  role_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?include_linked_accounts_metrics ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~firehose_arn
    ~output_format ~role_arn ~exclude_filter ~include_filter
    ~statistics_configuration __resource_id =
  let __resource_type = "aws_cloudwatch_metric_stream" in
  let __resource =
    aws_cloudwatch_metric_stream ?id ?include_linked_accounts_metrics
      ?name ?name_prefix ?tags ?tags_all ?timeouts ~firehose_arn
      ~output_format ~role_arn ~exclude_filter ~include_filter
      ~statistics_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_metric_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       firehose_arn =
         Prop.computed __resource_type __resource_id "firehose_arn";
       id = Prop.computed __resource_type __resource_id "id";
       include_linked_accounts_metrics =
         Prop.computed __resource_type __resource_id
           "include_linked_accounts_metrics";
       last_update_date =
         Prop.computed __resource_type __resource_id
           "last_update_date";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       output_format =
         Prop.computed __resource_type __resource_id "output_format";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
