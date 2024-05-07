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

type azurerm_virtual_hub_ip = {
  id : string prop option; [@option]
  name : string prop;
  private_ip_address : string prop option; [@option]
  private_ip_allocation_method : string prop option; [@option]
  public_ip_address_id : string prop;
  subnet_id : string prop;
  virtual_hub_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_ip) -> ()

let yojson_of_azurerm_virtual_hub_ip =
  (function
   | {
       id = v_id;
       name = v_name;
       private_ip_address = v_private_ip_address;
       private_ip_allocation_method = v_private_ip_allocation_method;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
       virtual_hub_id = v_virtual_hub_id;
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
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         match v_private_ip_allocation_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_allocation_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
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
       `Assoc bnds
    : azurerm_virtual_hub_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_ip

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_ip ?id ?private_ip_address
    ?private_ip_allocation_method ?timeouts ~name
    ~public_ip_address_id ~subnet_id ~virtual_hub_id () :
    azurerm_virtual_hub_ip =
  {
    id;
    name;
    private_ip_address;
    private_ip_allocation_method;
    public_ip_address_id;
    subnet_id;
    virtual_hub_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_allocation_method : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?private_ip_address ?private_ip_allocation_method
    ?timeouts ~name ~public_ip_address_id ~subnet_id ~virtual_hub_id
    __id =
  let __type = "azurerm_virtual_hub_ip" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_allocation_method =
         Prop.computed __type __id "private_ip_allocation_method";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
       subnet_id = Prop.computed __type __id "subnet_id";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_ip
        (azurerm_virtual_hub_ip ?id ?private_ip_address
           ?private_ip_allocation_method ?timeouts ~name
           ~public_ip_address_id ~subnet_id ~virtual_hub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?private_ip_address
    ?private_ip_allocation_method ?timeouts ~name
    ~public_ip_address_id ~subnet_id ~virtual_hub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?private_ip_address ?private_ip_allocation_method
      ?timeouts ~name ~public_ip_address_id ~subnet_id
      ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
