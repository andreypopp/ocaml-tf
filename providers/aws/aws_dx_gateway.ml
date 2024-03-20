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

type aws_dx_gateway = {
  amazon_side_asn : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_gateway) -> ()

let yojson_of_aws_dx_gateway =
  (function
   | {
       amazon_side_asn = v_amazon_side_asn;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_amazon_side_asn
         in
         ("amazon_side_asn", arg) :: bnds
       in
       `Assoc bnds
    : aws_dx_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_gateway

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name () :
    aws_dx_gateway =
  { amazon_side_asn; id; name; timeouts }

type t = {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

let make ?id ?timeouts ~amazon_side_asn ~name __id =
  let __type = "aws_dx_gateway" in
  let __attrs =
    ({
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_gateway
        (aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~amazon_side_asn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~amazon_side_asn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
