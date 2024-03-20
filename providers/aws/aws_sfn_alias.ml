(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_configuration = {
  state_machine_version_arn : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_configuration) -> ()

let yojson_of_routing_configuration =
  (function
   | {
       state_machine_version_arn = v_state_machine_version_arn;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_state_machine_version_arn
         in
         ("state_machine_version_arn", arg) :: bnds
       in
       `Assoc bnds
    : routing_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_configuration

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

type aws_sfn_alias = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  routing_configuration : routing_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sfn_alias) -> ()

let yojson_of_aws_sfn_alias =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       routing_configuration = v_routing_configuration;
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
           yojson_of_list yojson_of_routing_configuration
             v_routing_configuration
         in
         ("routing_configuration", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sfn_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sfn_alias

[@@@deriving.end]

let routing_configuration ~state_machine_version_arn ~weight () :
    routing_configuration =
  { state_machine_version_arn; weight }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_sfn_alias ?description ?id ?timeouts ~name
    ~routing_configuration () : aws_sfn_alias =
  { description; id; name; routing_configuration; timeouts }

type t = {
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ?timeouts ~name ~routing_configuration __id
    =
  let __type = "aws_sfn_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_alias
        (aws_sfn_alias ?description ?id ?timeouts ~name
           ~routing_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~routing_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~routing_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
