(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_metric_stream__exclude_filter = {
  metric_names : string list option; [@option]  (** metric_names *)
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream__exclude_filter *)

type aws_cloudwatch_metric_stream__include_filter = {
  metric_names : string list option; [@option]  (** metric_names *)
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream__include_filter *)

type aws_cloudwatch_metric_stream__statistics_configuration__include_metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream__statistics_configuration__include_metric *)

type aws_cloudwatch_metric_stream__statistics_configuration = {
  additional_statistics : string list;  (** additional_statistics *)
  include_metric :
    aws_cloudwatch_metric_stream__statistics_configuration__include_metric
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream__statistics_configuration *)

type aws_cloudwatch_metric_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream__timeouts *)

type aws_cloudwatch_metric_stream = {
  firehose_arn : string;  (** firehose_arn *)
  include_linked_accounts_metrics : bool option; [@option]
      (** include_linked_accounts_metrics *)
  output_format : string;  (** output_format *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  exclude_filter : aws_cloudwatch_metric_stream__exclude_filter list;
  include_filter : aws_cloudwatch_metric_stream__include_filter list;
  statistics_configuration :
    aws_cloudwatch_metric_stream__statistics_configuration list;
  timeouts : aws_cloudwatch_metric_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudwatch_metric_stream *)

let aws_cloudwatch_metric_stream ?include_linked_accounts_metrics
    ?tags ?timeouts ~firehose_arn ~output_format ~role_arn
    ~exclude_filter ~include_filter ~statistics_configuration
    __resource_id =
  let __resource_type = "aws_cloudwatch_metric_stream" in
  let __resource =
    {
      firehose_arn;
      include_linked_accounts_metrics;
      output_format;
      role_arn;
      tags;
      exclude_filter;
      include_filter;
      statistics_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_metric_stream __resource);
  ()
