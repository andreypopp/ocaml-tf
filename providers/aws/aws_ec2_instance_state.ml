(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_ec2_instance_state = {
  force : bool prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  state : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_instance_state) -> ()

let yojson_of_aws_ec2_instance_state =
  (function
   | {
       force = v_force;
       id = v_id;
       instance_id = v_instance_id;
       state = v_state;
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
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         match v_force with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_instance_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_instance_state

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_instance_state ?force ?id ?timeouts ~instance_id ~state
    () : aws_ec2_instance_state =
  { force; id; instance_id; state; timeouts }

type t = {
  tf_name : string;
  force : bool prop;
  id : string prop;
  instance_id : string prop;
  state : string prop;
}

let make ?force ?id ?timeouts ~instance_id ~state __id =
  let __type = "aws_ec2_instance_state" in
  let __attrs =
    ({
       tf_name = __id;
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_state
        (aws_ec2_instance_state ?force ?id ?timeouts ~instance_id
           ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?force ?id ?timeouts ~instance_id ~state __id
    =
  let (r : _ Tf_core.resource) =
    make ?force ?id ?timeouts ~instance_id ~state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
