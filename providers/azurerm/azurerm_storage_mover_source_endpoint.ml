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

type azurerm_storage_mover_source_endpoint = {
  description : string prop option; [@option]  (** description *)
  export : string prop option; [@option]  (** export *)
  host : string prop;  (** host *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  nfs_version : string prop option; [@option]  (** nfs_version *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_source_endpoint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_source_endpoint ?description ?export ?id
    ?nfs_version ?timeouts ~host ~name ~storage_mover_id () :
    azurerm_storage_mover_source_endpoint =
  {
    description;
    export;
    host;
    id;
    name;
    nfs_version;
    storage_mover_id;
    timeouts;
  }

type t = {
  description : string prop;
  export : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  nfs_version : string prop;
  storage_mover_id : string prop;
}

let make ?description ?export ?id ?nfs_version ?timeouts ~host ~name
    ~storage_mover_id __id =
  let __type = "azurerm_storage_mover_source_endpoint" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       export = Prop.computed __type __id "export";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       nfs_version = Prop.computed __type __id "nfs_version";
       storage_mover_id =
         Prop.computed __type __id "storage_mover_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_mover_source_endpoint
        (azurerm_storage_mover_source_endpoint ?description ?export
           ?id ?nfs_version ?timeouts ~host ~name ~storage_mover_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?export ?id ?nfs_version
    ?timeouts ~host ~name ~storage_mover_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?export ?id ?nfs_version ?timeouts ~host ~name
      ~storage_mover_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
