(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_usage_limit = {
  amount : float prop;
  breach_action : string prop option; [@option]
  id : string prop option; [@option]
  period : string prop option; [@option]
  resource_arn : string prop;
  usage_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_usage_limit) -> ()

let yojson_of_aws_redshiftserverless_usage_limit =
  (function
   | {
       amount = v_amount;
       breach_action = v_breach_action;
       id = v_id;
       period = v_period;
       resource_arn = v_resource_arn;
       usage_type = v_usage_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_usage_type in
         ("usage_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
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
       let bnds =
         match v_breach_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "breach_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_usage_limit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_usage_limit

[@@@deriving.end]

let aws_redshiftserverless_usage_limit ?breach_action ?id ?period
    ~amount ~resource_arn ~usage_type () :
    aws_redshiftserverless_usage_limit =
  { amount; breach_action; id; period; resource_arn; usage_type }

type t = {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  id : string prop;
  period : string prop;
  resource_arn : string prop;
  usage_type : string prop;
}

let make ?breach_action ?id ?period ~amount ~resource_arn ~usage_type
    __id =
  let __type = "aws_redshiftserverless_usage_limit" in
  let __attrs =
    ({
       amount = Prop.computed __type __id "amount";
       arn = Prop.computed __type __id "arn";
       breach_action = Prop.computed __type __id "breach_action";
       id = Prop.computed __type __id "id";
       period = Prop.computed __type __id "period";
       resource_arn = Prop.computed __type __id "resource_arn";
       usage_type = Prop.computed __type __id "usage_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_usage_limit
        (aws_redshiftserverless_usage_limit ?breach_action ?id
           ?period ~amount ~resource_arn ~usage_type ());
    attrs = __attrs;
  }

let register ?tf_module ?breach_action ?id ?period ~amount
    ~resource_arn ~usage_type __id =
  let (r : _ Tf_core.resource) =
    make ?breach_action ?id ?period ~amount ~resource_arn ~usage_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
