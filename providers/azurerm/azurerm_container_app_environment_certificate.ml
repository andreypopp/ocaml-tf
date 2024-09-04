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

type azurerm_container_app_environment_certificate = {
  certificate_blob_base64 : string prop;
  certificate_password : string prop;
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_environment_certificate) -> ()

let yojson_of_azurerm_container_app_environment_certificate =
  (function
   | {
       certificate_blob_base64 = v_certificate_blob_base64;
       certificate_password = v_certificate_password;
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_password
         in
         ("certificate_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_blob_base64
         in
         ("certificate_blob_base64", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_environment_certificate ?id ?tags ?timeouts
    ~certificate_blob_base64 ~certificate_password
    ~container_app_environment_id ~name () :
    azurerm_container_app_environment_certificate =
  {
    certificate_blob_base64;
    certificate_password;
    container_app_environment_id;
    id;
    name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_blob_base64 : string prop;
  certificate_password : string prop;
  container_app_environment_id : string prop;
  expiration_date : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  name : string prop;
  subject_name : string prop;
  tags : string Tf_core.assoc prop;
  thumbprint : string prop;
}

let make ?id ?tags ?timeouts ~certificate_blob_base64
    ~certificate_password ~container_app_environment_id ~name __id =
  let __type = "azurerm_container_app_environment_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_blob_base64 =
         Prop.computed __type __id "certificate_blob_base64";
       certificate_password =
         Prop.computed __type __id "certificate_password";
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       subject_name = Prop.computed __type __id "subject_name";
       tags = Prop.computed __type __id "tags";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment_certificate
        (azurerm_container_app_environment_certificate ?id ?tags
           ?timeouts ~certificate_blob_base64 ~certificate_password
           ~container_app_environment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~certificate_blob_base64
    ~certificate_password ~container_app_environment_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~certificate_blob_base64
      ~certificate_password ~container_app_environment_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
