(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

[@@@deriving.end]

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

type aws_controltower_control = {
  control_identifier : string prop;
  id : string prop option; [@option]
  target_identifier : string prop;
  parameters : parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       parameters = v_parameters;
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
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters) v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
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

let parameters ~key ~value () : parameters = { key; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_controltower_control ?id ?timeouts ~control_identifier
    ~target_identifier ~parameters () : aws_controltower_control =
  { control_identifier; id; target_identifier; parameters; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

let make ?id ?timeouts ~control_identifier ~target_identifier
    ~parameters __id =
  let __type = "aws_controltower_control" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
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
           ~target_identifier ~parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~control_identifier
    ~target_identifier ~parameters __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~control_identifier ~target_identifier
      ~parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
