(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replica = { region_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | { region_name = v_region_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

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

type aws_dynamodb_global_table = {
  id : string prop option; [@option]
  name : string prop;
  replica : replica list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_global_table) -> ()

let yojson_of_aws_dynamodb_global_table =
  (function
   | {
       id = v_id;
       name = v_name;
       replica = v_replica;
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
         let arg = yojson_of_list yojson_of_replica v_replica in
         ("replica", arg) :: bnds
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
       `Assoc bnds
    : aws_dynamodb_global_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_global_table

[@@@deriving.end]

let replica ~region_name () : replica = { region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dynamodb_global_table ?id ?timeouts ~name ~replica () :
    aws_dynamodb_global_table =
  { id; name; replica; timeouts }

type t = { arn : string prop; id : string prop; name : string prop }

let make ?id ?timeouts ~name ~replica __id =
  let __type = "aws_dynamodb_global_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_global_table
        (aws_dynamodb_global_table ?id ?timeouts ~name ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
