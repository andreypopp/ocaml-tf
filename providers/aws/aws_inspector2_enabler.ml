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

type aws_inspector2_enabler = {
  account_ids : string prop list;
  id : string prop option; [@option]
  resource_types : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector2_enabler) -> ()

let yojson_of_aws_inspector2_enabler =
  (function
   | {
       account_ids = v_account_ids;
       id = v_id;
       resource_types = v_resource_types;
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resource_types
         in
         ("resource_types", arg) :: bnds
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_account_ids
         in
         ("account_ids", arg) :: bnds
       in
       `Assoc bnds
    : aws_inspector2_enabler -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector2_enabler

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_inspector2_enabler ?id ?timeouts ~account_ids ~resource_types
    () : aws_inspector2_enabler =
  { account_ids; id; resource_types; timeouts }

type t = {
  tf_name : string;
  account_ids : string list prop;
  id : string prop;
  resource_types : string list prop;
}

let make ?id ?timeouts ~account_ids ~resource_types __id =
  let __type = "aws_inspector2_enabler" in
  let __attrs =
    ({
       tf_name = __id;
       account_ids = Prop.computed __type __id "account_ids";
       id = Prop.computed __type __id "id";
       resource_types = Prop.computed __type __id "resource_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector2_enabler
        (aws_inspector2_enabler ?id ?timeouts ~account_ids
           ~resource_types ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_ids ~resource_types
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_ids ~resource_types __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
