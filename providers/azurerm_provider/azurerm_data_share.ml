(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_share__snapshot_schedule = {
  name : string prop;  (** name *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_data_share__snapshot_schedule *)

type azurerm_data_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_share__timeouts *)

type azurerm_data_share = {
  account_id : string prop;  (** account_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
  terms : string prop option; [@option]  (** terms *)
  snapshot_schedule : azurerm_data_share__snapshot_schedule list;
  timeouts : azurerm_data_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share *)

let azurerm_data_share ?description ?id ?terms ?timeouts ~account_id
    ~kind ~name ~snapshot_schedule __resource_id =
  let __resource_type = "azurerm_data_share" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share __resource);
  ()
