(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; read = v_read; update = v_update } ->
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

type okta_app_group_assignment = {
  app_id : string prop;
  group_id : string prop;
  id : string prop option; [@option]
  priority : float prop option; [@option]
  profile : string prop option; [@option]
  retain_assignment : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_group_assignment) -> ()

let yojson_of_okta_app_group_assignment =
  (function
   | {
       app_id = v_app_id;
       group_id = v_group_id;
       id = v_id;
       priority = v_priority;
       profile = v_profile;
       retain_assignment = v_retain_assignment;
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
         match v_retain_assignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_assignment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_group_assignment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_group_assignment

[@@@deriving.end]

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let okta_app_group_assignment ?id ?priority ?profile
    ?retain_assignment ?timeouts ~app_id ~group_id () :
    okta_app_group_assignment =
  {
    app_id;
    group_id;
    id;
    priority;
    profile;
    retain_assignment;
    timeouts;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  group_id : string prop;
  id : string prop;
  priority : float prop;
  profile : string prop;
  retain_assignment : bool prop;
}

let make ?id ?priority ?profile ?retain_assignment ?timeouts ~app_id
    ~group_id __id =
  let __type = "okta_app_group_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       profile = Prop.computed __type __id "profile";
       retain_assignment =
         Prop.computed __type __id "retain_assignment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_group_assignment
        (okta_app_group_assignment ?id ?priority ?profile
           ?retain_assignment ?timeouts ~app_id ~group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?priority ?profile ?retain_assignment
    ?timeouts ~app_id ~group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?priority ?profile ?retain_assignment ?timeouts ~app_id
      ~group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
