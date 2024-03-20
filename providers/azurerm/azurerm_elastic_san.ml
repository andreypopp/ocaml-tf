(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = {
  name : string prop;  (** name *)
  tier : string prop option; [@option]  (** tier *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_elastic_san = {
  base_size_in_tib : float prop;  (** base_size_in_tib *)
  extended_size_in_tib : float prop option; [@option]
      (** extended_size_in_tib *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_san *)

let sku ?tier ~name () : sku = { name; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku () : azurerm_elastic_san =
  {
    base_size_in_tib;
    extended_size_in_tib;
    id;
    location;
    name;
    resource_group_name;
    tags;
    zones;
    sku;
    timeouts;
  }

type t = {
  base_size_in_tib : float prop;
  extended_size_in_tib : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  total_iops : float prop;
  total_mbps : float prop;
  total_size_in_tib : float prop;
  total_volume_size_in_gib : float prop;
  volume_group_count : float prop;
  zones : string list prop;
}

let make ?extended_size_in_tib ?id ?tags ?zones ?timeouts
    ~base_size_in_tib ~location ~name ~resource_group_name ~sku __id
    =
  let __type = "azurerm_elastic_san" in
  let __attrs =
    ({
       base_size_in_tib =
         Prop.computed __type __id "base_size_in_tib";
       extended_size_in_tib =
         Prop.computed __type __id "extended_size_in_tib";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       total_iops = Prop.computed __type __id "total_iops";
       total_mbps = Prop.computed __type __id "total_mbps";
       total_size_in_tib =
         Prop.computed __type __id "total_size_in_tib";
       total_volume_size_in_gib =
         Prop.computed __type __id "total_volume_size_in_gib";
       volume_group_count =
         Prop.computed __type __id "volume_group_count";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san
        (azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
           ?timeouts ~base_size_in_tib ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?extended_size_in_tib ?id ?tags ?zones ?timeouts
      ~base_size_in_tib ~location ~name ~resource_group_name ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
