(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_type = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_type) -> ()

let yojson_of_compute_type =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : compute_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_type

[@@@deriving.end]

type root_storage = { capacity : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : root_storage) -> ()

let yojson_of_root_storage =
  (function
   | { capacity = v_capacity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : root_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_storage

[@@@deriving.end]

type user_storage = { capacity : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : user_storage) -> ()

let yojson_of_user_storage =
  (function
   | { capacity = v_capacity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : user_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_storage

[@@@deriving.end]

type aws_workspaces_bundle = {
  bundle_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  owner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_bundle) -> ()

let yojson_of_aws_workspaces_bundle =
  (function
   | {
       bundle_id = v_bundle_id;
       id = v_id;
       name = v_name;
       owner = v_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
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
         match v_bundle_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_workspaces_bundle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_bundle

[@@@deriving.end]

let aws_workspaces_bundle ?bundle_id ?id ?name ?owner () :
    aws_workspaces_bundle =
  { bundle_id; id; name; owner }

type t = {
  tf_name : string;
  bundle_id : string prop;
  compute_type : compute_type list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  root_storage : root_storage list prop;
  user_storage : user_storage list prop;
}

let make ?bundle_id ?id ?name ?owner __id =
  let __type = "aws_workspaces_bundle" in
  let __attrs =
    ({
       tf_name = __id;
       bundle_id = Prop.computed __type __id "bundle_id";
       compute_type = Prop.computed __type __id "compute_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       root_storage = Prop.computed __type __id "root_storage";
       user_storage = Prop.computed __type __id "user_storage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_bundle
        (aws_workspaces_bundle ?bundle_id ?id ?name ?owner ());
    attrs = __attrs;
  }

let register ?tf_module ?bundle_id ?id ?name ?owner __id =
  let (r : _ Tf_core.resource) =
    make ?bundle_id ?id ?name ?owner __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
