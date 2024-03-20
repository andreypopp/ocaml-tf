(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_schedule = {
  name : string prop;  (** name *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]
(** snapshot_schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_share = {
  account_id : string prop;  (** account_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
  terms : string prop option; [@option]  (** terms *)
  snapshot_schedule : snapshot_schedule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share *)

let snapshot_schedule ~name ~recurrence ~start_time () :
    snapshot_schedule =
  { name; recurrence; start_time }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_share ?description ?id ?terms ?timeouts ~account_id
    ~kind ~name ~snapshot_schedule () : azurerm_data_share =
  {
    account_id;
    description;
    id;
    kind;
    name;
    terms;
    snapshot_schedule;
    timeouts;
  }

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  terms : string prop;
}

let make ?description ?id ?terms ?timeouts ~account_id ~kind ~name
    ~snapshot_schedule __id =
  let __type = "azurerm_data_share" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       terms = Prop.computed __type __id "terms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share
        (azurerm_data_share ?description ?id ?terms ?timeouts
           ~account_id ~kind ~name ~snapshot_schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?terms ?timeouts ~account_id
    ~kind ~name ~snapshot_schedule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?terms ?timeouts ~account_id ~kind ~name
      ~snapshot_schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
