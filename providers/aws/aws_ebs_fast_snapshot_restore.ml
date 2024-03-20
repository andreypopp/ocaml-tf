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

type aws_ebs_fast_snapshot_restore = {
  availability_zone : string prop;
  snapshot_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_fast_snapshot_restore) -> ()

let yojson_of_aws_ebs_fast_snapshot_restore =
  (function
   | {
       availability_zone = v_availability_zone;
       snapshot_id = v_snapshot_id;
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
         let arg = yojson_of_prop yojson_of_string v_snapshot_id in
         ("snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : aws_ebs_fast_snapshot_restore ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_fast_snapshot_restore

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_fast_snapshot_restore ?timeouts ~availability_zone
    ~snapshot_id () : aws_ebs_fast_snapshot_restore =
  { availability_zone; snapshot_id; timeouts }

type t = {
  availability_zone : string prop;
  id : string prop;
  snapshot_id : string prop;
  state : string prop;
}

let make ?timeouts ~availability_zone ~snapshot_id __id =
  let __type = "aws_ebs_fast_snapshot_restore" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_fast_snapshot_restore
        (aws_ebs_fast_snapshot_restore ?timeouts ~availability_zone
           ~snapshot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~availability_zone ~snapshot_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~availability_zone ~snapshot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
