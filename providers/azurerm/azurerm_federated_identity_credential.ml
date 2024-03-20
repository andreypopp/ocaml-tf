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

type azurerm_federated_identity_credential = {
  audience : string prop list;  (** audience *)
  id : string prop option; [@option]  (** id *)
  issuer : string prop;  (** issuer *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  subject : string prop;  (** subject *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential *)

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
