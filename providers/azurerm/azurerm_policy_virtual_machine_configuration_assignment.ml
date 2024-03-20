(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration__parameter *)

type configuration = {
  assignment_type : string prop option; [@option]
      (** assignment_type *)
  content_hash : string prop option; [@option]  (** content_hash *)
  content_uri : string prop option; [@option]  (** content_uri *)
  version : string prop option; [@option]  (** version *)
  parameter : configuration__parameter list;
}
[@@deriving yojson_of]
(** configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_policy_virtual_machine_configuration_assignment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  configuration : configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment *)

let configuration__parameter ~name ~value () :
    configuration__parameter =
  { name; value }

let configuration ?assignment_type ?content_hash ?content_uri
    ?version ~parameter () : configuration =
  { assignment_type; content_hash; content_uri; version; parameter }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_virtual_machine_configuration_assignment ?id
    ?timeouts ~location ~name ~virtual_machine_id ~configuration () :
    azurerm_policy_virtual_machine_configuration_assignment =
  { id; location; name; virtual_machine_id; configuration; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
}

let make ?id ?timeouts ~location ~name ~virtual_machine_id
    ~configuration __id =
  let __type =
    "azurerm_policy_virtual_machine_configuration_assignment"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_virtual_machine_configuration_assignment
        (azurerm_policy_virtual_machine_configuration_assignment ?id
           ?timeouts ~location ~name ~virtual_machine_id
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~virtual_machine_id ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~virtual_machine_id
      ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
