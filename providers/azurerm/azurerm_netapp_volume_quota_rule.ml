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

type azurerm_netapp_volume_quota_rule = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  quota_size_in_kib : float prop;  (** quota_size_in_kib *)
  quota_target : string prop option; [@option]  (** quota_target *)
  quota_type : string prop;  (** quota_type *)
  volume_id : string prop;  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_quota_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_volume_quota_rule ?id ?quota_target ?timeouts
    ~location ~name ~quota_size_in_kib ~quota_type ~volume_id () :
    azurerm_netapp_volume_quota_rule =
  {
    id;
    location;
    name;
    quota_size_in_kib;
    quota_target;
    quota_type;
    volume_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop;
  quota_type : string prop;
  volume_id : string prop;
}

let make ?id ?quota_target ?timeouts ~location ~name
    ~quota_size_in_kib ~quota_type ~volume_id __id =
  let __type = "azurerm_netapp_volume_quota_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       quota_size_in_kib =
         Prop.computed __type __id "quota_size_in_kib";
       quota_target = Prop.computed __type __id "quota_target";
       quota_type = Prop.computed __type __id "quota_type";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_volume_quota_rule
        (azurerm_netapp_volume_quota_rule ?id ?quota_target ?timeouts
           ~location ~name ~quota_size_in_kib ~quota_type ~volume_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?quota_target ?timeouts ~location ~name
    ~quota_size_in_kib ~quota_type ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?quota_target ?timeouts ~location ~name
      ~quota_size_in_kib ~quota_type ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
