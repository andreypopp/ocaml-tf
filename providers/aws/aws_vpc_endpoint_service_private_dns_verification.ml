(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_vpc_endpoint_service_private_dns_verification = {
  service_id : string prop;
  wait_for_verification : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_vpc_endpoint_service_private_dns_verification) -> ()

let yojson_of_aws_vpc_endpoint_service_private_dns_verification =
  (function
   | {
       service_id = v_service_id;
       wait_for_verification = v_wait_for_verification;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_wait_for_verification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_verification", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_endpoint_service_private_dns_verification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_service_private_dns_verification

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_vpc_endpoint_service_private_dns_verification
    ?wait_for_verification ?timeouts ~service_id () :
    aws_vpc_endpoint_service_private_dns_verification =
  { service_id; wait_for_verification; timeouts }

type t = {
  tf_name : string;
  service_id : string prop;
  wait_for_verification : bool prop;
}

let make ?wait_for_verification ?timeouts ~service_id __id =
  let __type = "aws_vpc_endpoint_service_private_dns_verification" in
  let __attrs =
    ({
       tf_name = __id;
       service_id = Prop.computed __type __id "service_id";
       wait_for_verification =
         Prop.computed __type __id "wait_for_verification";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service_private_dns_verification
        (aws_vpc_endpoint_service_private_dns_verification
           ?wait_for_verification ?timeouts ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?wait_for_verification ?timeouts ~service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?wait_for_verification ?timeouts ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
