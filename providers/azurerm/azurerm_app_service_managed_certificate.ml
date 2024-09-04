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

type azurerm_app_service_managed_certificate = {
  custom_hostname_binding_id : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_managed_certificate) -> ()

let yojson_of_azurerm_app_service_managed_certificate =
  (function
   | {
       custom_hostname_binding_id = v_custom_hostname_binding_id;
       id = v_id;
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
             v_custom_hostname_binding_id
         in
         ("custom_hostname_binding_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_managed_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_managed_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_managed_certificate ?id ?tags ?timeouts
    ~custom_hostname_binding_id () :
    azurerm_app_service_managed_certificate =
  { custom_hostname_binding_id; id; tags; timeouts }

type t = {
  tf_name : string;
  canonical_name : string prop;
  custom_hostname_binding_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  subject_name : string prop;
  tags : string Tf_core.assoc prop;
  thumbprint : string prop;
}

let make ?id ?tags ?timeouts ~custom_hostname_binding_id __id =
  let __type = "azurerm_app_service_managed_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       canonical_name = Prop.computed __type __id "canonical_name";
       custom_hostname_binding_id =
         Prop.computed __type __id "custom_hostname_binding_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       friendly_name = Prop.computed __type __id "friendly_name";
       host_names = Prop.computed __type __id "host_names";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
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
      yojson_of_azurerm_app_service_managed_certificate
        (azurerm_app_service_managed_certificate ?id ?tags ?timeouts
           ~custom_hostname_binding_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~custom_hostname_binding_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~custom_hostname_binding_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
