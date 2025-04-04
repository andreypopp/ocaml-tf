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

type azurerm_lab_service_user = {
  additional_usage_quota : string prop option; [@option]
  email : string prop;
  id : string prop option; [@option]
  lab_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lab_service_user) -> ()

let yojson_of_azurerm_lab_service_user =
  (function
   | {
       additional_usage_quota = v_additional_usage_quota;
       email = v_email;
       id = v_id;
       lab_id = v_lab_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lab_id in
         ("lab_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_additional_usage_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_usage_quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lab_service_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lab_service_user

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_user ?additional_usage_quota ?id ?timeouts
    ~email ~lab_id ~name () : azurerm_lab_service_user =
  { additional_usage_quota; email; id; lab_id; name; timeouts }

type t = {
  tf_name : string;
  additional_usage_quota : string prop;
  email : string prop;
  id : string prop;
  lab_id : string prop;
  name : string prop;
}

let make ?additional_usage_quota ?id ?timeouts ~email ~lab_id ~name
    __id =
  let __type = "azurerm_lab_service_user" in
  let __attrs =
    ({
       tf_name = __id;
       additional_usage_quota =
         Prop.computed __type __id "additional_usage_quota";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       lab_id = Prop.computed __type __id "lab_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_user
        (azurerm_lab_service_user ?additional_usage_quota ?id
           ?timeouts ~email ~lab_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_usage_quota ?id ?timeouts ~email
    ~lab_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_usage_quota ?id ?timeouts ~email ~lab_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
