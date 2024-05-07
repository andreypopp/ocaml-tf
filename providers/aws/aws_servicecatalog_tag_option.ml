(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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

type aws_servicecatalog_tag_option = {
  active : bool prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  value : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_tag_option) -> ()

let yojson_of_aws_servicecatalog_tag_option =
  (function
   | {
       active = v_active;
       id = v_id;
       key = v_key;
       value = v_value;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_tag_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_tag_option

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_tag_option ?active ?id ?timeouts ~key ~value
    () : aws_servicecatalog_tag_option =
  { active; id; key; value; timeouts }

type t = {
  tf_name : string;
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

let make ?active ?id ?timeouts ~key ~value __id =
  let __type = "aws_servicecatalog_tag_option" in
  let __attrs =
    ({
       tf_name = __id;
       active = Prop.computed __type __id "active";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       owner = Prop.computed __type __id "owner";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_tag_option
        (aws_servicecatalog_tag_option ?active ?id ?timeouts ~key
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ?timeouts ~key ~value __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ?timeouts ~key ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
