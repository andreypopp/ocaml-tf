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

type azurerm_log_analytics_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  size_gb : float prop option; [@option]  (** size_gb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_cluster ?id ?size_gb ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity () :
    azurerm_log_analytics_cluster =
  {
    id;
    location;
    name;
    resource_group_name;
    size_gb;
    tags;
    identity;
    timeouts;
  }

type t = {
  cluster_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size_gb : float prop;
  tags : (string * string) list prop;
}

let make ?id ?size_gb ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __id =
  let __type = "azurerm_log_analytics_cluster" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       size_gb = Prop.computed __type __id "size_gb";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_cluster
        (azurerm_log_analytics_cluster ?id ?size_gb ?tags ?timeouts
           ~location ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?size_gb ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?size_gb ?tags ?timeouts ~location ~name
      ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
