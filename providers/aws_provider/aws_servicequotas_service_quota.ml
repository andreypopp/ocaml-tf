(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_service_quota__usage_metric__metric_dimensions = {
  class_ : string prop; [@key "class"]  (** class *)
  resource : string prop;  (** resource *)
  service : string prop;  (** service *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_servicequotas_service_quota__usage_metric = {
  metric_dimensions :
    aws_servicequotas_service_quota__usage_metric__metric_dimensions
    list;
      (** metric_dimensions *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_statistic_recommendation : string prop;
      (** metric_statistic_recommendation *)
}
[@@deriving yojson_of]

type aws_servicequotas_service_quota = {
  id : string prop option; [@option]  (** id *)
  quota_code : string prop;  (** quota_code *)
  service_code : string prop;  (** service_code *)
  value : float prop;  (** value *)
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
