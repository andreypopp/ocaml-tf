(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?destination_arn ?iam_role_arn ?id ~app_monitor_name
    ~destination __id =
  let __type = "aws_rum_metrics_destination" in
  let __attrs =
    ({
       app_monitor_name =
         Prop.computed __type __id "app_monitor_name";
       destination = Prop.computed __type __id "destination";
       destination_arn = Prop.computed __type __id "destination_arn";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rum_metrics_destination
        (aws_rum_metrics_destination ?destination_arn ?iam_role_arn
           ?id ~app_monitor_name ~destination ());
    attrs = __attrs;
  }

let register ?tf_module ?destination_arn ?iam_role_arn ?id
    ~app_monitor_name ~destination __id =
  let (r : _ Tf_core.resource) =
    make ?destination_arn ?iam_role_arn ?id ~app_monitor_name
      ~destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
