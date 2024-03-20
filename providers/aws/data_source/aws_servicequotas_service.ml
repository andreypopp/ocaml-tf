(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicequotas_service = {
  id : string prop option; [@option]
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicequotas_service) -> ()

let yojson_of_aws_servicequotas_service =
  (function
   | { id = v_id; service_name = v_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
    : aws_servicequotas_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicequotas_service

[@@@deriving.end]

let aws_servicequotas_service ?id ~service_name () :
    aws_servicequotas_service =
  { id; service_name }

type t = {
  id : string prop;
  service_code : string prop;
  service_name : string prop;
}

let make ?id ~service_name __id =
  let __type = "aws_servicequotas_service" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       service_code = Prop.computed __type __id "service_code";
       service_name = Prop.computed __type __id "service_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_service
        (aws_servicequotas_service ?id ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~service_name __id =
  let (r : _ Tf_core.resource) = make ?id ~service_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
