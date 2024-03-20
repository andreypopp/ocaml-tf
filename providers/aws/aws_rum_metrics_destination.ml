(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rum_metrics_destination = {
  app_monitor_name : string prop;
  destination : string prop;
  destination_arn : string prop option; [@option]
  iam_role_arn : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rum_metrics_destination) -> ()

let yojson_of_aws_rum_metrics_destination =
  (function
   | {
       app_monitor_name = v_app_monitor_name;
       destination = v_destination;
       destination_arn = v_destination_arn;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_monitor_name
         in
         ("app_monitor_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_rum_metrics_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rum_metrics_destination

[@@@deriving.end]

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
