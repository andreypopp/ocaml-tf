(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_dashboard = {
  dashboard_body : string prop;
  dashboard_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_dashboard) -> ()

let yojson_of_aws_cloudwatch_dashboard =
  (function
   | {
       dashboard_body = v_dashboard_body;
       dashboard_name = v_dashboard_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_dashboard_name
         in
         ("dashboard_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dashboard_body
         in
         ("dashboard_body", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_dashboard -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_dashboard

[@@@deriving.end]

let aws_cloudwatch_dashboard ?id ~dashboard_body ~dashboard_name () :
    aws_cloudwatch_dashboard =
  { dashboard_body; dashboard_name; id }

type t = {
  dashboard_arn : string prop;
  dashboard_body : string prop;
  dashboard_name : string prop;
  id : string prop;
}

let make ?id ~dashboard_body ~dashboard_name __id =
  let __type = "aws_cloudwatch_dashboard" in
  let __attrs =
    ({
       dashboard_arn = Prop.computed __type __id "dashboard_arn";
       dashboard_body = Prop.computed __type __id "dashboard_body";
       dashboard_name = Prop.computed __type __id "dashboard_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_dashboard
        (aws_cloudwatch_dashboard ?id ~dashboard_body ~dashboard_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~dashboard_body ~dashboard_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~dashboard_body ~dashboard_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
