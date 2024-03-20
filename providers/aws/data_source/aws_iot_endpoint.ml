(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_endpoint = {
  endpoint_type : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_endpoint) -> ()

let yojson_of_aws_iot_endpoint =
  (function
   | { endpoint_type = v_endpoint_type; id = v_id } ->
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
         match v_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_endpoint

[@@@deriving.end]

let aws_iot_endpoint ?endpoint_type ?id () : aws_iot_endpoint =
  { endpoint_type; id }

type t = {
  endpoint_address : string prop;
  endpoint_type : string prop;
  id : string prop;
}

let make ?endpoint_type ?id __id =
  let __type = "aws_iot_endpoint" in
  let __attrs =
    ({
       endpoint_address =
         Prop.computed __type __id "endpoint_address";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_endpoint
        (aws_iot_endpoint ?endpoint_type ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint_type ?id __id =
  let (r : _ Tf_core.resource) = make ?endpoint_type ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
