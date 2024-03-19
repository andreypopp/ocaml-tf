(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metric_transformation = {
  default_value : string prop option; [@option]  (** default_value *)
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  unit : string prop option; [@option]  (** unit *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** metric_transformation *)

type aws_cloudwatch_log_metric_filter = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
  pattern : string prop;  (** pattern *)
  metric_transformation : metric_transformation list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_metric_filter *)

let metric_transformation ?default_value ?dimensions ?unit ~name
    ~namespace ~value () : metric_transformation =
  { default_value; dimensions; name; namespace; unit; value }

let aws_cloudwatch_log_metric_filter ?id ~log_group_name ~name
    ~pattern ~metric_transformation () :
    aws_cloudwatch_log_metric_filter =
  { id; log_group_name; name; pattern; metric_transformation }

type t = {
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  pattern : string prop;
}

let register ?tf_module ?id ~log_group_name ~name ~pattern
    ~metric_transformation __resource_id =
  let __resource_type = "aws_cloudwatch_log_metric_filter" in
  let __resource =
    aws_cloudwatch_log_metric_filter ?id ~log_group_name ~name
      ~pattern ~metric_transformation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_metric_filter __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
       name = Prop.computed __resource_type __resource_id "name";
       pattern =
         Prop.computed __resource_type __resource_id "pattern";
     }
      : t)
  in
  __resource_attributes
