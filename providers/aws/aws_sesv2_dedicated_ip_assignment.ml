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

type aws_sesv2_dedicated_ip_assignment = {
  destination_pool_name : string prop;
  id : string prop option; [@option]
  ip : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_dedicated_ip_assignment) -> ()

let yojson_of_aws_sesv2_dedicated_ip_assignment =
  (function
   | {
       destination_pool_name = v_destination_pool_name;
       id = v_id;
       ip = v_ip;
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_destination_pool_name
         in
         ("destination_pool_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_dedicated_ip_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_dedicated_ip_assignment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_sesv2_dedicated_ip_assignment ?id ?timeouts
    ~destination_pool_name ~ip () : aws_sesv2_dedicated_ip_assignment
    =
  { destination_pool_name; id; ip; timeouts }

type t = {
  destination_pool_name : string prop;
  id : string prop;
  ip : string prop;
}

let make ?id ?timeouts ~destination_pool_name ~ip __id =
  let __type = "aws_sesv2_dedicated_ip_assignment" in
  let __attrs =
    ({
       destination_pool_name =
         Prop.computed __type __id "destination_pool_name";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_dedicated_ip_assignment
        (aws_sesv2_dedicated_ip_assignment ?id ?timeouts
           ~destination_pool_name ~ip ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~destination_pool_name ~ip __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~destination_pool_name ~ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
