(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_connection_accepter = {
  id : string prop option; [@option]
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_connection_accepter) -> ()

let yojson_of_aws_vpc_endpoint_connection_accepter =
  (function
   | {
       id = v_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
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
    : aws_vpc_endpoint_connection_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_connection_accepter

[@@@deriving.end]

let aws_vpc_endpoint_connection_accepter ?id ~vpc_endpoint_id
    ~vpc_endpoint_service_id () :
    aws_vpc_endpoint_connection_accepter =
  { id; vpc_endpoint_id; vpc_endpoint_service_id }

type t = {
  id : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
  vpc_endpoint_state : string prop;
}

let make ?id ~vpc_endpoint_id ~vpc_endpoint_service_id __id =
  let __type = "aws_vpc_endpoint_connection_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
       vpc_endpoint_service_id =
         Prop.computed __type __id "vpc_endpoint_service_id";
       vpc_endpoint_state =
         Prop.computed __type __id "vpc_endpoint_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_connection_accepter
        (aws_vpc_endpoint_connection_accepter ?id ~vpc_endpoint_id
           ~vpc_endpoint_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vpc_endpoint_id ~vpc_endpoint_service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~vpc_endpoint_id ~vpc_endpoint_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
