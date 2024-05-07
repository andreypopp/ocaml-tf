(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lb_hosted_zone_id = {
  id : string prop option; [@option]
  load_balancer_type : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_hosted_zone_id) -> ()

let yojson_of_aws_lb_hosted_zone_id =
  (function
   | {
       id = v_id;
       load_balancer_type = v_load_balancer_type;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lb_hosted_zone_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_hosted_zone_id

[@@@deriving.end]

let aws_lb_hosted_zone_id ?id ?load_balancer_type ?region () :
    aws_lb_hosted_zone_id =
  { id; load_balancer_type; region }

type t = {
  tf_name : string;
  id : string prop;
  load_balancer_type : string prop;
  region : string prop;
}

let make ?id ?load_balancer_type ?region __id =
  let __type = "aws_lb_hosted_zone_id" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_hosted_zone_id
        (aws_lb_hosted_zone_id ?id ?load_balancer_type ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?load_balancer_type ?region __id =
  let (r : _ Tf_core.resource) =
    make ?id ?load_balancer_type ?region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
