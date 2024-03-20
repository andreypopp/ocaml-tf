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

type aws_cloudhsm_v2_hsm = {
  availability_zone : string prop option; [@option]
  cluster_id : string prop;
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  subnet_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudhsm_v2_hsm) -> ()

let yojson_of_aws_cloudhsm_v2_hsm =
  (function
   | {
       availability_zone = v_availability_zone;
       cluster_id = v_cluster_id;
       id = v_id;
       ip_address = v_ip_address;
       subnet_id = v_subnet_id;
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudhsm_v2_hsm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudhsm_v2_hsm

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id () : aws_cloudhsm_v2_hsm =
  {
    availability_zone;
    cluster_id;
    id;
    ip_address;
    subnet_id;
    timeouts;
  }

type t = {
  availability_zone : string prop;
  cluster_id : string prop;
  hsm_eni_id : string prop;
  hsm_id : string prop;
  hsm_state : string prop;
  id : string prop;
  ip_address : string prop;
  subnet_id : string prop;
}

let make ?availability_zone ?id ?ip_address ?subnet_id ?timeouts
    ~cluster_id __id =
  let __type = "aws_cloudhsm_v2_hsm" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       cluster_id = Prop.computed __type __id "cluster_id";
       hsm_eni_id = Prop.computed __type __id "hsm_eni_id";
       hsm_id = Prop.computed __type __id "hsm_id";
       hsm_state = Prop.computed __type __id "hsm_state";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudhsm_v2_hsm
        (aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address
           ?subnet_id ?timeouts ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?id ?ip_address ?subnet_id ?timeouts
      ~cluster_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
