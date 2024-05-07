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

type azurerm_private_endpoint_application_security_group_association = {
  application_security_group_id : string prop;
  id : string prop option; [@option]
  private_endpoint_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_private_endpoint_application_security_group_association) ->
  ()

let yojson_of_azurerm_private_endpoint_application_security_group_association
    =
  (function
   | {
       application_security_group_id =
         v_application_security_group_id;
       id = v_id;
       private_endpoint_id = v_private_endpoint_id;
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
           yojson_of_prop yojson_of_string v_private_endpoint_id
         in
         ("private_endpoint_id", arg) :: bnds
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
             v_application_security_group_id
         in
         ("application_security_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_private_endpoint_application_security_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_private_endpoint_application_security_group_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_private_endpoint_application_security_group_association
    ?id ?timeouts ~application_security_group_id ~private_endpoint_id
    () :
    azurerm_private_endpoint_application_security_group_association =
  {
    application_security_group_id;
    id;
    private_endpoint_id;
    timeouts;
  }

type t = {
  tf_name : string;
  application_security_group_id : string prop;
  id : string prop;
  private_endpoint_id : string prop;
}

let make ?id ?timeouts ~application_security_group_id
    ~private_endpoint_id __id =
  let __type =
    "azurerm_private_endpoint_application_security_group_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       application_security_group_id =
         Prop.computed __type __id "application_security_group_id";
       id = Prop.computed __type __id "id";
       private_endpoint_id =
         Prop.computed __type __id "private_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_endpoint_application_security_group_association
        (azurerm_private_endpoint_application_security_group_association
           ?id ?timeouts ~application_security_group_id
           ~private_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~application_security_group_id
    ~private_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~application_security_group_id
      ~private_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
