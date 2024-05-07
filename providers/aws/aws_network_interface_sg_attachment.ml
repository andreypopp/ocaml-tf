(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type aws_network_interface_sg_attachment = {
  id : string prop option; [@option]
  network_interface_id : string prop;
  security_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_interface_sg_attachment) -> ()

let yojson_of_aws_network_interface_sg_attachment =
  (function
   | {
       id = v_id;
       network_interface_id = v_network_interface_id;
       security_group_id = v_security_group_id;
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
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
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
    : aws_network_interface_sg_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_interface_sg_attachment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_network_interface_sg_attachment ?id ?timeouts
    ~network_interface_id ~security_group_id () :
    aws_network_interface_sg_attachment =
  { id; network_interface_id; security_group_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  network_interface_id : string prop;
  security_group_id : string prop;
}

let make ?id ?timeouts ~network_interface_id ~security_group_id __id
    =
  let __type = "aws_network_interface_sg_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_interface_sg_attachment
        (aws_network_interface_sg_attachment ?id ?timeouts
           ~network_interface_id ~security_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~network_interface_id
    ~security_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~network_interface_id ~security_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
