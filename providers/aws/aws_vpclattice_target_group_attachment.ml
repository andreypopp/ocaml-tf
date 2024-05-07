(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target = {
  id : string prop;
  port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | { id = v_id; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

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

type aws_vpclattice_target_group_attachment = {
  id : string prop option; [@option]
  target_group_identifier : string prop;
  target : target list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_target_group_attachment) -> ()

let yojson_of_aws_vpclattice_target_group_attachment =
  (function
   | {
       id = v_id;
       target_group_identifier = v_target_group_identifier;
       target = v_target;
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
         let arg = yojson_of_list yojson_of_target v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_identifier
         in
         ("target_group_identifier", arg) :: bnds
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
    : aws_vpclattice_target_group_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_target_group_attachment

[@@@deriving.end]

let target ?port ~id () : target = { id; port }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpclattice_target_group_attachment ?id ?timeouts
    ~target_group_identifier ~target () :
    aws_vpclattice_target_group_attachment =
  { id; target_group_identifier; target; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  target_group_identifier : string prop;
}

let make ?id ?timeouts ~target_group_identifier ~target __id =
  let __type = "aws_vpclattice_target_group_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       target_group_identifier =
         Prop.computed __type __id "target_group_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_target_group_attachment
        (aws_vpclattice_target_group_attachment ?id ?timeouts
           ~target_group_identifier ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~target_group_identifier
    ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~target_group_identifier ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
