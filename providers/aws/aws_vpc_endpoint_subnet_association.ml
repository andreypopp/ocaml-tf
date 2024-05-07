(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type aws_vpc_endpoint_subnet_association = {
  id : string prop option; [@option]
  subnet_id : string prop;
  vpc_endpoint_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_subnet_association) -> ()

let yojson_of_aws_vpc_endpoint_subnet_association =
  (function
   | {
       id = v_id;
       subnet_id = v_subnet_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
    : aws_vpc_endpoint_subnet_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_subnet_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_endpoint_subnet_association ?id ?timeouts ~subnet_id
    ~vpc_endpoint_id () : aws_vpc_endpoint_subnet_association =
  { id; subnet_id; vpc_endpoint_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  subnet_id : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ?timeouts ~subnet_id ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_subnet_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_subnet_association
        (aws_vpc_endpoint_subnet_association ?id ?timeouts ~subnet_id
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~subnet_id ~vpc_endpoint_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~subnet_id ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
