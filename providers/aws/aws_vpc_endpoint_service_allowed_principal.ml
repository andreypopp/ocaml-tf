(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_service_allowed_principal = {
  id : string prop option; [@option]
  principal_arn : string prop;
  vpc_endpoint_service_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_service_allowed_principal) -> ()

let yojson_of_aws_vpc_endpoint_service_allowed_principal =
  (function
   | {
       id = v_id;
       principal_arn = v_principal_arn;
       vpc_endpoint_service_id = v_vpc_endpoint_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_service_id
         in
         ("vpc_endpoint_service_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_arn in
         ("principal_arn", arg) :: bnds
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
    : aws_vpc_endpoint_service_allowed_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_service_allowed_principal

[@@@deriving.end]

let aws_vpc_endpoint_service_allowed_principal ?id ~principal_arn
    ~vpc_endpoint_service_id () :
    aws_vpc_endpoint_service_allowed_principal =
  { id; principal_arn; vpc_endpoint_service_id }

type t = {
  tf_name : string;
  id : string prop;
  principal_arn : string prop;
  vpc_endpoint_service_id : string prop;
}

let make ?id ~principal_arn ~vpc_endpoint_service_id __id =
  let __type = "aws_vpc_endpoint_service_allowed_principal" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       principal_arn = Prop.computed __type __id "principal_arn";
       vpc_endpoint_service_id =
         Prop.computed __type __id "vpc_endpoint_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service_allowed_principal
        (aws_vpc_endpoint_service_allowed_principal ?id
           ~principal_arn ~vpc_endpoint_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal_arn ~vpc_endpoint_service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~principal_arn ~vpc_endpoint_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
