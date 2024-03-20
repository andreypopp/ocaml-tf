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

type azurerm_sentinel_watchlist_item = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  properties : (string * string prop) list;  (** properties *)
  watchlist_id : string prop;  (** watchlist_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist_item *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_watchlist_item ?id ?name ?timeouts ~properties
    ~watchlist_id () : azurerm_sentinel_watchlist_item =
  { id; name; properties; watchlist_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
  watchlist_id : string prop;
}

let make ?id ?name ?timeouts ~properties ~watchlist_id __id =
  let __type = "azurerm_sentinel_watchlist_item" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       properties = Prop.computed __type __id "properties";
       watchlist_id = Prop.computed __type __id "watchlist_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_watchlist_item
        (azurerm_sentinel_watchlist_item ?id ?name ?timeouts
           ~properties ~watchlist_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~properties ~watchlist_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~properties ~watchlist_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
