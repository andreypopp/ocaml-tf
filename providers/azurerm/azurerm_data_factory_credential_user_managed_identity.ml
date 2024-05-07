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

type azurerm_data_factory_credential_user_managed_identity = {
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  identity_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_credential_user_managed_identity) ->
  ()

let yojson_of_azurerm_data_factory_credential_user_managed_identity =
  (function
   | {
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       id = v_id;
       identity_id = v_identity_id;
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
         let arg = yojson_of_prop yojson_of_string v_identity_id in
         ("identity_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_credential_user_managed_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_factory_credential_user_managed_identity

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_credential_user_managed_identity
    ?annotations ?description ?id ?timeouts ~data_factory_id
    ~identity_id ~name () :
    azurerm_data_factory_credential_user_managed_identity =
  {
    annotations;
    data_factory_id;
    description;
    id;
    identity_id;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  identity_id : string prop;
  name : string prop;
}

let make ?annotations ?description ?id ?timeouts ~data_factory_id
    ~identity_id ~name __id =
  let __type =
    "azurerm_data_factory_credential_user_managed_identity"
  in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_credential_user_managed_identity
        (azurerm_data_factory_credential_user_managed_identity
           ?annotations ?description ?id ?timeouts ~data_factory_id
           ~identity_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?timeouts
    ~data_factory_id ~identity_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?timeouts ~data_factory_id
      ~identity_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
