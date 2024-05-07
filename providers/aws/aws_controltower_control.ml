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

type aws_controltower_control = {
  control_identifier : string prop;
  id : string prop option; [@option]
  target_identifier : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_controltower_control) -> ()

let yojson_of_aws_controltower_control =
  (function
   | {
       control_identifier = v_control_identifier;
       id = v_id;
       target_identifier = v_target_identifier;
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
           yojson_of_prop yojson_of_string v_target_identifier
         in
         ("target_identifier", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_control_identifier
         in
         ("control_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_controltower_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_controltower_control

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_controltower_control ?id ?timeouts ~control_identifier
    ~target_identifier () : aws_controltower_control =
  { control_identifier; id; target_identifier; timeouts }

type t = {
  tf_name : string;
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

let make ?id ?timeouts ~control_identifier ~target_identifier __id =
  let __type = "aws_controltower_control" in
  let __attrs =
    ({
       tf_name = __id;
       control_identifier =
         Prop.computed __type __id "control_identifier";
       id = Prop.computed __type __id "id";
       target_identifier =
         Prop.computed __type __id "target_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_controltower_control
        (aws_controltower_control ?id ?timeouts ~control_identifier
           ~target_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~control_identifier
    ~target_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~control_identifier ~target_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
