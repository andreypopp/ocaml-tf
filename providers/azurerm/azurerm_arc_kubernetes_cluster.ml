(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_arc_kubernetes_cluster = {
  agent_public_key_certificate : string prop;
      (** agent_public_key_certificate *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_kubernetes_cluster ?id ?tags ?timeouts
    ~agent_public_key_certificate ~location ~name
    ~resource_group_name ~identity () :
    azurerm_arc_kubernetes_cluster =
  {
    agent_public_key_certificate;
    id;
    location;
    name;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  agent_public_key_certificate : string prop;
  agent_version : string prop;
  distribution : string prop;
  id : string prop;
  infrastructure : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  offering : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  total_core_count : float prop;
  total_node_count : float prop;
}

let make ?id ?tags ?timeouts ~agent_public_key_certificate ~location
    ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_arc_kubernetes_cluster" in
  let __attrs =
    ({
       agent_public_key_certificate =
         Prop.computed __type __id "agent_public_key_certificate";
       agent_version = Prop.computed __type __id "agent_version";
       distribution = Prop.computed __type __id "distribution";
       id = Prop.computed __type __id "id";
       infrastructure = Prop.computed __type __id "infrastructure";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       offering = Prop.computed __type __id "offering";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       total_core_count =
         Prop.computed __type __id "total_core_count";
       total_node_count =
         Prop.computed __type __id "total_node_count";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_kubernetes_cluster
        (azurerm_arc_kubernetes_cluster ?id ?tags ?timeouts
           ~agent_public_key_certificate ~location ~name
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~agent_public_key_certificate ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~agent_public_key_certificate ~location
      ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
