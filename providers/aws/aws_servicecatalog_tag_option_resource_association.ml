(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type aws_servicecatalog_tag_option_resource_association = {
  id : string prop option; [@option]
  resource_id : string prop;
  tag_option_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_servicecatalog_tag_option_resource_association) -> ()

let yojson_of_aws_servicecatalog_tag_option_resource_association =
  (function
   | {
       id = v_id;
       resource_id = v_resource_id;
       tag_option_id = v_tag_option_id;
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
         let arg = yojson_of_prop yojson_of_string v_tag_option_id in
         ("tag_option_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
    : aws_servicecatalog_tag_option_resource_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_tag_option_resource_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_servicecatalog_tag_option_resource_association ?id ?timeouts
    ~resource_id ~tag_option_id () :
    aws_servicecatalog_tag_option_resource_association =
  { id; resource_id; tag_option_id; timeouts }

type t = {
  id : string prop;
  resource_arn : string prop;
  resource_created_time : string prop;
  resource_description : string prop;
  resource_id : string prop;
  resource_name : string prop;
  tag_option_id : string prop;
}

let make ?id ?timeouts ~resource_id ~tag_option_id __id =
  let __type =
    "aws_servicecatalog_tag_option_resource_association"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_created_time =
         Prop.computed __type __id "resource_created_time";
       resource_description =
         Prop.computed __type __id "resource_description";
       resource_id = Prop.computed __type __id "resource_id";
       resource_name = Prop.computed __type __id "resource_name";
       tag_option_id = Prop.computed __type __id "tag_option_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_tag_option_resource_association
        (aws_servicecatalog_tag_option_resource_association ?id
           ?timeouts ~resource_id ~tag_option_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~resource_id ~tag_option_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~resource_id ~tag_option_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
