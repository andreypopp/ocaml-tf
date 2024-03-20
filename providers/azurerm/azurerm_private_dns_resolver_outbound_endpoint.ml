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

type azurerm_private_dns_resolver_outbound_endpoint = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_dns_resolver_id : string prop;
      (** private_dns_resolver_id *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_outbound_endpoint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_resolver_outbound_endpoint ?id ?tags
    ?timeouts ~location ~name ~private_dns_resolver_id ~subnet_id ()
    : azurerm_private_dns_resolver_outbound_endpoint =
  {
    id;
    location;
    name;
    private_dns_resolver_id;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~private_dns_resolver_id
    ~subnet_id __id =
  let __type = "azurerm_private_dns_resolver_outbound_endpoint" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_dns_resolver_id =
         Prop.computed __type __id "private_dns_resolver_id";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_outbound_endpoint
        (azurerm_private_dns_resolver_outbound_endpoint ?id ?tags
           ?timeouts ~location ~name ~private_dns_resolver_id
           ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~private_dns_resolver_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~private_dns_resolver_id
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
