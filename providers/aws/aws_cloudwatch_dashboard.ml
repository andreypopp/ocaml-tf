(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_dashboard = {
  dashboard_body : string prop;  (** dashboard_body *)
  dashboard_name : string prop;  (** dashboard_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_dashboard *)

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
