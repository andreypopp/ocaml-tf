(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type targets = { key : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : targets) -> ()

let yojson_of_targets =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets

[@@@deriving.end]

type aws_ssm_maintenance_window_target = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  owner_information : string prop option; [@option]
  resource_type : string prop;
  window_id : string prop;
  targets : targets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_maintenance_window_target) -> ()

let yojson_of_aws_ssm_maintenance_window_target =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       owner_information = v_owner_information;
       resource_type = v_resource_type;
       window_id = v_window_id;
       targets = v_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_targets v_targets in
         ("targets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window_id in
         ("window_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         match v_owner_information with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_information", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_maintenance_window_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_maintenance_window_target

[@@@deriving.end]

let targets ~key ~values () : targets = { key; values }

let aws_ssm_maintenance_window_target ?description ?id ?name
    ?owner_information ~resource_type ~window_id ~targets () :
    aws_ssm_maintenance_window_target =
  {
    description;
    id;
    name;
    owner_information;
    resource_type;
    window_id;
    targets;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  owner_information : string prop;
  resource_type : string prop;
  window_id : string prop;
}

let make ?description ?id ?name ?owner_information ~resource_type
    ~window_id ~targets __id =
  let __type = "aws_ssm_maintenance_window_target" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_information =
         Prop.computed __type __id "owner_information";
       resource_type = Prop.computed __type __id "resource_type";
       window_id = Prop.computed __type __id "window_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_maintenance_window_target
        (aws_ssm_maintenance_window_target ?description ?id ?name
           ?owner_information ~resource_type ~window_id ~targets ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?owner_information
    ~resource_type ~window_id ~targets __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?owner_information ~resource_type
      ~window_id ~targets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
