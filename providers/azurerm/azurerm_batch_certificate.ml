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

type azurerm_batch_certificate = {
  account_name : string prop;
  certificate : string prop;
  format : string prop;
  id : string prop option; [@option]
  password : string prop option; [@option]
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_certificate) -> ()

let yojson_of_azurerm_batch_certificate =
  (function
   | {
       account_name = v_account_name;
       certificate = v_certificate;
       format = v_format;
       id = v_id;
       password = v_password;
       resource_group_name = v_resource_group_name;
       thumbprint = v_thumbprint;
       thumbprint_algorithm = v_thumbprint_algorithm;
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
           yojson_of_prop yojson_of_string v_thumbprint_algorithm
         in
         ("thumbprint_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
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
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_batch_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_certificate ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm () : azurerm_batch_certificate =
  {
    account_name;
    certificate;
    format;
    id;
    password;
    resource_group_name;
    thumbprint;
    thumbprint_algorithm;
    timeouts;
  }

type t = {
  account_name : string prop;
  certificate : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  public_data : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
}

let make ?id ?password ?timeouts ~account_name ~certificate ~format
    ~resource_group_name ~thumbprint ~thumbprint_algorithm __id =
  let __type = "azurerm_batch_certificate" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       certificate = Prop.computed __type __id "certificate";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       public_data = Prop.computed __type __id "public_data";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       thumbprint = Prop.computed __type __id "thumbprint";
       thumbprint_algorithm =
         Prop.computed __type __id "thumbprint_algorithm";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_certificate
        (azurerm_batch_certificate ?id ?password ?timeouts
           ~account_name ~certificate ~format ~resource_group_name
           ~thumbprint ~thumbprint_algorithm ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password ?timeouts ~account_name ~certificate ~format
      ~resource_group_name ~thumbprint ~thumbprint_algorithm __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
