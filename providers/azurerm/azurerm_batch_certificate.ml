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

type azurerm_batch_certificate = {
  account_name : string prop;  (** account_name *)
  certificate : string prop;  (** certificate *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  thumbprint : string prop;  (** thumbprint *)
  thumbprint_algorithm : string prop;  (** thumbprint_algorithm *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_certificate ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm () : azurerm_batch_certificate =
  {
    account_name;
    certificate;
    format;
    id;
    password;
    resource_group_name;
    thumbprint;
    thumbprint_algorithm;
    timeouts;
  }

type t = {
  account_name : string prop;
  certificate : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  public_data : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
}

let make ?id ?password ?timeouts ~account_name ~certificate ~format
    ~resource_group_name ~thumbprint ~thumbprint_algorithm __id =
  let __type = "azurerm_batch_certificate" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       certificate = Prop.computed __type __id "certificate";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       public_data = Prop.computed __type __id "public_data";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       thumbprint = Prop.computed __type __id "thumbprint";
       thumbprint_algorithm =
         Prop.computed __type __id "thumbprint_algorithm";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_certificate
        (azurerm_batch_certificate ?id ?password ?timeouts
           ~account_name ~certificate ~format ~resource_group_name
           ~thumbprint ~thumbprint_algorithm ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password ?timeouts ~account_name ~certificate ~format
      ~resource_group_name ~thumbprint ~thumbprint_algorithm __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
