(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_standards_subscription = {
  id : string prop option; [@option]
  standards_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_standards_subscription) -> ()

let yojson_of_aws_securityhub_standards_subscription =
  (function
   | { id = v_id; standards_arn = v_standards_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_standards_arn in
         ("standards_arn", arg) :: bnds
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
    : aws_securityhub_standards_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_standards_subscription

[@@@deriving.end]

let aws_securityhub_standards_subscription ?id ~standards_arn () :
    aws_securityhub_standards_subscription =
  { id; standards_arn }

type t = { id : string prop; standards_arn : string prop }

let make ?id ~standards_arn __id =
  let __type = "aws_securityhub_standards_subscription" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       standards_arn = Prop.computed __type __id "standards_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_standards_subscription
        (aws_securityhub_standards_subscription ?id ~standards_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~standards_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~standards_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
