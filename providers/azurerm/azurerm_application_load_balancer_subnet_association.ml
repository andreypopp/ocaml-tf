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

type azurerm_application_load_balancer_subnet_association = {
  application_load_balancer_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  subnet_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_application_load_balancer_subnet_association) -> ()

let yojson_of_azurerm_application_load_balancer_subnet_association =
  (function
   | {
       application_load_balancer_id = v_application_load_balancer_id;
       id = v_id;
       name = v_name;
       subnet_id = v_subnet_id;
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
             v_application_load_balancer_id
         in
         ("application_load_balancer_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_load_balancer_subnet_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_application_load_balancer_subnet_association

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_load_balancer_subnet_association ?id ?tags
    ?timeouts ~application_load_balancer_id ~name ~subnet_id () :
    azurerm_application_load_balancer_subnet_association =
  {
    application_load_balancer_id;
    id;
    name;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  application_load_balancer_id : string prop;
  id : string prop;
  name : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ?timeouts ~application_load_balancer_id ~name
    ~subnet_id __id =
  let __type =
    "azurerm_application_load_balancer_subnet_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       application_load_balancer_id =
         Prop.computed __type __id "application_load_balancer_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_load_balancer_subnet_association
        (azurerm_application_load_balancer_subnet_association ?id
           ?tags ?timeouts ~application_load_balancer_id ~name
           ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~application_load_balancer_id ~name ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~application_load_balancer_id ~name
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
