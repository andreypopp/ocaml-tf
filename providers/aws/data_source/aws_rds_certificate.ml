(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_certificate = {
  id : string prop option; [@option]
  latest_valid_till : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_certificate) -> ()

let yojson_of_aws_rds_certificate =
  (function
   | { id = v_id; latest_valid_till = v_latest_valid_till } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_latest_valid_till with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "latest_valid_till", arg in
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
    : aws_rds_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_certificate

[@@@deriving.end]

let aws_rds_certificate ?id ?latest_valid_till () :
    aws_rds_certificate =
  { id; latest_valid_till }

type t = {
  arn : string prop;
  certificate_type : string prop;
  customer_override : bool prop;
  customer_override_valid_till : string prop;
  id : string prop;
  latest_valid_till : bool prop;
  thumbprint : string prop;
  valid_from : string prop;
  valid_till : string prop;
}

let make ?id ?latest_valid_till __id =
  let __type = "aws_rds_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate_type =
         Prop.computed __type __id "certificate_type";
       customer_override =
         Prop.computed __type __id "customer_override";
       customer_override_valid_till =
         Prop.computed __type __id "customer_override_valid_till";
       id = Prop.computed __type __id "id";
       latest_valid_till =
         Prop.computed __type __id "latest_valid_till";
       thumbprint = Prop.computed __type __id "thumbprint";
       valid_from = Prop.computed __type __id "valid_from";
       valid_till = Prop.computed __type __id "valid_till";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_certificate
        (aws_rds_certificate ?id ?latest_valid_till ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?latest_valid_till __id =
  let (r : _ Tf_core.resource) = make ?id ?latest_valid_till __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
