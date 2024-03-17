(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_service_quota__usage_metric__metric_dimensions = {
  class_ : string; [@key "class"]  (** class *)
  resource : string;  (** resource *)
  service : string;  (** service *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_servicequotas_service_quota__usage_metric = {
  metric_dimensions :
    aws_servicequotas_service_quota__usage_metric__metric_dimensions
    list;
      (** metric_dimensions *)
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  metric_statistic_recommendation : string;
      (** metric_statistic_recommendation *)
}
[@@deriving yojson_of]

type aws_servicequotas_service_quota = {
  id : string option; [@option]  (** id *)
  quota_code : string;  (** quota_code *)
  service_code : string;  (** service_code *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_servicequotas_service_quota *)

let aws_servicequotas_service_quota ?id ~quota_code ~service_code
    ~value __resource_id =
  let __resource_type = "aws_servicequotas_service_quota" in
  let __resource = { id; quota_code; service_code; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_service_quota __resource);
  ()
