(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_hub_ip = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_allocation_method : string prop option; [@option]
      (** private_ip_allocation_method *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_ip *)

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
