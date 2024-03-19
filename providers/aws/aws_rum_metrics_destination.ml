(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rum_metrics_destination = {
  app_monitor_name : string prop;  (** app_monitor_name *)
  destination : string prop;  (** destination *)
  destination_arn : string prop option; [@option]
      (** destination_arn *)
  iam_role_arn : string prop option; [@option]  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_rum_metrics_destination *)

let aws_rum_metrics_destination ?destination_arn ?iam_role_arn ?id
    ~app_monitor_name ~destination () : aws_rum_metrics_destination =
  {
    app_monitor_name;
    destination;
    destination_arn;
    iam_role_arn;
    id;
  }

type t = {
  app_monitor_name : string prop;
  destination : string prop;
  destination_arn : string prop;
  iam_role_arn : string prop;
  id : string prop;
}

let register ?tf_module ?destination_arn ?iam_role_arn ?id
    ~app_monitor_name ~destination __resource_id =
  let __resource_type = "aws_rum_metrics_destination" in
  let __resource =
    aws_rum_metrics_destination ?destination_arn ?iam_role_arn ?id
      ~app_monitor_name ~destination ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rum_metrics_destination __resource);
  let __resource_attributes =
    ({
       app_monitor_name =
         Prop.computed __resource_type __resource_id
           "app_monitor_name";
       destination =
         Prop.computed __resource_type __resource_id "destination";
       destination_arn =
         Prop.computed __resource_type __resource_id
           "destination_arn";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
