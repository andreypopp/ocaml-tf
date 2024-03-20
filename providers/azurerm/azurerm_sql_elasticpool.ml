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

type azurerm_sql_elasticpool = {
  db_dtu_max : float prop option; [@option]  (** db_dtu_max *)
  db_dtu_min : float prop option; [@option]  (** db_dtu_min *)
  dtu : float prop;  (** dtu *)
  edition : string prop;  (** edition *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_size : float prop option; [@option]  (** pool_size *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_elasticpool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_elasticpool ?db_dtu_max ?db_dtu_min ?id ?pool_size
    ?tags ?timeouts ~dtu ~edition ~location ~name
    ~resource_group_name ~server_name () : azurerm_sql_elasticpool =
  {
    db_dtu_max;
    db_dtu_min;
    dtu;
    edition;
    id;
    location;
    name;
    pool_size;
    resource_group_name;
    server_name;
    tags;
    timeouts;
  }

type t = {
  creation_date : string prop;
  db_dtu_max : float prop;
  db_dtu_min : float prop;
  dtu : float prop;
  edition : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_size : float prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
}

let make ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags ?timeouts ~dtu
    ~edition ~location ~name ~resource_group_name ~server_name __id =
  let __type = "azurerm_sql_elasticpool" in
  let __attrs =
    ({
       creation_date = Prop.computed __type __id "creation_date";
       db_dtu_max = Prop.computed __type __id "db_dtu_max";
       db_dtu_min = Prop.computed __type __id "db_dtu_min";
       dtu = Prop.computed __type __id "dtu";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_size = Prop.computed __type __id "pool_size";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_elasticpool
        (azurerm_sql_elasticpool ?db_dtu_max ?db_dtu_min ?id
           ?pool_size ?tags ?timeouts ~dtu ~edition ~location ~name
           ~resource_group_name ~server_name ());
    attrs = __attrs;
  }

let register ?tf_module ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags
    ?timeouts ~dtu ~edition ~location ~name ~resource_group_name
    ~server_name __id =
  let (r : _ Tf_core.resource) =
    make ?db_dtu_max ?db_dtu_min ?id ?pool_size ?tags ?timeouts ~dtu
      ~edition ~location ~name ~resource_group_name ~server_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
