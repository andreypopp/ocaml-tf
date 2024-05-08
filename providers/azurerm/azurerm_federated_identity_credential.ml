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

type azurerm_federated_identity_credential = {
  audience : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  issuer : string prop;
  name : string prop;
  parent_id : string prop;
  resource_group_name : string prop;
  subject : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_federated_identity_credential) -> ()

let yojson_of_azurerm_federated_identity_credential =
  (function
   | {
       audience = v_audience;
       id = v_id;
       issuer = v_issuer;
       name = v_name;
       parent_id = v_parent_id;
       resource_group_name = v_resource_group_name;
       subject = v_subject;
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
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
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
         if Stdlib.( = ) [] v_audience then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_audience
           in
           let bnd = "audience", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_federated_identity_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_federated_identity_credential

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_federated_identity_credential ?id ?timeouts ~audience
    ~issuer ~name ~parent_id ~resource_group_name ~subject () :
    azurerm_federated_identity_credential =
  {
    audience;
    id;
    issuer;
    name;
    parent_id;
    resource_group_name;
    subject;
    timeouts;
  }

type t = {
  tf_name : string;
  audience : string list prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  parent_id : string prop;
  resource_group_name : string prop;
  subject : string prop;
}

let make ?id ?timeouts ~audience ~issuer ~name ~parent_id
    ~resource_group_name ~subject __id =
  let __type = "azurerm_federated_identity_credential" in
  let __attrs =
    ({
       tf_name = __id;
       audience = Prop.computed __type __id "audience";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject = Prop.computed __type __id "subject";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_federated_identity_credential
        (azurerm_federated_identity_credential ?id ?timeouts
           ~audience ~issuer ~name ~parent_id ~resource_group_name
           ~subject ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~audience ~issuer ~name
    ~parent_id ~resource_group_name ~subject __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~audience ~issuer ~name ~parent_id
      ~resource_group_name ~subject __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
