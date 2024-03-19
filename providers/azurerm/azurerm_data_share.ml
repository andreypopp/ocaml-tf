(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?terms ?timeouts ~account_id
    ~kind ~name ~snapshot_schedule __resource_id =
  let __resource_type = "azurerm_data_share" in
  let __resource =
    azurerm_data_share ?description ?id ?terms ?timeouts ~account_id
      ~kind ~name ~snapshot_schedule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       name = Prop.computed __resource_type __resource_id "name";
       terms = Prop.computed __resource_type __resource_id "terms";
     }
      : t)
  in
  __resource_attributes
