(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~log_group_name ~name ~pattern ~metric_transformation
    __id =
  let __type = "aws_cloudwatch_log_metric_filter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       name = Prop.computed __type __id "name";
       pattern = Prop.computed __type __id "pattern";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_metric_filter
        (aws_cloudwatch_log_metric_filter ?id ~log_group_name ~name
           ~pattern ~metric_transformation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~log_group_name ~name ~pattern
    ~metric_transformation __id =
  let (r : _ Tf_core.resource) =
    make ?id ~log_group_name ~name ~pattern ~metric_transformation
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
