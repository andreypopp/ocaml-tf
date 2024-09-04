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

type azurerm_key_vault_managed_storage_account_sas_token_definition = {
  id : string prop option; [@option]
  managed_storage_account_id : string prop;
  name : string prop;
  sas_template_uri : string prop;
  sas_type : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  validity_period : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_key_vault_managed_storage_account_sas_token_definition) ->
  ()

let yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
    =
  (function
   | {
       id = v_id;
       managed_storage_account_id = v_managed_storage_account_id;
       name = v_name;
       sas_template_uri = v_sas_template_uri;
       sas_type = v_sas_type;
       tags = v_tags;
       validity_period = v_validity_period;
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
           yojson_of_prop yojson_of_string v_validity_period
         in
         ("validity_period", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_sas_type in
         ("sas_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sas_template_uri
         in
         ("sas_template_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_managed_storage_account_id
         in
         ("managed_storage_account_id", arg) :: bnds
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
    : azurerm_key_vault_managed_storage_account_sas_token_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_storage_account_sas_token_definition
    ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period () :
    azurerm_key_vault_managed_storage_account_sas_token_definition =
  {
    id;
    managed_storage_account_id;
    name;
    sas_template_uri;
    sas_type;
    tags;
    validity_period;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  managed_storage_account_id : string prop;
  name : string prop;
  sas_template_uri : string prop;
  sas_type : string prop;
  secret_id : string prop;
  tags : string Tf_core.assoc prop;
  validity_period : string prop;
}

let make ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period __id =
  let __type =
    "azurerm_key_vault_managed_storage_account_sas_token_definition"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       managed_storage_account_id =
         Prop.computed __type __id "managed_storage_account_id";
       name = Prop.computed __type __id "name";
       sas_template_uri =
         Prop.computed __type __id "sas_template_uri";
       sas_type = Prop.computed __type __id "sas_type";
       secret_id = Prop.computed __type __id "secret_id";
       tags = Prop.computed __type __id "tags";
       validity_period = Prop.computed __type __id "validity_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
        (azurerm_key_vault_managed_storage_account_sas_token_definition
           ?id ?tags ?timeouts ~managed_storage_account_id ~name
           ~sas_template_uri ~sas_type ~validity_period ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~managed_storage_account_id ~name ~sas_template_uri ~sas_type
    ~validity_period __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~managed_storage_account_id ~name
      ~sas_template_uri ~sas_type ~validity_period __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
