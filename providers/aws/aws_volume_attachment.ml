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

type aws_volume_attachment = {
  device_name : string prop;
  force_detach : bool prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  skip_destroy : bool prop option; [@option]
  stop_instance_before_detaching : bool prop option; [@option]
  volume_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_volume_attachment) -> ()

let yojson_of_aws_volume_attachment =
  (function
   | {
       device_name = v_device_name;
       force_detach = v_force_detach;
       id = v_id;
       instance_id = v_instance_id;
       skip_destroy = v_skip_destroy;
       stop_instance_before_detaching =
         v_stop_instance_before_detaching;
       volume_id = v_volume_id;
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
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         match v_stop_instance_before_detaching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stop_instance_before_detaching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
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
         match v_force_detach with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_detach", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_volume_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_volume_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_volume_attachment ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id () : aws_volume_attachment =
  {
    device_name;
    force_detach;
    id;
    instance_id;
    skip_destroy;
    stop_instance_before_detaching;
    volume_id;
    timeouts;
  }

type t = {
  device_name : string prop;
  force_detach : bool prop;
  id : string prop;
  instance_id : string prop;
  skip_destroy : bool prop;
  stop_instance_before_detaching : bool prop;
  volume_id : string prop;
}

let make ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __id =
  let __type = "aws_volume_attachment" in
  let __attrs =
    ({
       device_name = Prop.computed __type __id "device_name";
       force_detach = Prop.computed __type __id "force_detach";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       stop_instance_before_detaching =
         Prop.computed __type __id "stop_instance_before_detaching";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_volume_attachment
        (aws_volume_attachment ?force_detach ?id ?skip_destroy
           ?stop_instance_before_detaching ?timeouts ~device_name
           ~instance_id ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?force_detach ?id ?skip_destroy
      ?stop_instance_before_detaching ?timeouts ~device_name
      ~instance_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
