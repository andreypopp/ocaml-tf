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

type aws_resourcegroups_resource = {
  group_arn : string prop;
  id : string prop option; [@option]
  resource_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_resourcegroups_resource) -> ()

let yojson_of_aws_resourcegroups_resource =
  (function
   | {
       group_arn = v_group_arn;
       id = v_id;
       resource_arn = v_resource_arn;
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
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_arn in
         ("group_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_resourcegroups_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_resourcegroups_resource

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_resourcegroups_resource ?id ?timeouts ~group_arn
    ~resource_arn () : aws_resourcegroups_resource =
  { group_arn; id; resource_arn; timeouts }

type t = {
  tf_name : string;
  group_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_type : string prop;
}

let make ?id ?timeouts ~group_arn ~resource_arn __id =
  let __type = "aws_resourcegroups_resource" in
  let __attrs =
    ({
       tf_name = __id;
       group_arn = Prop.computed __type __id "group_arn";
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_resourcegroups_resource
        (aws_resourcegroups_resource ?id ?timeouts ~group_arn
           ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~group_arn ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~group_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
