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

type aws_eip_domain_name = {
  allocation_id : string prop;
  domain_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eip_domain_name) -> ()

let yojson_of_aws_eip_domain_name =
  (function
   | {
       allocation_id = v_allocation_id;
       domain_name = v_domain_name;
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_allocation_id in
         ("allocation_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_eip_domain_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eip_domain_name

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_eip_domain_name ?timeouts ~allocation_id ~domain_name () :
    aws_eip_domain_name =
  { allocation_id; domain_name; timeouts }

type t = {
  tf_name : string;
  allocation_id : string prop;
  domain_name : string prop;
  id : string prop;
  ptr_record : string prop;
}

let make ?timeouts ~allocation_id ~domain_name __id =
  let __type = "aws_eip_domain_name" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_id = Prop.computed __type __id "allocation_id";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       ptr_record = Prop.computed __type __id "ptr_record";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eip_domain_name
        (aws_eip_domain_name ?timeouts ~allocation_id ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~allocation_id ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~allocation_id ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
